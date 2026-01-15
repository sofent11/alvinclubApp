import React, { useState, useCallback, useEffect } from 'react';
import { motion, useMotionValue, useTransform, AnimatePresence, PanInfo } from 'framer-motion';
import { MagazineIssue } from '../types';
import { MagazineCover } from './MagazineCover';
import { ChevronLeft, ChevronRight } from 'lucide-react';

interface CardStackProps {
  issues: MagazineIssue[];
}

export const CardStack: React.FC<CardStackProps> = ({ issues }) => {
  const [currentIndex, setCurrentIndex] = useState(0);
  const [direction, setDirection] = useState(0); // -1 for left, 1 for right

  const x = useMotionValue(0);
  const rotate = useTransform(x, [-200, 200], [-15, 15]);
  
  // Reset x motion value when index changes to prevent next card from jumping
  useEffect(() => {
    x.set(0);
  }, [currentIndex, x]);

  // Calculate the shortest circular distance between two indices
  const getEffectiveOffset = (index: number, current: number, total: number) => {
    let offset = index - current;
    if (offset > total / 2) {
      offset -= total;
    } else if (offset < -total / 2) {
      offset += total;
    }
    return offset;
  };

  const handleDragEnd = useCallback((event: any, info: PanInfo) => {
    const threshold = 100; // Drag distance threshold
    const velocityThreshold = 500;
    
    // Check if drag was significant enough
    if (info.offset.x > threshold || info.velocity.x > velocityThreshold) {
      // Swiped Right -> Go Previous
      setDirection(-1);
      setCurrentIndex((prev) => (prev - 1 + issues.length) % issues.length);
    } else if (info.offset.x < -threshold || info.velocity.x < -velocityThreshold) {
      // Swiped Left -> Go Next
      setDirection(1);
      setCurrentIndex((prev) => (prev + 1) % issues.length);
    }
    // If threshold not met, dragSnapToOrigin (prop) handles the revert
  }, [issues.length]);

  const handleNext = () => {
    setDirection(1);
    setCurrentIndex((prev) => (prev + 1) % issues.length);
  };

  const handlePrev = () => {
    setDirection(-1);
    setCurrentIndex((prev) => (prev - 1 + issues.length) % issues.length);
  };

  // Helper to determine styles for background cards
  const getCardStyle = (index: number) => {
    const offset = getEffectiveOffset(index, currentIndex, issues.length);
    const absOffset = Math.abs(offset);
    
    const isVisible = absOffset <= 2;

    if (!isVisible) return { display: 'none' };

    // Z-index: Current is highest
    const zIndex = 50 - absOffset;
    
    // Scale: Subtle reduction for depth
    const scale = 1 - (absOffset * 0.05);

    // Fan Logic:
    // Tightened the offset significantly to make bottoms overlap more (like holding cards in hand)
    const xOffset = offset * 10; 
    // Increased rotation slightly to ensure tops are still distinguishable
    const rotation = offset * 7;

    return {
      zIndex,
      scale,
      x: xOffset,
      rotate: rotation,
      opacity: 1, 
      cursor: 'pointer',
      filter: 'none'
    };
  };

  const cardVariants = {
    // Enter animation for cards coming into focus
    enter: (direction: number) => ({
      x: direction > 0 ? 60 : -60,
      opacity: 0,
      scale: 0.9,
    }),
    center: {
      zIndex: 50,
      x: 0,
      y: 0,
      rotateY: 0,
      rotate: 0,
      opacity: 1,
      scale: 1,
      transition: {
        duration: 0.4,
        type: "spring",
        stiffness: 300,
        damping: 25
      }
    },
    exit: (direction: number) => ({
      zIndex: 0,
      opacity: 1,
      scale: 0.95,
      transition: {
        duration: 0.3
      }
    })
  };

  return (
    <div className="relative w-full max-w-[1200px] h-[60vh] md:h-[700px] flex items-center justify-center perspective-1000">
      
      {/* Cards Container - Reduced size for Mobile to fit fully */}
      <div className="relative w-[65vw] max-w-[280px] aspect-[1/1.4] md:max-w-[450px] md:aspect-auto md:w-[450px] md:h-[620px]">
        <AnimatePresence initial={false} custom={direction}>
            {issues.map((issue, index) => {
                // Determine if this is the "active" card
                const isCurrent = index === currentIndex;
                
                // Get the relative offset for positioning calculation
                const offset = getEffectiveOffset(index, currentIndex, issues.length);
                const isVisible = Math.abs(offset) <= 2;
                
                if (!isVisible) return null;

                return (
                    <motion.div
                        key={issue.id}
                        className="absolute inset-0 rounded-sm shadow-card origin-bottom bg-paper"
                        custom={direction}
                        initial={false}
                        animate={isCurrent ? "center" : getCardStyle(index)}
                        variants={isCurrent ? cardVariants : undefined}
                        
                        // Drag Logic
                        drag={isCurrent ? "x" : false}
                        // Remove rigid constraints to allow movement
                        dragConstraints={{ left: -1000, right: 1000 }} 
                        // Snap back to origin if released without switching
                        dragSnapToOrigin={true}
                        // Add some elasticity for feel
                        dragElastic={0.1}
                        onDragEnd={handleDragEnd}
                        
                        style={{ 
                            // Bind x only for current card to drive rotation
                            x: isCurrent ? x : undefined, 
                            rotate: isCurrent ? rotate : undefined,
                            touchAction: 'none'
                        }}
                        whileHover={!isCurrent ? { 
                            y: -30, 
                            scale: 1.05,
                            transition: { duration: 0.2 } 
                        } : { scale: 1.02 }}
                        onClick={() => {
                            // Smart click navigation
                            if (!isCurrent) {
                                if (offset === 1 || offset === -4) handleNext(); // Right neighbor
                                else if (offset === -1 || offset === 4) handlePrev(); // Left neighbor
                            }
                        }}
                    >
                        <MagazineCover issue={issue} />
                    </motion.div>
                );
            })}
        </AnimatePresence>
      </div>

      {/* Navigation Controls */}
      <div className="absolute hidden md:flex top-1/2 -translate-y-1/2 w-full justify-between px-12 pointer-events-none">
         <button 
            onClick={handlePrev}
            className="pointer-events-auto p-3 rounded-full bg-white/10 backdrop-blur-md border border-white/20 text-white hover:bg-white/20 transition-all hover:scale-110 active:scale-95"
         >
            <ChevronLeft size={32} />
         </button>

         <button 
            onClick={handleNext}
            className="pointer-events-auto p-3 rounded-full bg-white/10 backdrop-blur-md border border-white/20 text-white hover:bg-white/20 transition-all hover:scale-110 active:scale-95"
         >
            <ChevronRight size={32} />
         </button>
      </div>
      
      {/* Pagination Indicators */}
      <div className="absolute -bottom-10 md:-bottom-12 flex gap-2 md:gap-3">
        {issues.map((_, idx) => (
            <button
                key={idx}
                onClick={() => {
                    // Determine shortest direction to animate
                    const diff = getEffectiveOffset(idx, currentIndex, issues.length);
                    setDirection(diff > 0 ? 1 : -1);
                    setCurrentIndex(idx);
                }}
                className={`h-1.5 md:h-2 rounded-full transition-all duration-300 ${
                    idx === currentIndex 
                    ? 'w-6 md:w-8 bg-white shadow-[0_0_10px_rgba(255,255,255,0.5)]' 
                    : 'w-1.5 md:w-2 bg-white/30 hover:bg-white/50'
                }`}
            />
        ))}
      </div>

    </div>
  );
};
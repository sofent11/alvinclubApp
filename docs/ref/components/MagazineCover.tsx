import React from 'react';
import { MagazineIssue } from '../types';
import { PaperTexture } from './PaperTexture';
import { clsx } from 'clsx';
import { Sparkles, Star, Scissors } from 'lucide-react';

interface MagazineCoverProps {
  issue: MagazineIssue;
}

export const MagazineCover: React.FC<MagazineCoverProps> = ({ issue }) => {
  return (
    <div className="relative w-full h-full bg-paper overflow-hidden flex flex-col shadow-inner select-none">
      {/* Texture Overlay */}
      <PaperTexture opacity={0.15} />

      {/* Header Section */}
      <div className="relative z-10 pt-4 md:pt-6 px-3 md:px-4 text-center">
        <div className="flex justify-between items-center text-[8px] md:text-[10px] font-bold tracking-widest uppercase border-b-2 border-black pb-1 mb-2">
            <span>{issue.date}</span>
            <span>{issue.price}</span>
            <span>{issue.issueNumber}</span>
        </div>
        <h1 
            className="font-serif text-4xl sm:text-5xl md:text-6xl font-black leading-none tracking-tighter"
            style={{ color: issue.accentColor }}
        >
          {issue.title}
        </h1>
      </div>

      {/* Main Visual Area */}
      <div className="relative flex-1 mx-2 my-2 border-2 border-black group overflow-hidden">
        <img 
            src={issue.coverImage} 
            alt="Cover" 
            className="absolute inset-0 w-full h-full object-cover transition-transform duration-700 group-hover:scale-110"
            draggable={false}
        />
        
        {/* Collage Elements Overlay */}
        <div className="absolute inset-0 p-3 md:p-4 flex flex-col justify-between">
            {/* Top Right Sticker */}
            <div className="self-end rotate-12 transform">
                 <div 
                    className="w-16 h-16 md:w-20 md:h-20 rounded-full flex items-center justify-center text-center p-2 border-2 border-black border-dashed shadow-lg animate-pulse"
                    style={{ backgroundColor: 'white' }}
                 >
                    <span className="font-marker text-[10px] md:text-xs leading-tight text-black">
                        INSIDE LOOK!
                    </span>
                 </div>
            </div>

            {/* Central Headline (Simulating cutout) */}
            <div className="self-center mt-4 md:mt-10 transform -rotate-2">
                <div 
                    className="bg-white px-3 py-1 md:px-4 md:py-2 shadow-[4px_4px_0px_0px_rgba(0,0,0,1)] border-2 border-black inline-block"
                >
                     <h2 className="font-marker text-xl sm:text-2xl md:text-3xl text-black text-center leading-none">
                        {issue.headlines[0]}
                     </h2>
                </div>
            </div>

             {/* Bottom Elements */}
             <div className="mt-auto space-y-2 md:space-y-4">
                 {/* Secondary Headlines */}
                 <div className="flex flex-col items-start gap-1 md:gap-2">
                    {issue.headlines.slice(1).map((hl, i) => (
                        <div 
                            key={i} 
                            className={clsx(
                                "px-2 py-1 border border-black shadow-sm transform",
                                i % 2 === 0 ? "rotate-1 bg-yellow-200" : "-rotate-1 bg-pink-200"
                            )}
                        >
                            <span className="font-sans font-bold text-[10px] md:text-xs uppercase tracking-wide">{hl}</span>
                        </div>
                    ))}
                 </div>
             </div>
        </div>
      </div>

      {/* Footer / Barcode Area */}
      <div className="relative z-10 pb-3 md:pb-4 px-4 md:px-6">
         <div className="flex items-center justify-between">
            <div className="flex gap-1">
                <Star size={12} fill="black" className="md:w-4 md:h-4" />
                <Star size={12} fill="black" className="md:w-4 md:h-4" />
                <Star size={12} fill="black" className="md:w-4 md:h-4" />
                <Star size={12} className="md:w-4 md:h-4" />
                <Star size={12} className="md:w-4 md:h-4" />
            </div>
            
            <div className="flex flex-col items-end">
                <div className="h-6 w-20 md:h-8 md:w-24 bg-black/10 flex items-center justify-center relative overflow-hidden">
                     {/* Fake Barcode */}
                     <div className="absolute inset-0 flex justify-between px-1">
                        {[...Array(20)].map((_, i) => (
                            <div key={i} className="bg-black h-full w-[1px] md:w-[2px]" />
                        ))}
                     </div>
                </div>
                <span className="text-[8px] font-mono mt-1">ISSN 1029-3829</span>
            </div>
         </div>
      </div>

      {/* Decorative floating icons */}
      <div className="absolute top-1/4 left-2 z-20 text-white drop-shadow-md transform -rotate-12">
        <Sparkles className="w-4 h-4 md:w-6 md:h-6" fill="currentColor" />
      </div>
      <div className="absolute bottom-1/4 right-2 z-20 text-white drop-shadow-md transform rotate-12">
        <Scissors className="w-4 h-4 md:w-5 md:h-5" />
      </div>
    </div>
  );
};
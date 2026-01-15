import React from 'react';

export const PaperTexture: React.FC<{ opacity?: number }> = ({ opacity = 0.4 }) => (
  <svg className="absolute inset-0 w-full h-full pointer-events-none mix-blend-multiply z-10" style={{ opacity }}>
    <filter id="noiseFilter">
      <feTurbulence 
        type="fractalNoise" 
        baseFrequency="0.6" 
        stitchTiles="stitch" 
      />
    </filter>
    <rect width="100%" height="100%" filter="url(#noiseFilter)" opacity="0.4" />
  </svg>
);
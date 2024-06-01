import React from "react";

import "../styles/Image.css";

interface ImageProps {
   source: string;
   alt: string;
}

const Image = (props: ImageProps) => {
   const { source, alt } = props;

   return (
      <div className="image-component">
         <div className="image-container">
            <img className="loadscreen" src={source} alt={alt} />
         </div>
      </div>
   );
};

export default Image;

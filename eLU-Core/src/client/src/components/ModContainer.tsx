import React from "react";

import "../styles/ModContainer.css";

const ModContainer = ({ children }: { children: React.ReactNode }) => {
   return (
      <div className="mod-component">
         <div className="mod-container">{children}</div>
      </div>
   );
};

export default ModContainer;

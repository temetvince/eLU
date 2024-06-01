import React from "react";

import "../styles/ModNavigator.css";

const ModNavigator = ({ children }: { children: React.ReactNode }) => {
   return (
      <div className="mod-component">
         <div className="mod-navigator">{children}</div>
      </div>
   );
};

export default ModNavigator;

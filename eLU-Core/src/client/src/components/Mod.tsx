import React from "react";

import "../styles/Mod.css";

import swm2 from "../../public/images/LoadScrHD_SWM2.png";
import Image from "./Image";
import ModContainer from "./ModContainer";
import ModNavigator from "./ModNavigator";

const Mod = () => {
   return (
      <div className="container">
         <div className="container-column">
            <ModNavigator children={<h1>Star Wars Mayhem 2</h1>} />
         </div>

         <div className="container-row">
            <ModContainer
               children={
                  <div>
                     <h1>TODO:</h1>
                     <h3>No Steam Exe Location</h3>
                     <h3>Optional Mods to Install</h3>
                     <li>Alaankwa</li>
                     <li>Font</li>
                     <li>Etc</li>
                     <h2>Install Button</h2>
                  </div>
               }
            />

            <Image source={swm2} alt="SWM2 load screen" />
         </div>
      </div>
   );
};

export default Mod;

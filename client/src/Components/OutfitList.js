import React from "react" 
import OutfitCard from "./OutfitCard"

function OutfitList(){
    
    
    const outfitsToDisplay = outfits.map((fit)=>{
        return <OutfitCard outfit = {fit} key = {fit.id}/>
    })
    return(
        
        <div>
            <h2 className ="outfitTitle"> Outfits </h2>
            <div className = "outfits">
            {outfitsToDisplay}
            </div>

        </div>
    )
}



export default OutfitList

function ClothingCard({clothingItem, addToOutfit, onDeleteItem}){
    const [showFront, setShowFront] = useState(true)

    function imageToggle(){
        setShowFront(showFront => !showFront)
    }


    return(
        <div className="clothing">
            <img onClick={() => imageToggle()} src={showFront ? clothingItem.frontImage : clothingItem.backImage}/>
            <h2>{clothingItem.name}</h2>
            <p>{clothingItem.description}</p>
            <button onClick = {(e) => handleClick(e)}>Add to Outfit</button>
            <button onClick={handleDelete}>Delete Item</button>
        </div>
    )
}

export default ClothingCard;
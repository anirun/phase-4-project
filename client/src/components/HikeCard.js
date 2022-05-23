import {useState, useEffect} from "react";
import {Link, useParams, useLocation, useHistory} from "react-router-dom";
// import HikeForm from "./HikeForm";
// import HikesList from "./HikesList";
// import EditHikeForm from "./EditHikeForm";

const HikeCard = ({hike}) => {
    const {id} = useParams();
    const location = useLocation();
    const [hikeObj, setHikeObj] = useState(null);
    const [editMode, setEditMode] = useState(false);
    const history = useHistory();

    useEffect(() => {
        if (!hike) {
            fetch(`/api/v1/hikes/${id}`)
            .then(r => r.json())
            .then(hike => {
                setHikeObj(hike)
            })
        }
    }, [hike, id])

    return (
        <div>
            <h3>Hike Card</h3>
        </div>
    )

}

export default HikeCard;

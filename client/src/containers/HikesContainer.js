import {useState, useEffect} from 'react';
import HikesList from "../components/HikesList";

const HikesContainer = () => {

    const [hikes, setHikes] = useState([]);

    useEffect(() => {
        fetch("/api/v1/hikes")
        .then(r => r.json())
        .then(data => setHikes(data.data.map(p => p.attributes)))
        .catch(error => alert(error))
    }, []);

    return (
        <div>
            <h2>Hikes</h2>
            <HikesList hikes={hikes} />
        </div>
    )
}

export default HikesContainer;
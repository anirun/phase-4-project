import {useState, useEffect} from 'react';
import PlansList from "../components/PlansList";

const PlansContainer = () => {

    const [plans, setPlans] = useState([]);

    useEffect(() => {
        fetch("/api/v1/plans")
        .then(r => r.json())
        .then(data => setPlans(data))
        // .catch(error => alert(error))
    }, []);

    return (
        <div>
            <h2>Plans</h2>
            <PlansList plans={plans} />
        </div>
    )
}

export default PlansContainer;
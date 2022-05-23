import {useState, useEffect} from "react";
import {Link, useParams, useLocation, useHistory} from "react-router-dom";
// import PlanForm from "./PlanForm";
// import PlansList from "./PlansList";
// import EditPlanForm from "./EditPlanForm";

const PlanCard = ({plan}) => {
    const {id} = useParams();
    const location = useLocation();
    const [planObj, setPlanObj] = useState(null);
    const [editMode, setEditMode] = useState(false);
    const history = useHistory();

    useEffect(() => {
        if (!plan) {
            fetch(`/api/v1/plans/${id}`)
            .then(r => r.json())
            .then(plan => {
                setPlanObj(plan)
            })
        }
    }, [plan, id])

    return (
        <div>
            <h3>Plan Card</h3>
        </div>
    )

}

export default PlanCard;

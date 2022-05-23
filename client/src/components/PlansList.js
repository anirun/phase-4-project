import PlanCard from "./PlanCard";

const PlansList = ({plans}) => {
    const renderPlans = plans.map(plan => <PlanCard key={plan.id} plan={plan} />)
    return (
        <div>{renderPlans}</div>
    )
}

export default PlansList;
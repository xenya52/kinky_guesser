<script>
    import { label } from "@unovis/ts/components/axis/style";
  import PieChart from "../components/PieChart.svelte";

    export let statements
    let charData = []
    const results = new Map()
    Map.groupBy(statements, ({ label }) => label)
        .forEach((value,key) => {
            let sum = 0, total = 0
            value.forEach(item => (sum += item.value, total++))
            results.set(key, sum/total)
            charData.push(
                {"name":key, "value":sum/total}
            )
    })
</script>

<div>
<h1>Results</h1>
<PieChart results={charData}/>

</div>
<style>
</style>
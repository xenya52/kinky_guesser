<script>
    export let statements
    const results = new Map()
    Map.groupBy(statements, ({ label }) => label)
        .forEach((value,key) => {
            let sum = 0, total = 0
            value.forEach(item => (sum += item.value, total++))
            results.set(key, sum/total)
    })
</script>

{#each Array.from(results, ([name, value]) => ({ name, value })) as item}
    <p>{item.name} {item.value}</p>
{/each}

<script>
  import { VisSingleContainer, VisDonut, VisTooltip, VisBulletLegend } from '@unovis/svelte'

  export let data = [{value: 5, name: "yolo"}]

  const value = (item) => {
    return item.value
  }

  const triggers = (item) => {
    return "<div>" + item.label + "</div>"
  }

</script>

<VisSingleContainer bind:data={data}>
  <VisTooltip {triggers}/>
  <VisDonut value={value}/>
  <VisBulletLegend items={data}/>
</VisSingleContainer>
#let cerise = rgb("#e83d84")
#let datagray = rgb("#888888")

#let ceriseLink(l: none, t: "") = {link(l, text(fill: cerise, [*#t*]))}

#let num(n) = {
  let neg = n < 0
  let int = calc.abs(calc.trunc(n))
  let res = str(int).clusters().rev().chunks(3).map(c => c.join("")).join(" ").rev()
  return if neg {$-$} + $res$
}

#let attCount = counter("att")
#let att(it) = {
  grid(
    columns: (auto, 1fr),
    gutter: 1em,
    [#h(1em)*att*#sub(context{attCount.display()})],
    [#it]
  )
  attCount.step()
}

#let styrdok_box(text) = {
  block(
    fill: luma(200), // gray'
    inset: 5pt,
    radius: 3pt,
    text
  )
}

#let att_styrdok_läggtill(dok, body) = {
  att[
    i #dok lägga till
    #styrdok_box(body)
  ]
}

#let att_styrdok_läggtillp(dok, paragraf, body) = {
  att_styrdok_läggtill([#dok;s _#paragraf;_], body)
}

#let att_styrdok_ändra(dok, paragraf, från, till) = {
  att[
    #set par(justify: true)
    ändra _#paragraf;_ i #dok från
    #styrdok_box(från)
    till\
    #styrdok_box(till)
  ]
}

#let att_konsnum() = { att[konsekvensnumrera styrdokumenten] }

#let styrdok = (
  reg: "reglementet",
  sta: "stadgarna",
  jml: "Jämlikhetspolicyn",
  kli: "Klimatpolicyn",
  rek: "Rekryteringspolicyn",
  upp: "Uppförandepolicyn",
  sam: "Samarbetspolicyn",
  pm: (
    alk: "PM för Alkohol",
    dfu: "PM för dFunk",
    eko: "PM för Ekonomi",
    inh: "PM för informationshantering",
    ins: "PM för informationsspridning",
    nof: "PM för nämnd- och funktionärsverksamhet",
    tra: "PM för Traditioner, vanor, och livsregler",
    sti: "PM för utmärkelser och stipendier",
    pro: "PM för återkommande projekt",
  )
)

#let org = (
  när: "Näringslivsorganet",
  soc: "Studiesociala organet",
  för: "Förvaltningsorganet",
  påv: "Påverkansorganet",
  eve: "Eventorganet",
  inf: "Informationsorganet",
  mot: "Mottagningsorganet",
  valb: "Valberedningen",
  drek: "D-rektoratet",
)

#let kalår = "kalenderår"
#let läsår = "läsår"

#let sm = "SM"
#let vm = "VM"
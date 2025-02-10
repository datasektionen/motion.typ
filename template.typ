#import "utils.typ": cerise, datagray

#let project(
  organ: "",
  author: "",
  role: "",
  coauthors: (),
  type: "Proposition",
  title: "",
  full_title: "",
  date: none,
  sm: "",
  meme: "",
  draft: false,
  body,
) = {
  if full_title.len() == 0 {
    full_title = [#type angående #title]
  }
  
  set text(lang: "sv")

  set text(
    font: "Lato",
    size: 11pt
    // Heading 22
    // Subheading 18
  )

  // How text was meant to be
  set par(justify: true)

  show heading: it => {
    set text(
      size:
        if it.level == 1
            {22pt}
        else if it.level == 2
          {18pt}
        else if it.level == 3
          {14pt}
        else {12pt},
        
      fill: if it.level == 4 {black} else {cerise},
      style: if it.level == 4 {"italic"} else {"normal"},
    )
    [#it]
  }

  set page(
    margin: (top: 3.75cm, bottom: 3cm),
    header-ascent: 6mm,
    header: [
      #set text(size: 10pt)
      #grid(
        columns: (1fr, 5cm, 1fr),
        // date -> gray
        align(left + horizon, [#type till #sm \ #set text(datagray); #date]),
        align(center + horizon, image(
          "pictures/dsekt.svg",
          width: 1.5cm,
        )),
        align(right + horizon, [#set text(datagray); #if organ.len() == 0 {author} else {organ} \ #context counter(page).display("1/1", both: true)])
      )
    ],
  
    footer: [
      #align(center, [
        #set text(size: 10pt, datagray)
        Konglig Datasektionen, THS 100 44, datasektionen.se
        ]
      )
    ],
  )

  // Draft
  set page(foreground: rotate(60deg, text(230pt, fill: gray.transparentize(80%), [#set par(justify: false); UTKAST]))) if draft

  align(center, heading[#full_title])
  
  body

  v(1em)
  if organ.len() > 0 [#organ via\ ]
  [#author, #role]
  if coauthors.len() > 0 [
    \ #coauthors.join("\n")
  ]
  meme
}

#import "template.typ": *
#import "utils.typ": *

// Ändra dessa parametrar:

// Sätt organ till "" om motion eller inget organ
#let organ = "D-rektoratet"
#let author = "<författare>"
#let role = "<ämbete>"
// Medförfattare. Separera namn och ämbete med komma likt exemplet nedan
#let coauthors = ()
//#let coauthors = ("Ture Teknolog, gammal och vis", "Tjomme Tjommolog, ung och dum")
#let type = "Proposition"

#let title = "Införande av statlig övervakning"
#let sm = "Bar-SM"
#let memebild = image("pictures/anka.png", width: 10cm)

// Ändra dessa parametrar om du är modig:
#show: project.with(
  organ: organ,
  author: author,
  role: role,
  coauthors: coauthors,
  type: type,
  title: title,
  //full_title: "<byt ut titeln helt om du vill>",
  date: datetime.today().display(),
  sm: sm,
  meme: align(center, memebild),
  draft: false,
)

// Skriv här:
== Bakgrund

#lorem(50)

== Förslag till beslut

Mot bakgrund av ovanstående yrkar #if organ.len() == 0 {author} else {organ} på

#att[avsätta #num(50000) kr för inköp av övervakningskameror]

#att_styrdok_läggtillp(styrdok.sta, "§1.2 Ändamål", [
  - övervaka sektionens medlemmar till vardags
])

#att_styrdok_läggtill(styrdok.reg, [
  == §7 Övervakning

  #lorem(50)
])


#att_styrdok_ändra(styrdok.reg, "§8.1.1", [
  Är ledamot i sektionsstyrelsen, D-rektoratet. Arbetsleder D-rektoratet och företräder organisationen utåt. Är firmatecknare tillsammans med kassören. Har det övergripande ansvaret för sektionens avtalshantering och serveringstillstånd. Ansvarar även för att det upprättas en verksamhetsberättelse varje år som talar #strike[om vad som hänt] under året. Denna verksamhetsberättelse ska, åtminstone, innehålla en verksamhetsberättelse från varje bokföringspliktig nämnd och organ.
], [
  Är ledamot i sektionsstyrelsen, D-rektoratet. Arbetsleder D-rektoratet och företräder organisationen utåt. Är firmatecknare tillsammans med kassören. Har det övergripande ansvaret för sektionens avtalshantering och serveringstillstånd. Ansvarar även för att det upprättas en verksamhetsberättelse varje år som talar *illa om alla medlemmar som inte betett sig* under året. Denna verksamhetsberättelse ska, åtminstone, innehålla en verksamhetsberättelse från varje bokföringspliktig nämnd och organ.
])

#att_konsnum()

#att[Storebror och/eller Storasyster ser dig]

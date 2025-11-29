\version "2.24.4"
\include "layout.ily"

\score {
  <<
    \new Staff <<
      \relative c' {
        \clef C c1
      }
    >>
  >>
}
\layout {
  \context {
    \Staff
    \remove "Time_signature_engraver"
    \override Staff.BarLine.transparent = ##t
  }
}

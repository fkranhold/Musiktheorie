\version "2.24.4"
\include "layout.ily"

\score {
  \new Staff <<
    \override Staff.BarLine.transparent = ##t
    \relative c' { <a c e>1 <b d f> <c e g> <d f a> <e gis b> <f a c> <g? b d> }
  >>
  \layout {
    \context {
      \Staff
      \remove "Time_signature_engraver"
    }
  }
}

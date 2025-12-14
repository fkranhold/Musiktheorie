\version "2.24.4"
\include "layout.ily"

\score {
  \new Staff <<
    \override Staff.BarLine.transparent = ##t
    \relative c' { <c e g>1 <d f a> <e g b> <f a c> <g b d> <a c e> <b d f> }
  >>

  \layout {
    \context {
      \Staff
      \remove "Time_signature_engraver"
    }
  }
}

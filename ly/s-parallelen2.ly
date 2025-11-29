\version "2.24.4"
\include "layout.ily"

\layout {
  \context {
    \Score
    \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/9)
  }
}
<<
  \new Staff <<
    \relative c' {
      \time 2/2
      \override Staff.TimeSignature.stencil = ##f
      <<
        {\voiceOne c'2 d \bar "||" d c \bar "||" e4\glissando d c2}
        \new Voice {\voiceTwo g2 a g fis a\glissando g}
      >>
    }
  >>
>>

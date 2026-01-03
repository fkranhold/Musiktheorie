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
        \clef "treble"
        {\voiceOne c'2 d \bar "||" d c \bar "||" e4\glissando d c2 \bar "||" \clef "bass" d,,4\glissando g g2}
        \new Voice {\voiceTwo g'2 a g fis a\glissando g d,4\glissando g, c2}
      >>
    }
  >>
>>

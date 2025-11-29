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
        {\voiceOne c'2 d \bar "||" e4 d\glissando c2 \bar "||" c4 b\glissando c2 \bar "||" d4 c b2 \bar "||" d g \bar "||" f g \bar "||" c, d}
        \new Voice {\voiceTwo f,2 g g\glissando f e2\glissando f g e g c, bes c fis g}
      >>
    }
  >>
>>

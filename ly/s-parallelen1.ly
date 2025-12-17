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
        {\voiceOne c'4 b\glissando c2 \bar "||" d4 c b2 \bar "||" d g \bar "||" c, d}
        \new Voice {\voiceTwo  e,2\glissando f g e g c, fis g}
      >>
    }
  >>
>>

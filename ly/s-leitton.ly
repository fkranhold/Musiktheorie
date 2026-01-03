\version "2.24.4"
\include "layout.ily"

\layout {
  \context {
    \Score
    \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/9)
  }
}
<<
  \new ChoirStaff <<
    \new Staff \with { \omit TimeSignature } <<
      \key c \major \relative c'' {
        \time 4/4
        <<
          {
            \voiceOne
            \set fingeringOrientations = #'(right)
            <b-3>2\glissando  c \bar "||" \key a \major b2 a \bar "||" \key bes \major c2 bes \bar "|."
          }
          \new Voice {
            \voiceTwo
            \set fingeringOrientations = #'(right)
            d, e <gis-3>\glissando <e-5> f f
          }
        >> 
      }
    >>
    \new Staff \with { \omit TimeSignature } <<
      \clef "bass" \key c \major \relative c' {
        <<
          {
            \voiceOne
            \set fingeringOrientations = #'(right)
            g2 g \key a \major b cis \key bes \major <a-3>\glissando <d-3>
          }
          \new Voice {
            \voiceTwo
            \set fingeringOrientations = #'(right)
            g,, c e a, f bes
          }
        >> 
      }
    >>
  >>
>>

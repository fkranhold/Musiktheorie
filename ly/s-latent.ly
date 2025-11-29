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
            g2 e \bar "|."
          }
          \new Voice {
            \voiceTwo
            \set fingeringOrientations = #'(right)
            d <c-1>
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
            <b-3>2 g
          }
          \new Voice {
            \voiceTwo
            \set fingeringOrientations = #'(right)
            g, c
          }
        >> 
      }
    >>
  >>
>>

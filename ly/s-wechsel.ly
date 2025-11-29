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
    \new Staff <<
      \key g \major\relative c'' {
        \time 4/4
        <<
          {
            \voiceOne
            b8 c b4 c a b1\bar "|."
          }
          \new Voice {
            \voiceTwo
            g8[ a] g8[ fis] g4 fis g1
          }
        >> 
      }
    >>
    \new Staff <<
      \key g \major \clef "bass" \relative c' {
        <<
          {
            \voiceOne
            d4 e c d d1
          }
          \new Voice {
            \voiceTwo
            g,4 e8 d e4 d g1
          }
        >> 
      }
    >>
  >>
>>

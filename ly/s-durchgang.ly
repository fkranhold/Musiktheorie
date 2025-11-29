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
      \key d \major \relative c'' {
        \time 4/4
        <<
          {
            \voiceOne
            b4 b a a b b ais b\bar "|."
          }
          \new Voice {
            \voiceTwo
            d, g8 fis e4 fis fis g fis8 e d4
          }
        >> 
      }
    >>
    \new Staff <<
      \key d \major \clef "bass" \relative c' {
        <<
          {
            \voiceOne
            b8 cis d4 cis d d e8 d cis4 b
          }
          \new Voice {
            \voiceTwo
            b,8 a g4 a4 d8 cis b4 e fis b,
          }
        >> 
      }
    >>
  >>
>>

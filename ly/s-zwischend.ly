\version "2.24.4"
\include "layout.ily"

\layout {
  \context {
    \Score
    \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/3)
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
            a4 a b a8 g fis1 \bar "||" \key g \major b4 d c d b1 \bar "||" \key c\minor g4 g as a g2 g
          }
          \new Voice {
            \voiceTwo
            fis4 fis g8 fis e4 d1 g8 fis e4 a a g1 es4 e f8 es d4 d4. f8 e2
          }
        >> 
      }
    >>
    \new Staff <<
      \clef "bass" \key d \major \relative c' {
        <<
          {
            \voiceOne
            d4 c b cis d1 \bar "||" \key g \major d4 b e d d1 \bar "||" \key c\minor c4 c c c4~ c b c2 
          }
          \new Voice {
            \voiceTwo
            d,4 d g a d,1 g4 gis a fis g1 c,4 bes' as fis g2 c,\bar "|."
          }
        >> 
      }
    >>
  >>
>>

\version "2.24.4"
\include "layout.ily"

\layout {
  \context {
    \Score
    \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
  }
}
<<
  \new ChoirStaff <<
    \new Staff <<
      \relative c'' {
        \time 4/4
        <<
          {
            \voiceOne
            \key g \major b4 d c d b1 \bar "||" \key d \major a4 a b a8 g fis1 \bar "||" \key c\minor g4 g f g g1
          }
          \new Voice {
            \voiceTwo
            g4 e4 a a g1 fis4 fis g8 fis e4 d1 es4 e f4 d4 es1
          }
        >> 
      }
    >>
    \new Staff <<
      \clef "bass" \relative c' {
        <<
          {
            \voiceOne
            \key g \major d4 b e d d1 \bar "||" \key d \major d4 c b cis d1 \bar "||" \key c\minor c4 c c b c1
          }
          \new Voice {
            \voiceTwo
            g4 gis a fis g1 d4 d g a d,1 c4 bes' as g c,1\bar "|."
          }
        >> 
      }
    >>
  >>
>>

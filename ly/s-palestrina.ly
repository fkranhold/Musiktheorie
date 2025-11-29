\version "2.24.4"
\include "layout.ily"

\new ChoirStaff <<
  \new Staff <<
    \key g \major \relative c'' {
      \time 4/4
      <<
        { \voiceOne c2 b4 g8 a b c d b c2 b4 a4. g8 g4~ g4 fis8 e fis2 g1 }
        \new Voice { \voiceTwo e2 d g g2~ g4 fis e2 d1 b4. a8 b8 c b4 }
      >> 
    }
  >>
  \new Staff <<
    \clef "bass" \key g \major \relative c {
      <<
        { \voiceOne r4 g'4 b4. c8 d4 d e2 d4. c8 b4 c a1 g2 r2 }
        \new Voice { \voiceTwo c,8 d e fis g2 g c, d4 d e c d1 r2 g2 }
      >> 
    }
  >>
>>


\version "2.24.4"
\include "layout.ily"

\score {
  <<
    \new PianoStaff <<
      \new Staff <<
        \relative c'' {
          \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/6)
          c2 e4 g b,4.( c16 d) c4 r a'2 g4 c g4( f8 e16 f) e4 r
          a,8 b16 c d e f g a g f e d c b a g8 a16 b c d e f g f e d c b a g f8 g16 a b c d e f e d c b a g f
        }
      >>
      \new Staff <<
        \relative c' {
          \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/6)
          c8 g' e g c, g' e f d g f g c, g' e g c, a' f a c, g' e g b, g' d g c, g' e g
          f4 r r \clef "bass" <f, c'>4 <e c'> r r <e c'> <d c'> r r <d b'>
        }
      >>
    >>
  >>
}

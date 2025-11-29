\version "2.24.4"
\include "layout.ily"

\layout {
  \context {
    \Score
    \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/11)
  }
}
<<
  \new ChoirStaff <<
    \new Staff <<
      \relative c'' {
        <<
          {
            \voiceOne
            \set fingeringOrientations = #'(right)
            c4 <c-5> b c \bar "||" \key g \major g4 <g-5> fis g \bar "||"\key b \minor b <b-5> ais b \bar "||"\key d \minor a bes a a \bar "|."
          }
          \new Voice {
            \voiceTwo
            \set fingeringOrientations = #'(right)
            e a g e d4 c d d d g fis d f g <g-7> f
          }
        >> 
      }
    >>
    \new Staff <<
      \clef "bass" \relative c' {
        <<
          {
            \voiceOne
            \set fingeringOrientations = #'(right)
            c <d-6> d c  \key g \major b <a-6> a b  \key d \major b <cis-6> cis b \key f \major d <d-5> cis d 
          }
          \new Voice {
            \voiceTwo
            \set fingeringOrientations = #'(right)
            c, f g c, g' e d g b, e fis b, f' <e-6> a d,
          }
        >> 
      }
    >>
  >>
>>

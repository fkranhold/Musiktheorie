\version "2.24.4"
\include "layout.ily"

\score {
  <<
    \new Staff <<
      \relative c' {
        %% \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/6)
        \time 4/4
        \key d \minor
        \clef "bass"
        \partial 8*5  a8 g f e d cis bes' a g a4( a,) d r4 r2
      }
    >>
  >>
}

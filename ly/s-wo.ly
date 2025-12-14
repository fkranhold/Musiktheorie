\version "2.24.4"
\include "layout.ily"

\score {
  <<
    \new PianoStaff <<
      \new Staff <<
        \relative c'' {
          %% \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/6)
          \time 3/8
          \key d \major
          <a cis g'>8 <d fis> r <gis, b e> <e a e'> r
          <ais cis e> <b d> r <e,  g? cis> <fis cis' fis> r <a b fis'> <g e'> r <cis, e a> <fis a d> r
        }
      >>
      \new Staff <<
        \relative c' {
          %% \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/6)
          \key d \major
          \time 3/8
          \clef "bass"
          a8 b16 cis d8~ d cis16 b a g fis8 gis16 ais b8~ b a?16 g? fis e d8 e16 fis g8~ g fis16 e d cis
        }
      >>
    >>
  >>
}

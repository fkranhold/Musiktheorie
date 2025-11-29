\version "2.24.4"
\include "layout.ily"

\score {
  <<
    \new PianoStaff <<
      \new Staff <<
        \relative c'' {
          \key fis \minor
          cis8 e a,16 gis fis a b8 d gis,16 fis e gis a8 cis b16 cis d fis a, b
          cis fis gis, a b eis fis,8 a b16 cis d b gis8 b cis16 d e cis a8 cis fis16 e d
          fis e d cis e d cis b d cis b a gis a b cis e gis, a b e fis, gis a dis e,8
          gis'~ gis16 e cis bis cis8 a'~ a16 fis dis cis bis dis gis cis, a' gis fis a gis
          fis e gis fis e dis fis e16 dis cis e
        }
      >>
      \new Staff <<
        \clef "bass" \relative c' {
          \key fis \minor
          e,16 dis cis e fis8 a d,16 cis b d e8 gis cis,16 b a cis d cis b d cis
          b a cis b a gis b a gis fis a d8 fis b,16 a gis b e8 gis cis,16 b a cis d e fis
          a cis, d e a b, cis d gis a,8 a'16 b cis b a cis b a gis b a gis fis a gis fis e
          gis cis8 e a,16 gis fis a dis8 fis gis,[ e'] fis,[ dis'] e,[ cis'] dis,[ bis']
          cis,[ cis']
        }
      >>
    >>
  >>
}

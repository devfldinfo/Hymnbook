\version "2.22.0"
\include "../Lib/MusicCommon.ly"
1MusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 86
    \time 4/4
    \key as \major
    
}
1MusicRHA = \relative c'{ \1MusicGlobal \clef "treble"
    aes'4 g8 [f] ees4 \pcAO c | %1
f aes8 [f] ees4 c | %2
c' bes8 [aes] f4 bes | aes g aes2 | %4
c4 c8 [des] ees4 c | des bes c aes | %6
c c8 [des] ees4 c | des c bes2 | %8
aes4 g8 [f] ees4 \pcAO c | %9
f aes8 [f] ees4 c | %10
c' bes8 [aes] f4 bes aes g aes2 \he
}
1MusicRHB = \relative c'{ \1MusicGlobal \clef "treble"
    c4 ees8 [des] c4 c | %1
des f8 [des] c4 aes | %2
ees' des8 [ees] des4 f | ees des c2 | %4
ees4 ees aes ees | g ees ees c | %6
ees ees aes ees | ees ees ees2 | %8
c4 ees8 [des] c4 c | %9
des f8 [des] c4 aes | %10
ees' des8 [ees] des4 f ees des c2
}
1MusicRH =  \partCombine #'(2 . 20)  \1MusicRHA \1MusicRHB
1MusicLHA = \relative c{ \1MusicGlobal \clef "bass"
    aes'4 aes aes aes | aes aes aes ees | %2
aes g8 [aes] aes4 des | %3
c bes aes2 \pcAp | %4
aes4 aes8 [bes] \pcAu c4 \pcAO aes | %5
bes g aes ees | aes aes8 [bes] c4 aes | %7
bes aes g2 | ees4 aes aes aes | %9
aes aes aes ees | aes g8 [aes] aes4 des c bes aes2
}
1MusicLHB = \relative c{ \1MusicGlobal \clef "bass"
    aes4 aes aes aes | des des aes aes | %2
aes bes8 [c] des4 bes | ees ees aes,2 | %4
aes'4 aes aes4 aes | %5
ees ees aes, aes | aes aes aes aes | %7
g aes8 [c] ees2 | aes,4 aes aes aes | %9
des des aes aes | aes bes8 [c] des4 bes ees ees aes,2
}
1MusicLH =  \partCombine #'(2 . 20)  \1MusicLHA \1MusicLHB
1MusicLyrics = \relative c''''{ \1MusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c8  s8 c4 c4 c4 c8  s8 c4 c4 c4 c8  s8 c4 c4 c4 c4 c2 c4 c8  s8 c4 c4 c4 c4 c4 c4 c4 c8  s8 c4 c4 c4 c4 c2 c4 c8  s8 c4 c4 c4 c8  s8 c4 c4 c4 c8  s8 c4 c4 c4 c4 c2
}

BBFIGxABILessSylMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 64
    \time 4/4
    \key f \major
    \partial 4
    
}
BBFIGxABILessSylMusicRHA = \relative c'{ \BBFIGxABILessSylMusicGlobal \clef "treble"
    f8. g16 |  \nbp a4 f \pcAO d g8. g16 | %2
f4 e f \breathe \lbp a8. a16 | %3
\nbp g4 g4 c4 e,8 f \pcAO | %4
e4 d \pcAO c \breathe \pcAp \lbp c8. c16 \pcAu | %5
\nbp f4 a g \pcAp c,8. (c16) \pcAu | %6
g'4 bes a \lbp f8. a16 | %7
\nbp c4 c4 c8 [bes] \pcAp f g \pcAu a4 g \set Score.tempoHideNote = ##t \tempo 4 = 32  \fpre f \fpost \set Score.tempoHideNote = ##t \tempo 4 = 64   \he
}
BBFIGxABILessSylMusicRHB = \relative c'{ \BBFIGxABILessSylMusicGlobal \clef "treble"
    c8. c16 | f4 c d d8. d16 | %2
c4 c c f8. f16 | e4 e4 e4 c8 d | %4
e4 b c c8. c16 | c4 f e c8. c16 | %6
e4 g f c8. f16 | f4 ees d4 f8 f f4 e c
}
BBFIGxABILessSylMusicRH =  \partCombine #'(2 . 20)  \BBFIGxABILessSylMusicRHA \BBFIGxABILessSylMusicRHB
BBFIGxABILessSylMusicLHA = \relative c{ \BBFIGxABILessSylMusicGlobal \clef "bass"
    a'8. bes16 | c4 a f bes8. bes16 | %2
a4 g a c8. c16 | c4 c4 g4 g8 a | %4
c4 f, e bes'8. bes16 | a4 c c c8. (c16) | %6
c4 c c a8. c16 | a4 a f4 d'8 d c4 bes a
}
BBFIGxABILessSylMusicLHB = \relative c{ \BBFIGxABILessSylMusicGlobal \clef "bass"
    f8. f16 | f4 f bes, bes8. bes16 | %2
c4 c f f8. f16 | c4 c4 c4 c8 f | %4
g4 g, c e8. e16 | f4 f c c8. (c16) | c4 c f f8. f16 | %7
f4 f bes,4 bes8 bes c4 c \fpre f \fpostbelow
}
BBFIGxABILessSylMusicLH =  \partCombine #'(2 . 20)  \BBFIGxABILessSylMusicLHA \BBFIGxABILessSylMusicLHB
BBFIGxABILessSylMusicLyrics = \relative c''''{ \BBFIGxABILessSylMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8. c16 c4 c4 c4 c8. c16 c4 c4 c4 c8. c16 c4 c4 c4 c8 c8 c4 c4 c4 c8. c16 c4 c4 c4 c8. c16 c4 c4 c4 c8. c16 c4 c4 c8  s8 c8 c8 c4 c4 c4
}

BBFIHxFMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 120
    \time 3/4
    \key es \major
    \partial 4
    
}
BBFIHxFMusicRHA = \relative c'{ \BBFIHxFMusicGlobal \clef "treble"
    ees4 | g (aes) f \pcAO | ees2 g4 | %3
bes2 c4 |  \nbp bes2 \lbp bes4 | %5
\nbp ees2 d4 | c2 bes4 | bes (aes) g | %8
g (\set Score.tempoHideNote = ##t \tempo 4 = 60  \fpre f) \fpost \set Score.tempoHideNote = ##t \tempo 4 = 120   \lbp f |  \nbp bes2 c4 | %10
d2 bes4 | ees (g,) a | %12
\nbp bes2 \pcAO \lbp ees,4 | %13
\nbp aes2 g4 | f2 \pcAO ees4 | %15
ees8 ([f] g4) f \pcAO \nbp ees2 \he
}
BBFIHxFMusicRHB = \relative c'{ \BBFIHxFMusicGlobal \clef "treble"
    bes4 | ees2 d4 | ees2 ees4 | ees2 ees4 | %4
ees2 f4 | ees2 g4 | ees2 ees4 | f2 ees4 | %8
ees (d) d | f2 f4 | f2 g4 | g2 f4 | %12
d2 ees4 | c (d) ees | d2 ees4 | %15
ees2 d4 ees2
}
BBFIHxFMusicRH =  \partCombine #'(2 . 20)  \BBFIHxFMusicRHA \BBFIHxFMusicRHB
BBFIHxFMusicLHA = \relative c{ \BBFIHxFMusicGlobal \clef "bass"
    g'4 | bes (c) bes | g2 c4 | bes2 aes4 | %4
g2 bes4 | g2 g4 | aes2 g4 | bes2 bes4 | %8
bes2 bes4 | bes2 a4 \pcAO | bes2 d4 | %11
ees2 c4 | bes2 bes4 | aes2 bes4 | %14
bes (aes) g | c (bes) aes g2
}
BBFIHxFMusicLHB = \relative c{ \BBFIHxFMusicGlobal \clef "bass"
    ees4 | ees (aes,) bes | c2 c4 | %3
g2 aes4 | ees'2 d4 | c2 bes4 | %6
aes2 ees'4 | d2 ees4 | \fpre bes2 \fpostbelow bes4 | %9
d2 f4 | bes2 g4 | c,2 f4 | bes,2 g'4 | %13
f2 ees4 | bes2 c4 | aes (bes) bes ees2
}
BBFIHxFMusicLH =  \partCombine #'(2 . 20)  \BBFIHxFMusicLHA \BBFIHxFMusicLHB
BBFIHxFMusicLyrics = \relative c''''{ \BBFIHxFMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c2 c4 c2 c4 c2 c4 c2 c4 c2 c4 c2 c4 c2 c4 c2 c4 c2 c4 c2 c4 c2 c4 c2 c4 c2 c4 c2 c4 c2 c4 c2
}

BBFIIxCEEMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 8 = 100
    \time 4/4
    \key as \major
    \partial 8
    
}
BBFIIxCEEMusicRHA = \relative c'{ \BBFIIxCEEMusicGlobal \clef "treble"
    ees8 | %1
\nbp ees ees aes8. bes16 c8 c4 \lbp aes8 | %2
\nbp des aes aes8. bes16 c4. \lbp c8 | %3
\nbp c bes ees,8. c'16 bes8 aes4 \lbp g8 | %4
\nbp f bes bes8. c16 bes4. \lbp ees,8 | %5
\nbp ees ees aes8. bes16 c8 c4 \lbp aes8 | %6
\nbp des des aes8. bes16 c4. \lbp c8 | %7
\nbp ees ees des c bes aes4 \lbp f8 | %8
\nbp ees c' c8. bes16 aes4. r8 \repeat volta 2 {| %9
c4 \postCho ees ees c | %10
bes8 aes g f ees4 aes} \alternative {{| %11
c ees ees c | c8 bes bes c bes2} {| %13
c4 ees des bes aes8 g f g aes4. \he}}
}
BBFIIxCEEMusicRHB = \relative c'{ \BBFIIxCEEMusicGlobal \clef "treble"
    c8 | c c c8. des16 ees8 ees4 ges8 | %2
f f f8. fes16 ees4. ees8 | %3
ees des des8. ees16 des8 c4 ees8 | %4
des des d8. d16 ees4. des8 | %5
c c c8. des16 ees8 ees4 ges8 | %6
f f f8. fes16 ees4. ees8 | %7
ees ees ees ees f f4 des8 | %8
c ees ees8. des16 c4. r8 | %9
aes'4 aes aes aes | f8 f ees des c4 ees | %11
aes aes aes aes | aes8 aes aes aes g2 | %13
ees4 ges f f ees8 des des des c4.
}
BBFIIxCEEMusicRH =  \partCombine #'(2 . 20)  \BBFIIxCEEMusicRHA \BBFIIxCEEMusicRHB
BBFIIxCEEMusicLHA = \relative c{ \BBFIIxCEEMusicGlobal \clef "bass"
    aes'8 | %1
aes aes ees8. ees16 aes8 aes4 aes8 | %2
aes des des8. aes16 aes4. aes8 | %3
aes g g8. g16 aes8 aes4 aes8 | %4
aes f f8. aes16 g4. g8 | %5
aes aes ees8. ees16 aes8 aes4 aes8 | %6
aes aes des8. aes16 aes4. aes8 | %7
aes aes g aes aes des4 aes8 | %8
aes aes g8. g16 aes4. r8 | ees'4 c c ees | %10
des8 des aes aes aes4 c | ees c c ees | %12
d8 d d d ees2 | aes,4 aes aes des c8 bes aes bes aes4.
}
BBFIIxCEEMusicLHB = \relative c{ \BBFIIxCEEMusicGlobal \clef "bass"
    aes8 | aes aes aes8. aes16 aes8 aes4 c8 | %2
des des des8. des16 aes4. aes8 | %3
ees' ees ees8. ees16 aes,8 aes4 c8 | %4
des des bes8. bes16 ees4. ees8 | %5
aes, aes aes8. aes16 aes8 aes4 c8 | %6
des des des8. des16 aes4. aes8 | %7
c c bes aes des des4 des8 | %8
ees ees ees8. ees16 aes,4. r8 | %9
aes'4 aes aes aes | %10
des,8 des des des aes4 aes | %11
aes' aes aes aes | bes8 bes bes bes ees,2 | %13
aes,4 c des des ees8 ees ees ees aes,4.
}
BBFIIxCEEMusicLH =  \partCombine #'(2 . 20)  \BBFIIxCEEMusicLHA \BBFIIxCEEMusicLHB
BBFIIxCEEMusicLyrics = \relative c''''{ \BBFIIxCEEMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8 c8 c8 c8. c16 c8 c4 c8 c8 c8 c8. c16 c4. c8 c8 c8 c8. c16 c8 c4 c8 c8 c8 c8. c16 c4. c8 c8 c8 c8. c16 c8 c4 c8 c8 c8 c8. c16 c4. c8 c8 c8 c8 c8 c8 c4 c8 c8 c8 c8. c16 c4.  s8 c4 c4 c4 c4 c8 c8 c8 c8 c4 c4 c4 c4 c4 c4 c8 c8 c8 c8 c2 c4 c4 c4 c4 c8 c8 c8 c8 c4.
}

BBGZZxBHGMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 88
    \time 4/4
    \key f \major
    
}
BBGZZxBHGMusicRHA = \relative c'{ \BBGZZxBHGMusicGlobal \clef "treble"
    a'4. a8 bes a g f |  \nbp f2 e | %2
bes'4. bes8 bes bes bes bes \pcAO | %3
\nbp a2. r4 | a4. a8 bes a g \pcAO f | %5
\nbp g2 bes | a4. f8 a g e \pcAO c | %7
\nbp f2. r4 \cbp | %8
c'4. \postCho b8 d c g a | bes4 bes2 r4 | %10
bes4. g8 c bes g aes |  \nbp a2. r4 | %12
a4. a8 bes a g f |  \nbp g2 bes | %14
a4. \pcAO f8 a g e \pcAO c \nbp f2. \he
}
BBGZZxBHGMusicRHB = \relative c'{ \BBGZZxBHGMusicGlobal \clef "treble"
    f4. f8 f f c c | c2 c | c4. d8 e g e d | %3
a'2. r4 | f4. f8 f f c f | d2 g | %6
f4. c8 e e c c | c2. r4 | %8
a'4. aes8 bes a e f | e4 e2 r4 | %10
e4. e8 e e e e | f2. r4 | f4. f8 f f c c | %13
d2 g | f4. f8 e e c c c2.
}
BBGZZxBHGMusicRH =  \partCombine #'(2 . 20)  \BBGZZxBHGMusicRHA \BBGZZxBHGMusicRHB
BBGZZxBHGMusicLHA = \relative c{ \BBGZZxBHGMusicGlobal \clef "bass"
    c'4. c8 d c bes a | a2 g | %2
e4. f8 g g g g | c2. r4 | %4
c4. c8 d c bes a | bes2 d | %6
c4. a8 c bes bes bes | a2. r4 | %8
f'4. f8 f f c c | c4 c2 r4 | %10
c4. c8 g g c c | c2. r4 | %12
c4. c8 d c bes a | bes2 d | %14
c4. a8 c bes bes bes a2.
}
BBGZZxBHGMusicLHB = \relative c{ \BBGZZxBHGMusicGlobal \clef "bass"
    f4. f8 f f f f | c2 c | c4. c8 c c c c | %3
f2. r4 | f4. f8 f f f f | bes,2 g | %6
c4. c8 c c c c | f2. r4 | %8
f4. f8 f f bes a | g4 g2 r4 | %10
c,4. c8 c c c c | f2. r4 | %12
f4. f8 f f f f | bes,2 g | %14
c4. c8 c c c c f2.
}
BBGZZxBHGMusicLH =  \partCombine #'(2 . 20)  \BBGZZxBHGMusicLHA \BBGZZxBHGMusicLHB
BBGZZxBHGMusicLyrics = \relative c''''{ \BBGZZxBHGMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4. c8 c8 c8 c8 c8 c2 c2 c4. c8 c8 c8 c8 c8 c2.  s4 c4. c8 c8 c8 c8 c8 c2 c2 c4. c8 c8 c8 c8 c8 c2.  s4 c4. c8 c8 c8 c8 c8 c4 c2  s4 c4. c8 c8 c8 c8 c8 c2.  s4 c4. c8 c8 c8 c8 c8 c2 c2 c4. c8 c8 c8 c8 c8 c2.
}

BBGZAxAZFMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 8 = 108
    \time 6/8
    \key a \major
    \partial 8
    
}
BBGZAxAZFMusicRHA = \relative c'{ \BBGZAxAZFMusicGlobal \clef "treble"
    cis16 d |  \nbp e8. dis16 e8 cis'4 b8 | %2
b a4. r8 \lbp a16 a | %3
\nbp a8. gis16 a8 b a fis | %4
\nbp e2 r8 \lbp e16 e | %5
\nbp e8. a16 a8 a b cis | %6
d d4. r8 \lbp d16 d | %7
\nbp cis8. b16 a8 gis a b | %8
\nbp a4.~a4 \cbp cis8 \postCho | %9
\nbp cis8. c16 cis8 a4 a8 | b a fis e4. | %11
a8. a16 a8 a gis a | b b cis b4. | %13
cis8. c16 cis8 a4 a8 | b a fis e4. | %15
fis8 a d cis16 cis8. b8 \nbp a4.~a4 \he
}
BBGZAxAZFMusicRHB = \relative c'{ \BBGZAxAZFMusicGlobal \clef "treble"
    a16 b | cis8. c16 cis8 e4 d8 | %2
d cis4. r8 e16 e | %3
fis8. f16 fis8 fis fis d | %4
cis2 r8 cis16 cis | %5
cis8. cis16 cis8 e e e | %6
fis fis4. r8 fis16 fis | %7
e8. d16 cis8 d cis d | cis4.~cis4 e8 | %9
e8. dis16 e8 cis4 e8 | fis fis d cis4. | %11
cis8. cis16 cis8 cis cis cis | %12
dis dis dis e4. | e8. dis16 e8 cis4 e8 | %14
fis fis d cis4. | d8 fis fis e16 e8. d8 cis4.~cis4
}
BBGZAxAZFMusicRH =  \partCombine #'(2 . 20)  \BBGZAxAZFMusicRHA \BBGZAxAZFMusicRHB
BBGZAxAZFMusicLHA = \relative c{ \BBGZAxAZFMusicGlobal \clef "bass"
    e16 e | a8. a16 a8 a4 gis8 | %2
gis a4. r8 a16 a | a8. a16 a8 d d a | %4
a2 r8 a16 a | a8. a16 a8 a gis \pcAO a | %6
a a4. r8 a16 a | a8. gis16 a8 b a gis | %8
a4.~a4 a8 | a8. a16 a8 e4 a8 | %10
a d a a4. | a8. a16 a8 a b a | %12
fis fis a gis4. | a8. a16 a8 e4 a8 | %14
a a a a4. | a8 a a a16 a8. gis8 a4.~a4
}
BBGZAxAZFMusicLHB = \relative c{ \BBGZAxAZFMusicGlobal \clef "bass"
    a16 a | a8. a16 a8 e'4 e8 | %2
e a,4. r8 cis16 cis | d8. d16 d8 d d d | %4
a2 r8 a16 a | a8. a16 a8 cis e a | %6
d, d4. r8 d16 d | e8. e16 e8 e4 e8 | %8
a,4.~a4 a8 | a8. a16 a8 a4 cis8 | %10
d d d a4. | fis'8. fis16 fis8 fis fis fis | %12
b, b b e4. | a,8. a16 a8 a4 cis8 | %14
d d d a4. | d8 d d e16 e8. e8 a,4.~a4
}
BBGZAxAZFMusicLH =  \partCombine #'(2 . 20)  \BBGZAxAZFMusicLHA \BBGZAxAZFMusicLHB
BBGZAxAZFMusicLyrics = \relative c''''{ \BBGZAxAZFMusicGlobal \clef "treble"
    \hideNotes \voiceFour c16 c16 c8. c16 c8 c4 c8 c8 c4.  s8 c16 c16 c8. c16 c8 c8 c8 c8 c2  s8 c16 c16 c8. c16 c8 c8 c8 c8 c8 c4.  s8 c16 c16 c8. c16 c8 c8 c8 c8 c4.  s4 c8 c8. c16 c8 c4 c8 c8 c8 c8 c4. c8. c16 c8 c8 c8 c8 c8 c8 c8 c4. c8. c16 c8 c4 c8 c8 c8 c8 c4. c8 c8 c8 c16 c8. c8 c4.
}

BBGZBxCEZMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 120
    \time 6/4
    \key c \major
    \partial 4
    
}
BBGZBxCEZMusicRHA = \relative c'{ \BBGZBxCEZMusicGlobal \clef "treble"
    \pcAO c4 |  \nbp e e e e a g | %2
g2 f4 e2 \lbp e4 |  \nbp d d d d e f | %4
\nbp e2.~e2 \pcAO \lbp c4 | %5
\nbp e e e e a g | %6
g2 f4 e2 \lbp e4 | %7
\nbp d d d d (e) fis | %8
\nbp g2.~g2 \cbp g4 \postCho | %9
\nbp c2 c8. c16 b2 a4 | %10
g2 f4 \pcAO e2 \lbp g4 | %11
\nbp a a2 b c4 | %12
\nbp d2.~d2 \pcAO \lbp g,4 | %13
\nbp e'2 d4 c2 \pcAO g8. \pcAO g16 | %14
a2 b4 c2 \lbp a4 |  \nbp g2 c4 b d2 \nbp c2.~c2 \he
}
BBGZBxCEZMusicRHB = \relative c'{ \BBGZBxCEZMusicGlobal \clef "treble"
    c4 | c c c c c c | b2 b4 c2 c4 | %3
b b b b c b | c2.~c2 c4 | c c c c c c | %6
e2 d4 c2 c4 | b b b c (c) c | b2.~b2 f'4 | %9
e2 e8. e16 g2 f4 | e2 d4 e2 e4 | %11
f f2 f e4 | d2.~d2 g4 | %13
g2 g4 g2 g8. g16 | f2 g4 g2 f4 | %15
e2 e4 f f2 e2.~e2
}
BBGZBxCEZMusicRH =  \partCombine #'(2 . 20)  \BBGZBxCEZMusicRHA \BBGZBxCEZMusicRHB
BBGZBxCEZMusicLHA = \relative c{ \BBGZBxCEZMusicGlobal \clef "bass"
    e4 | g c b8 [a] g4 \pcAO f g | %2
g2 g4 g2 g4 | g f8 [e] d4 g g g | %4
g2.~g2 e4 | g c b8 [a] g4 f e | %6
g (a) b c2 g4 | g g g fis (g) a | %8
g2.~g2 b4 | c2 c8. c16 c2 c4 | %10
c2 b4 c2 c4 | c c2 d4 (g,) g | %12
g2.~g2 g4 | g (a) b c2 c8. c16 | %14
c2 d4 e2 c4 | c2 \pcAO g4 \pcAO g b2 c2.~c2
}
BBGZBxCEZMusicLHB = \relative c{ \BBGZBxCEZMusicGlobal \clef "bass"
    c4 | c c c c f e | d (g,) g c2 c4 | %3
g g g g g g | c2.~c2 c4 | c c c c c c | %6
c2 g4 c2 c4 | d d d d (d) d4 | %8
g,2.~g2 g'4 | c,2 c8. c16 e2 f4 | %10
g2 g4 c,2 c4 | f f (e) d2 c4 | b2.~b2 b4 | %13
c2 d4 e2 e8. e16 | f2 d4 c2 f4 | %15
g2 g4 g g2 c,2.~c2
}
BBGZBxCEZMusicLH =  \partCombine #'(2 . 20)  \BBGZBxCEZMusicLHA \BBGZBxCEZMusicLHB
BBGZBxCEZMusicLyrics = \relative c''''{ \BBGZBxCEZMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c4 c4 c4 c4 c4 c4 c2 c4 c2 c4 c4 c4 c4 c4 c4 c4 c2.  s2 c4 c4 c4 c4 c4 c4 c4 c2 c4 c2 c4 c4 c4 c4 c4 c4 c4 c2.  s2 c4 c2 c8. c16 c2 c4 c2 c4 c2 c4 c4 c2 c2 c4 c2.  s2 c4 c2 c4 c2 c8. c16 c2 c4 c2 c4 c2 c4 c4 c2 c2.
}

BBGZCxDZIMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 78
    \time 4/4
    \key f \major
    \partial 4
    
}
BBGZCxDZIMusicRHA = \relative c'{ \BBGZCxDZIMusicGlobal \clef "treble"
    \pcAO c4 |  \nbp f8. f16 f8. f16 a4 f | %2
\nbp a c2 \lbp d4 | %3
\nbp c8. c16 c8. c16 a4 \pcAO f | %4
\nbp g2. \pcAO \lbp c,4 | %5
\nbp f8. f16 f8. f16 a4 f | %6
\nbp a c2 \lbp d4 | %7
\nbp c8. a16 g8. \pcAO f16 a4 g \nbp | %8
f2~f8 \cbp a \postCho a8. bes16 | %9
c2~c8. c16 d8. d16 | %10
\nbp c2 a8. \lbp a16 g8. a16 | %11
bes2~bes8. g16 a8. bes16 | %12
\nbp a2~a8. \lbp a16 a8. bes16 | %13
c2~c8. a16 bes8. d16 | %14
\nbp c2 a8. \lbp c,16 \pcAO f8. \pcAO g16 | %15
a2~a8. bes16 \set Score.tempoHideNote = ##t \tempo 4 = 39  \fpre a8 \fcont g \fpost \set Score.tempoHideNote = ##t \tempo 4 = 78   \nbp f2. \he
}
BBGZCxDZIMusicRHB = \relative c'{ \BBGZCxDZIMusicGlobal \clef "treble"
    c4 | c8. c16 c8. c16 f4 c | f f2 f4 | %3
f8. f16 f8. f16 f4 f | e2. c4 | %5
c8. c16 c8. c16 f4 c | f f2 f4 | %7
f8. f16 f8. f16 f4 e | c2~c8 f f8. g16 | %9
a2~a8. f16 f8. f16 | f2 f8. f16 e8. f16 | %11
g2~g8. e16 f8. g16 | %12
f2~f8. f16 f8. g16 | %13
a2~a8. f16 f8. f16 | f2 f8. r16 f8. g16 | %15
r8 r16 f f8. f16 f8. f16 f8 e16 [c] c2.
}
BBGZCxDZIMusicRH =  \partCombine #'(2 . 20)  \BBGZCxDZIMusicRHA \BBGZCxDZIMusicRHB
BBGZCxDZIMusicLHA = \relative c{ \BBGZCxDZIMusicGlobal \clef "bass"
    a'4 | a8. a16 a8. a16 c4 a | c a2 bes4 | %3
a8. a16 a8. a16 c4 b | c2. a4 | %5
a8. a16 a8. a16 c4 a | c a2 bes4 | %7
a8. c16 b8. b16 c4 bes | a2~a8 r r4 | %9
r8. c16 c8. c16 c8. a16 bes8. bes16 | %10
a2 c8. r16 r4 | %11
r8. e16 e8. d16 c8. c16 c8. c16 | %13
c2~c8. r2 c16 c8. c16 f8. ees16 d8. bes16 | %14
a2 c8. c16 f8. g16 | c,2~c8. d16 c8 bes a2.
}
BBGZCxDZIMusicLHB = \relative c{ \BBGZCxDZIMusicGlobal \clef "bass"
    f4 | f8. f16 f8. f16 f4 f | f f2 f4 | %3
f8. f16 f8. f16 f4 d | c2. f4 | %5
f8. f16 f8. f16 f4 f | f f2 bes,4 | %7
c8. c16 d8. d16 c4 c | f2~f8 r r4 | %9
r8. f16 f8. f16 f8. f16 f8. f16 | %10
f2 f8. r16 r4 | %11
r8. c16 c8. c16 c8. c16 c8. c16 | %13
f2~f8. r2 f16 f8. f16 f8. f16 f8. f16 | %14
f2 f8. a16 a8. bes16 | %15
r8 r16 f f8. f16 f8. bes,16 c8 \fpostbelow c \fpostbelow f2.
}
BBGZCxDZIMusicLH =  \partCombine #'(2 . 20)  \BBGZCxDZIMusicLHA \BBGZCxDZIMusicLHB
BBGZCxDZIMusicLyrics = \relative c''''{ \BBGZCxDZIMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c8. c16 c8. c16 c4 c4 c4 c2 c4 c8. c16 c8. c16 c4 c4 c2. c4 c8. c16 c8. c16 c4 c4 c4 c2 c4 c8. c16 c8. c16 c4 c4 c4.  s4 c8 c8. c16 c4. s8 s8. c16 c8  s16 c16 c2 c8. c16 c8. c16 c2  s8. c16 c8. c16 c2  s8. c16 c8. c16 c2  s8. c16 c8. c16 c2 c8. c16 c8. c16 c2  s8. c16 c8 c8 c2.
}

BBGZDxCBFMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 2 = 64
    \time 6/4
    \key des \major
    \partial 4
    
}
BBGZDxCBFMusicRHA = \relative c'{ \BBGZDxCBFMusicGlobal \clef "treble"
    des8 [ees] | %1
\nbp f2 f4 aes4. (ges8) f4 | %2
ees4. (f8) ges4 f2 \lbp aes4 | %3
\nbp aes (\pcAO ees) f ges2 bes4 | %4
bes2 aes4 f2 des8 [ees] | %5
\nbp f2 f4 aes4. (ges8) f4 | %6
bes2 bes4 des4. (c8) \lbp bes4 | %7
\nbp aes2 aes4 aes4. (ges8) f4 \pcAO | %8
ees2. aes \nbp f~f2 \he
}
BBGZDxCBFMusicRHB = \relative c'{ \BBGZDxCBFMusicGlobal \clef "treble"
    des4 | des2 des4 f4. (ees8) des4 | %2
c4. (des8) ees4 des2 f4 | %3
ees2 des4 ees2 ges4 | ges2 f4 des2 des4 | %5
des2 des4 f4. (ees8) des4 | %6
ges2 ges4 ges2 ges4 | %7
f2 f4 f4. (ees8) des4 | ees2. c des~des2
}
BBGZDxCBFMusicRH =  \partCombine #'(2 . 20)  \BBGZDxCBFMusicRHA \BBGZDxCBFMusicRHB
BBGZDxCBFMusicLHA = \relative c{ \BBGZDxCBFMusicGlobal \clef "bass"
    f8 [ges] | aes2 aes4 aes2 aes4 | %2
aes2 aes4 aes2 des4 | %3
c2 \pcAO aes4 \pcAO aes2 c4 | %4
des2 des4 aes2 f8 [ges] | %5
aes2 aes4 aes2 \pcAO f4 | %6
des'2 des4 bes4. (c8) des4 | %7
des2 des4 aes2 aes4 | c2. aes aes~aes2
}
BBGZDxCBFMusicLHB = \relative c{ \BBGZDxCBFMusicGlobal \clef "bass"
    des4 | des2 des4 des2 des4 | %2
aes2 aes4 des2 des4 | %3
aes'2 aes4 aes2 aes,4 | %4
des2 des4 des2 des4 | %5
des2 des4 des4. (ees8) f4 | %6
ges2 ges4 ges2 ges4 | des2 des4 des2 des4 | %8
aes'2. aes, des~des2
}
BBGZDxCBFMusicLH =  \partCombine #'(2 . 20)  \BBGZDxCBFMusicLHA \BBGZDxCBFMusicLHB
BBGZDxCBFMusicLyrics = \relative c''''{ \BBGZDxCBFMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c2 c4 c2 c4 c2 c4 c2 c4 c4  s4 c4 c2 c4 c2 c4 c2 c4 c2 c4 c2 c4 c2 c4 c2 c4 c2 c4 c2 c4 c2. c2. c2.
}

BBGZExAHGMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 2 = 120
    \time 3/2
    \key g \major
    \partial 2
    
}
BBGZExAHGMusicRHA = \relative c'{ \BBGZExAHGMusicGlobal \clef "treble"
    b'2 |  \nbp b (a) b | c1 fis,2 | %3
\nbp g1 \lbp g2 |  \nbp fis (a) d | %5
d1 cis2 |  \nbp d1 \lbp d2 | %7
\nbp d (c) b | b (a) g | %9
g (fis) e |  \nbp d1 \lbp g4 (fis) | %11
\nbp e2. (fis4) g (a) | b1 a2 \pcAO \nbp g1 \he
}
BBGZExAHGMusicRHB = \relative c'{ \BBGZExAHGMusicGlobal \clef "treble"
    d2 | e1 d2 | c1 c2 | b1 e2 | %4
d1 d4 (e) | fis1 e2 | fis1 g2 | a1 g2 | %8
fis1 e2 | d1 c2 | b1 d2 | c1 d4 (g) | %12
g1 fis2 g1
}
BBGZExAHGMusicRH =  \partCombine #'(2 . 20)  \BBGZExAHGMusicRHA \BBGZExAHGMusicRHB
BBGZExAHGMusicLHA = \relative c{ \BBGZExAHGMusicGlobal \clef "bass"
    b'2 | c1 gis2 | a1 a2 | g1 a2 | %4
a (fis) fis4 (g) | a1 a2 | a1 d2 | %7
d1 d2 | d (c) b | b1 g2 | g1 g2 | %11
g2. (a4) g (e') | d1 c2 b1
}
BBGZExAHGMusicLHB = \relative c{ \BBGZExAHGMusicGlobal \clef "bass"
    g'2 | c,1 b2 | a1 d2 | e1 cis2 | d1 b2 | %5
a1 a2 | d1 b'2 | fis1 g2 | d1 e2 | %9
b1 c2 | g1 b2 | c2. (a4) b (c) | %12
d1 d2 g,1
}
BBGZExAHGMusicLH =  \partCombine #'(2 . 20)  \BBGZExAHGMusicLHA \BBGZExAHGMusicLHB
BBGZExAHGMusicLyrics = \relative c''''{ \BBGZExAHGMusicGlobal \clef "treble"
    \hideNotes \voiceFour c2 c2  s2 c2 c1 c2 c1 c2 c2  s2 c2 c1 c2 c1 c2 c2  s2 c2 c2  s2 c2 c2  s2 c2 c1 c4  s4 c2.  s4 c4  s4 c1 c2 c1
}

BBGZFxDFMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 94
    \time 4/4
    \key g \major
    
}
BBGZFxDFMusicRHA = \relative c'{ \BBGZFxDFMusicGlobal \clef "treble"
    \repeat volta 2 {b'2 b4 b | c2. b4 | %2
b a \pcAO g a |  \nbp b2. \lbp g4 | %4
\nbp a2 fis |  \nbp g1} | a2 a4 b | %7
c2 a | d4 c b a |  \nbp b2. \lbp d4 | %10
\nbp e2 d |  \nbp c2. \lbp b4 | %12
\nbp d c b a \pcAO g1 \he
}
BBGZFxDFMusicRHB = \relative c'{ \BBGZFxDFMusicGlobal \clef "treble"
    g'2 g4 g | g2. g4 | fis fis g fis | %3
g2. e4 | e2 d | d1 | fis2 fis4 g | %7
fis2 fis | fis4 fis g fis | g2. g4 | %10
g2 g | fis2. g4 | a a g fis g1
}
BBGZFxDFMusicRH =  \partCombine #'(2 . 20)  \BBGZFxDFMusicRHA \BBGZFxDFMusicRHB
BBGZFxDFMusicLHA = \relative c{ \BBGZFxDFMusicGlobal \clef "bass"
    d'2 d4 d | e2. d4 | d c b a \pcAO | %3
g2. b4 | c2 c | b1 | d2 c4 b | a2 d | %8
d4 d d d | d2. d4 \pcAO | c2 d | %11
d2. d4 | e e d c b1
}
BBGZFxDFMusicLHB = \relative c{ \BBGZFxDFMusicGlobal \clef "bass"
    g'2 g4 g | g2. g4 | d d d d | g2. e4 | %4
c2 d | g1 | d2 d4 d | d2 d | b'4 a g d | %9
g2. b4 | c2 b | a2. g4 | c, c d d g1
}
BBGZFxDFMusicLH =  \partCombine #'(2 . 20)  \BBGZFxDFMusicLHA \BBGZFxDFMusicLHB
BBGZFxDFMusicLyrics = \relative c''''{ \BBGZFxDFMusicGlobal \clef "treble"
    \hideNotes \voiceFour c2 c4 c4 c2. c4 c4 c4 c4 c4 c2. c4 c2 c2 c1 c2 c4 c4 c2 c2 c4 c4 c4 c4 c2. c4 c2 c2 c2. c4 c4 c4 c4 c4 c1
}

BBGZGxAIBMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 66
    \time 3/4
    \key es \major
    \partial 4
    
}
BBGZGxAIBMusicRHA = \relative c'{ \BBGZGxAIBMusicGlobal \clef "treble"
    \pcAO ees8 f |  \nbp g4 g g8 aes | %2
\nbp bes4 bes \lbp aes8 g | %3
\nbp f4. f8 bes aes | %4
\nbp g2 \pcAO \lbp ees8 f | %5
\nbp g4 g g8 aes | %6
\nbp bes4 bes \lbp aes8 g | %7
\nbp f4. bes8 aes f \pcAO | %8
\nbp ees2 \cfb bes'8 \postCho bes | %9
\nbp ees4. ees8 d c | %10
\nbp bes4 g \lbp bes8 bes | %11
\nbp c4. ees8 d c | %12
\nbp bes2 \fb \pcAO ees,8 f | %13
\nbp g4 g g8 aes | %14
\nbp bes4 bes \lbp c8 bes | %15
\nbp f4. bes8 aes f \pcAO \nbp ees2 \he
}
BBGZGxAIBMusicRHB = \relative c'{ \BBGZGxAIBMusicGlobal \clef "treble"
    ees8 ees | ees4 ees ees8 f | g4 g f8 ees | %3
d4. d8 d f | ees2 ees8 ees | %5
ees4 ees ees8 f | g4 g f8 ees | %7
d4. d8 d d | ees2 g8 g | g4. g8 bes aes | %10
g4 ees g8 g | aes4. aes8 aes aes | %12
g2 ees8 ees | ees4 ees ees8 f | %14
g4 g aes8 g | d4. d8 d d ees2
}
BBGZGxAIBMusicRH =  \partCombine #'(2 . 20)  \BBGZGxAIBMusicRHA \BBGZGxAIBMusicRHB
BBGZGxAIBMusicLHA = \relative c{ \BBGZGxAIBMusicGlobal \clef "bass"
    g'8 aes | bes4 bes bes8 bes | %2
ees4 ees bes8 bes | bes4. bes8 bes bes | %4
bes2 g8 aes | bes4 bes bes8 bes | %6
ees4 ees bes8 bes | bes4. f8 f aes | %8
g2 bes8 bes | bes4. bes8 bes ees | %10
ees4 bes ees8 ees | ees4. c8 d ees | %12
ees2 g,8 aes | bes4 bes bes8 bes | %14
ees4 ees ees8 ees \pcAO | %15
bes4. bes8 f aes g2
}
BBGZGxAIBMusicLHB = \relative c{ \BBGZGxAIBMusicGlobal \clef "bass"
    ees8 ees | ees4 ees ees8 ees | %2
ees4 ees ees8 ees | bes4. bes8 bes d | %4
ees2 ees8 ees | ees4 ees ees8 ees | %6
ees4 ees ees8 ees | bes4. bes8 bes bes | %8
ees2 ees8 ees | ees4. ees8 ees ees | %10
ees4 ees ees8 ees | aes4. aes8 aes aes | %12
ees2 ees8 ees | ees4 ees ees8 ees | %14
ees4 ees ees8 ees | bes'4. bes,8 bes bes ees2
}
BBGZGxAIBMusicLH =  \partCombine #'(2 . 20)  \BBGZGxAIBMusicLHA \BBGZGxAIBMusicLHB
BBGZGxAIBMusicLyrics = \relative c''''{ \BBGZGxAIBMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8 c8 c4 c4 c8 c8 c4 c4 c8 c8 c4. c8 c8 c8 c2 c8 c8 c4 c4 c8 c8 c4 c4 c8 c8 c4. c8 c8 c8 c2 c8 c8 c4. c8 c8 c8 c4 c4 c8 c8 c4. c8 c8 c8 c2 c8 c8 c4 c4 c8 c8 c4 c4 c8 c8 c4. c8 c8 c8 c2
}

BBGZHxAGZMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 2 = 64
    \time 4/4
    \key e \major
    
}
BBGZHxAGZMusicRHA = \relative c'{ \BBGZHxAGZMusicGlobal \clef "treble"
    gis'2 gis4 fis \pcAO | e2 b' | %2
cis4 b b a |  \nbp gis1 | gis2 a4 b | %5
cis2 b | a4 \pcAO fis gis ais | %7
\nbp b1 | gis2 gis4 fis \pcAO | e2 b' | %10
b4 a a gis \pcAO |  \nbp fis1 | %12
fis2 gis4 a | gis fis \pcAO e a | %14
gis2 fis \pcAO \nbp e1 \he
}
BBGZHxAGZMusicRHB = \relative c'{ \BBGZHxAGZMusicGlobal \clef "treble"
    e2 dis4 dis | e2 e | e4 dis e fis | e1 | %4
e2 e4 e | e2 e | e4 fis e e | dis1 | %8
e2 dis4 dis | e2 e | e4 e eis eis | fis1 | %12
dis2 e4 dis | e dis e fis | e2 dis e1
}
BBGZHxAGZMusicRH =  \partCombine #'(2 . 20)  \BBGZHxAGZMusicRHA \BBGZHxAGZMusicRHB
BBGZHxAGZMusicLHA = \relative c{ \BBGZHxAGZMusicGlobal \clef "bass"
    b'2 b4 a | gis2 e | e4 b' b b | b1 | %4
b2 a4 gis | a2 gis | cis4 b b e, | fis1 | %8
gis4 (a) b a | gis2 e'4 (dis) | %10
cis cis cis b | a1 | b2 b4 b | %13
b a gis cis | b2 b4 (a) gis1
}
BBGZHxAGZMusicLHB = \relative c{ \BBGZHxAGZMusicGlobal \clef "bass"
    e2 b4 b | cis2 gis | a4 b cis dis | e1 | %4
e4 (dis) cis b | a2 e' | %6
fis4 dis e cis | b1 | e2 b4 b | %9
cis2 gis | a4 a8 [b] cis4 cis | fis1 | %12
a2 gis4 fis | e b cis a | b2 b e1
}
BBGZHxAGZMusicLH =  \partCombine #'(2 . 20)  \BBGZHxAGZMusicLHA \BBGZHxAGZMusicLHB
BBGZHxAGZMusicLyrics = \relative c''''{ \BBGZHxAGZMusicGlobal \clef "treble"
    \hideNotes \voiceFour c2 c4 c4 c2 c2 c4 c4 c4 c4 c1 c2 c4 c4 c2 c2 c4 c4 c4 c4 c1 c2 c4 c4 c2 c2 c4 c4 c4 c4 c1 c2 c4 c4 c4 c4 c4 c4 c2 c2 c1
}

BBGZIxCIDMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 2 = 64
    \time 4/4
    \key bes \major
    
}
BBGZIxCIDMusicRHA = \relative c'{ \BBGZIxCIDMusicGlobal \clef "treble"
    f2 f4 f | f2. f4 | g g g f | %3
\nbp f2. \lbp f4 |  \nbp bes2 c | %5
d4 c bes g | f2 f4 (ees) \nbp d1 \he
}
BBGZIxCIDMusicRHB = \relative c'{ \BBGZIxCIDMusicGlobal \clef "treble"
    d2 c8 [d] ees4 | d2. d4 | %2
ees ees ees ees | d2. d4 | ees2 e | %5
f4 f f ees | d2 c bes1
}
BBGZIxCIDMusicRH =  \partCombine #'(2 . 20)  \BBGZIxCIDMusicRHA \BBGZIxCIDMusicRHB
BBGZIxCIDMusicLHA = \relative c{ \BBGZIxCIDMusicGlobal \clef "bass"
    bes'2 a8 [bes] c4 | bes2. bes4 | %2
bes c c c | bes2. bes4 | bes2 bes | %5
bes4 a bes bes | bes2 a f1
}
BBGZIxCIDMusicLHB = \relative c{ \BBGZIxCIDMusicGlobal \clef "bass"
    bes2 f'4 f | bes,2. bes4 | %2
ees c8 [bes] a4 a | bes2. aes'4 | %4
g2 ges | f4 ees d ees | f2 f, bes1
}
BBGZIxCIDMusicLH =  \partCombine #'(2 . 20)  \BBGZIxCIDMusicLHA \BBGZIxCIDMusicLHB
BBGZIxCIDMusicLyrics = \relative c''''{ \BBGZIxCIDMusicGlobal \clef "treble"
    \hideNotes \voiceFour c2 c4 c4 c2. c4 c4 c4 c4 c4 c2. c4 c2 c2 c4 c4 c4 c4 c2 c2 c1
}

BBGAZxAGAMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 2 = 68
    \time 4/4
    \key es \major
    
}
BBGAZxAGAMusicRHA = \relative c'{ \BBGAZxAGAMusicGlobal \clef "treble"
    g'2 ees4 g | bes c bes2 | g ees4 g | %3
\nbp f1 | g2 ees4 g | bes c bes c | %6
d2 c |  \nbp bes1 | f2 g4 aes | %9
c bes g2 | bes c4 c |  \nbp d1 | %12
ees2 bes4 g | f aes c aes | %14
f2 bes \pcAO \nbp ees,1 \he
}
BBGAZxAGAMusicRHB = \relative c'{ \BBGAZxAGAMusicGlobal \clef "treble"
    ees2 bes4 ees | g aes g2 | ees bes4 ees | %3
d1 | ees2 bes4 ees | g aes f e | %6
f2 f4 (ees) | d1 | d2 ees4 f | %9
aes g ees2 | f f4 f | f2 (aes) | %12
g g4 ees | ees ees ees ees | ees2 d ees1
}
BBGAZxAGAMusicRH =  \partCombine #'(2 . 20)  \BBGAZxAGAMusicRHA \BBGAZxAGAMusicRHB
BBGAZxAGAMusicLHA = \relative c{ \BBGAZxAGAMusicGlobal \clef "bass"
    bes'2 g4 bes | ees ees ees2 | bes g4 bes | %3
bes1 | bes2 g4 bes | ees ees d bes | %6
bes2 a | bes1 | bes2 bes4 d | %9
ees ees bes2 | bes a4 a | bes1 | %12
bes2 ees4 bes | c c c c | bes2 aes g1
}
BBGAZxAGAMusicLHB = \relative c{ \BBGAZxAGAMusicGlobal \clef "bass"
    ees2 ees4 ees | ees aes ees2 | %2
ees ees4 ees | bes1 | ees2 ees4 ees | %5
ees aes bes g | f2 f | bes,1 | %8
bes2 bes4 bes | ees ees ees2 | d c4 c | %11
bes1 | ees2 ees4 ees | aes, aes aes aes | %14
bes2 bes ees1
}
BBGAZxAGAMusicLH =  \partCombine #'(2 . 20)  \BBGAZxAGAMusicLHA \BBGAZxAGAMusicLHB
BBGAZxAGAMusicLyrics = \relative c''''{ \BBGAZxAGAMusicGlobal \clef "treble"
    \hideNotes \voiceFour c2 c4 c4 c4 c4 c2 c2 c4 c4 c1 c2 c4 c4 c4 c4 c4 c4 c2 c2 c1 c2 c4 c4 c4 c4 c2 c2 c4 c4 c1 c2 c4 c4 c4 c4 c4 c4 c2 c2 c1
}

BBGAAxAMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 92
    \time 4/4
    \key es \major
    
}
BBGAAxAMusicRHA = \relative c'{ \BBGAAxAMusicGlobal \clef "treble"
    g'4 g8. f16 \pcAO ees4 g8. aes16 | %1
bes2 g4. r8 | bes4 f8. g16 aes4 g8. f16 | %3
\nbp g2. r4 | g g8. g16 aes4 bes8. c16 | %5
bes2 g4 r | %6
bes f8. g16 aes4 g8. f16 \pcAO | %7
\nbp ees2. r4 \postFine | %8
c' c8. c16 ees4 d8. c16 | c2 bes4 r | %10
bes c8. bes16 aes4 bes8. aes16 | %11
\nbp g2. r4 | c c8. c16 ees4 d8. c16 | %13
c2 bes4. r8 | %14
bes4 f8. d'16 d8 [c] bes8. a16 \nbp bes2 (aes) \postDC \he
}
BBGAAxAMusicRHB = \relative c'{ \BBGAAxAMusicGlobal \clef "treble"
    ees4 ees8. ees16 ees4 ees8. f16 | %1
g2 ees4. r8 | d4 d8. ees16 f4 ees8. d16 | %3
ees2. r4 | %4
ees ees8. ees16 ees4 ees8. ees16 | %5
ees2 ees4 r | d d8. ees16 f4 ees8. d16 | %7
ees2. r4 | %8
ees ees8. ees16 ees4 ees8. ees16 | %9
ees2 ees4 r | d aes'8. g16 f4 g8. f16 | %11
ees2. r4 | %12
ees ees8. ees16 ees4 ees8. ees16 | %13
ees2 ees4. r8 | d4 d8. f16 f4 f8. ees16 d2 (f)
}
BBGAAxAMusicRH =  \partCombine #'(2 . 20)  \BBGAAxAMusicRHA \BBGAAxAMusicRHB
BBGAAxAMusicLHA = \relative c{ \BBGAAxAMusicGlobal \clef "bass"
    bes'4 bes8. aes16 g4 bes8. bes16 | %1
ees2 bes4. r8 | %2
bes4 bes8. bes16 bes4 bes8. bes16 | %3
bes2. r4 | bes bes8. bes16 aes4 g8. aes16 | %5
g2 bes4 r | %6
bes bes8. bes16 bes4 bes8. aes16 | %7
g2. r4 \pcAO | %8
aes \pcAO aes8. \pcAO aes16 c4 bes8. \pcAO aes16 | %9
aes2 g4 r | %10
f bes8. bes16 bes4 bes8. bes16 | %11
bes2. r4 \pcAO | %12
aes \pcAO aes8. \pcAO aes16 c4 bes8. \pcAO aes16 | %13
aes2 g4. r8 \pcAO | %14
f4 bes8. bes16 bes8 [ees] d8. c16 bes1
}
BBGAAxAMusicLHB = \relative c{ \BBGAAxAMusicGlobal \clef "bass"
    ees4 ees8. ees16 ees4 ees8. ees16 | %1
ees2 ees4. r8 | %2
bes4 bes8. bes16 bes4 bes8. bes16 | %3
ees2. r4 | ees des8. des16 c4 bes8. aes16 | %5
ees'2 ees4 r | %6
bes bes8. bes16 bes4 bes8. bes16 | %7
ees2. r4 | %8
aes aes8. aes16 aes4 aes8. aes16 | %9
ees2 ees4 r | %10
bes bes8. bes16 bes4 bes8. bes16 | %11
ees2. r4 | %12
aes aes8. aes16 aes4 aes8. aes16 | %13
ees2 ees4. r8 | f4 f8. f16 f4 f8. f16 bes,1
}
BBGAAxAMusicLH =  \partCombine #'(2 . 20)  \BBGAAxAMusicLHA \BBGAAxAMusicLHB
BBGAAxAMusicLyrics = \relative c''''{ \BBGAAxAMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c8. c16 c4 c8. c16 c2 c4.  s8 c4 c8. c16 c4 c8. c16 c2.  s4 c4 c8. c16 c4 c8. c16 c2 c4  s4 c4 c8. c16 c4 c8. c16 c2.  s4 c4 c8. c16 c4 c8. c16 c2 c4  s4 c4 c8. c16 c4 c8. c16 c2.  s4 c4 c8. c16 c4 c8. c16 c2 c4.  s8 c4 c8. c16 c8  s8 c8. c16 c2
}

BBGABxCIHMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 66
    \time 3/4
    \key es \major
    \partial 4
    
}
BBGABxCIHMusicRHA = \relative c'{ \BBGABxCIHMusicGlobal \clef "treble"
    \pcAO ees8 f |  \nbp g4 g g8 aes | %2
\nbp bes4 bes \lbp aes8 g | %3
\nbp f4. f8 bes aes | %4
\nbp g2 \pcAO \lbp ees8 f | %5
\nbp g4 g g8 aes | %6
\nbp bes4 bes \lbp aes8 g | %7
\nbp f4. bes8 aes f \pcAO | %8
\nbp ees2 \lbp bes'8 bes | %9
\nbp ees4. ees8 d c | %10
\nbp bes4 g \lbp bes8 bes | %11
\nbp c4. ees8 d c | %12
\nbp bes2 \pcAO \lbp ees,8 f | %13
\nbp g4 g g8 aes | %14
\nbp bes4 bes \lbp c8 bes | %15
\nbp f4. bes8 aes f \pcAO \nbp ees2 \he
}
BBGABxCIHMusicRHB = \relative c'{ \BBGABxCIHMusicGlobal \clef "treble"
    ees8 ees | ees4 ees ees8 f | g4 g f8 ees | %3
d4. d8 d f | ees2 ees8 ees | %5
ees4 ees ees8 f | g4 g f8 ees | %7
d4. d8 d d | ees2 g8 g | g4. g8 bes aes | %10
g4 ees g8 g | aes4. aes8 aes aes | %12
g2 ees8 ees | ees4 ees ees8 f | %14
g4 g aes8 g | d4. d8 d d ees2
}
BBGABxCIHMusicRH =  \partCombine #'(2 . 20)  \BBGABxCIHMusicRHA \BBGABxCIHMusicRHB
BBGABxCIHMusicLHA = \relative c{ \BBGABxCIHMusicGlobal \clef "bass"
    g'8 aes | bes4 bes bes8 bes | %2
ees4 ees bes8 bes | bes4. bes8 bes bes | %4
bes2 g8 aes | bes4 bes bes8 bes | %6
ees4 ees bes8 bes | bes4. f8 f aes | %8
g2 bes8 bes | bes4. bes8 bes ees | %10
ees4 bes ees8 ees | ees4. c8 d ees | %12
ees2 g,8 aes | bes4 bes bes8 bes | %14
ees4 ees ees8 ees \pcAO | %15
bes4. bes8 f aes g2
}
BBGABxCIHMusicLHB = \relative c{ \BBGABxCIHMusicGlobal \clef "bass"
    ees8 ees | ees4 ees ees8 ees | %2
ees4 ees ees8 ees | bes4. bes8 bes d | %4
ees2 ees8 ees | ees4 ees ees8 ees | %6
ees4 ees ees8 ees | bes4. bes8 bes bes | %8
ees2 ees8 ees | ees4. ees8 ees ees | %10
ees4 ees ees8 ees | aes4. aes8 aes aes | %12
ees2 ees8 ees | ees4 ees ees8 ees | %14
ees4 ees ees8 ees | bes'4. bes,8 bes bes ees2
}
BBGABxCIHMusicLH =  \partCombine #'(2 . 20)  \BBGABxCIHMusicLHA \BBGABxCIHMusicLHB
BBGABxCIHMusicLyrics = \relative c''''{ \BBGABxCIHMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8 c8 c4 c4 c8 c8 c4 c4 c8 c8 c4. c8 c8 c8 c2 c8 c8 c4 c4 c8 c8 c4 c4 c8 c8 c4. c8 c8 c8 c2 c8 c8 c4. c8 c8 c8 c4 c4 c8 c8 c4. c8 c8 c8 c2 c8 c8 c4 c4 c8 c8 c4 c4 c8 c8 c4. c8 c8 c8 c2
}

BBGACxDABMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 70
    \time 4/4
    \key es \major
    \partial 4.
    
}
BBGACxDABMusicRHA = \relative c'{ \BBGACxDABMusicGlobal \clef "treble"
    \pcAO bes8 ees g | c4 bes4. ees,8 d ees | %2
\nbp g4 f4. \pcAO \lbp bes,8 d f | %3
c'4 bes4. c8 bes aes | %4
\nbp g4.~g4 \pcAO \lbp bes,8 ees g | %5
c4 bes4. ees8 ees d | %6
d4 c4. \lbp c8 d ees | %7
ees4 bes4. aes8 g f \nbp ees4.~ees4 \he
}
BBGACxDABMusicRHB = \relative c'{ \BBGACxDABMusicGlobal \clef "treble"
    bes8 bes ees | g4 ees4. bes8 bes bes | %2
ees4 d4. bes8 bes d | d4 d4. d8 ees f | %4
ees4.~ees4 bes8 bes ees | %5
g4 g4. g8 g bes | bes4 aes4. f8 fis fis | %7
g4 g4. d8 d d bes4.~bes4
}
BBGACxDABMusicRH =  \partCombine #'(2 . 20)  \BBGACxDABMusicRHA \BBGACxDABMusicRHB
BBGACxDABMusicLHA = \relative c{ \BBGACxDABMusicGlobal \clef "bass"
    g'8 g bes | bes4 g4. g8 f g | %2
bes4 aes4. d,8 f bes | aes4 f4. f8 f bes | %4
bes4.~bes4 g8 g bes | %5
ees4 ees4. bes8 bes ees | %6
ees4 ees4. ees8 c c \pcAO | %7
bes4 ees4. c8 bes aes g4.~g4
}
BBGACxDABMusicLHB = \relative c{ \BBGACxDABMusicGlobal \clef "bass"
    ees8 ees ees | ees4 ees4. ees8 ees ees | %2
bes4 bes4. bes8 bes bes | %3
bes4 bes4. bes8 c d | %4
ees4.~ees4 ees8 ees ees | %5
ees4 ees4. ees8 ees g | %6
aes4 aes4. aes8 a a | %7
bes4 bes,4. bes8 bes bes ees4.~ees4
}
BBGACxDABMusicLH =  \partCombine #'(2 . 20)  \BBGACxDABMusicLHA \BBGACxDABMusicLHB
BBGACxDABMusicLyrics = \relative c''''{ \BBGACxDABMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8 c8 c8 c4 c4. c8 c8 c8 c4 c4. c8 c8 c8 c4 c4. c8 c8 c8 c4.  s4 c8 c8 c8 c4 c8  s4 c8 c8 c8 c4 c4  s8 c8 c8 c8 c4 c4. c8 c8 c8 c4.
}

BBGADxAEFMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 112
    \time 4/4
    \key g \major
    
}
BBGADxAEFMusicRHA = \relative c'{ \BBGADxAEFMusicGlobal \clef "treble"
    d2 d4 g | b2 g4 b | b (a) e fis | %3
\nbp g2 d4 \lbp d |  \nbp d2 g4 b | %5
d2 b4 b | b2 a4 g | %7
\nbp a2. \pcAO \lbp d,4 | %8
\nbp d2 d4 g | b2 g4 b | b (a) e fis | %11
\nbp g2 d4 \lbp g |  \nbp g2 fis4 e | %13
d2 g4 a | b2 a4 a | %15
\nbp g2. \cbp b4 \postCho | %16
\nbp d2 d4 e |  \nbp d2 b4 \lbp b | %18
\nbp b2 b4 c |  \nbp b2 a4 \lbp g | %20
\nbp g2 fis4 e |  \nbp d2 \set Score.tempoHideNote = ##t \tempo 4 = 56  \fpre g4 \fpost \set Score.tempoHideNote = ##t \tempo 4 = 112   \lbp g | %22
g (fis) e fis \nbp g1 \he
}
BBGADxAEFMusicRHB = \relative c'{ \BBGADxAEFMusicGlobal \clef "treble"
    b2 b4 d | g2 d4 d | d (c) c c | %3
b2 b4 b | b2 d4 g | g2 g4 g | g2 d4 cis | %7
d2. d4 | b2 b4 b | d2 b4 d | c2 c4 c | %11
b2 b4 b | e2 d4 c | b2 cis4 cis | %14
d2 fis4 fis | d2. g4 | g2 g4 g | %17
g2 g4 g | g2 g4 g | g2 fis4 e | e2 d4 c | %21
b2 d4 d | c2 c4 c b1
}
BBGADxAEFMusicRH =  \partCombine #'(2 . 20)  \BBGADxAEFMusicRHA \BBGADxAEFMusicRHB
BBGADxAEFMusicLHA = \relative c{ \BBGADxAEFMusicGlobal \clef "bass"
    \pcAp g'2 g4 \pcAu b | d2 b4 \pcAO g | %2
fis2 a4 a \pcAp | g2 g4 g | %4
g2 \pcAu b4 d | b2 d4 d | %6
d2 d4 a | fis2. fis4 | g2 g4 g | %9
g2 g4 g | fis2 a4 a | g2 g4 g | %12
g2 g4 g \pcAO | g2 g4 g | g2 c4 c | %15
b2. d4 | b2 b4 c | b2 d4 d | d2 d4 e | %19
d2 c4 b | c2 g4 g | g2 b4 b | a2 g4 a g1
}
BBGADxAEFMusicLHB = \relative c{ \BBGADxAEFMusicGlobal \clef "bass"
    g'2 g4 g | g2 g4 g | d2 d4 d | g2 g4 g | %4
g2 g4 g | g2 g4 g | g2 fis4 e | d2. d4 | %8
g,2 g4 g | g2 g4 g | d'2 d4 d | %11
g,2 g4 g | c2 c4 c | g'2 e4 e | d2 d4 d | %15
g2. g4 | g2 g4 g | g2 g4 g | g2 g4 g | %19
g2 d4 e | c2 c4 c | d2 \fpre d4 \fpostbelow d | d2 d4 d g,1
}
BBGADxAEFMusicLH =  \partCombine #'(2 . 20)  \BBGADxAEFMusicLHA \BBGADxAEFMusicLHB
BBGADxAEFMusicLyrics = \relative c''''{ \BBGADxAEFMusicGlobal \clef "treble"
    \hideNotes \voiceFour c2 c4 c4 c2 c4 c4 c4  s4 c4 c4 c2 c4 c4 c2 c4 c4 c2 c4 c4 c2 c4 c4 c2. c4 c2 c4 c4 c2 c4 c4 c4  s4 c4 c4 c2 c4 c4 c2 c4 c4 c2 c4 c4 c2 c4 c4 c2. c4 c2 c4 c4 c2 c4 c4 c2 c4 c4 c2 c4 c4 c2 c4 c4 c2 c4 c4 c2 c4 c4 c1
}

BBGAExDBMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 68
    \time 6/8
    \key c \major
    \partial 8
    
}
BBGAExDBMusicRHA = \relative c'{ \BBGAExDBMusicGlobal \clef "treble"
    g'8 |  \nbp e [g] c e4 c8 | %2
d [c] a c4 \lbp a8 | %3
\nbp g [e] \pcAO c g'4 e8 | %4
\nbp e4. (d4) \lbp f8 | %5
\nbp e [g] c e4 c8 | %6
d [c] a c4 \lbp a8 | %7
\nbp g [e] \pcAO c e4 d8 \pcAp | %8
\nbp c4.~c4 \cbp \pcAu g'8 \postCho | %9
\nbp g [d] e f4 b8 | %10
c [e,] f g4 \lbp g8 | %11
\nbp fis [g] a c4 fis,8 | %12
\nbp g4.~g4 \lbp f8 | %13
\nbp e [g] c e4 c8 | %14
d [c] a c4 \lbp a8 | %15
\nbp g [e] \pcAO c e4 d8 \pcAp \nbp c4.~c4 \pcAu \he
}
BBGAExDBMusicRHB = \relative c'{ \BBGAExDBMusicGlobal \clef "treble"
    e8 | c [e] e g4 e8 | f4 f8 f4 f8 | %3
e [c] c e4 c8 | c4. (b4) b8 | %5
c [e] e g4 g8 | f4 f8 f4 f8 | %7
e [c] c c4 b8 | c4.~c4 e8 | %9
d4 c8 b4 f'8 | e [c] d e4 e8 | %11
d4 d8 d4 c8 | b4.~b4 b8 | %13
c [e] e g4 e8 | f4 f8 f4 f8 | %15
e [c] c b4 b8 c4.~c4
}
BBGAExDBMusicRH =  \partCombine #'(2 . 20)  \BBGAExDBMusicRHA \BBGAExDBMusicRHB
BBGAExDBMusicLHA = \relative c{ \BBGAExDBMusicGlobal \clef "bass"
    g'8 | g4 g8 c4 g8 | a4 c8 a4 c8 | %3
c [g] e c'4 g8 | g4.~g4 g8 | %5
g4 g8 c4 c8 | a4 c8 a4 c8 | %7
c [g] e g4 f8 | e4.~e4 c'8 | %9
b4 c8 g4 g8 | g4 g8 c4 c8 | %11
a [b] c fis,4 a8 | g4.~g4 g8 | %13
g4 g8 c4 g8 | a4 c8 a4 c8 | %15
c [g] e g4 f8 e4.~e4
}
BBGAExDBMusicLHB = \relative c{ \BBGAExDBMusicGlobal \clef "bass"
    c8 | c4 c8 c4 c8 | f4 f8 f4 f8 | %3
c4 c8 c4 c8 | g4.~g4 g8 | c4 c8 c4 e8 | %6
f4 f8 f4 f,8 | g4 a8 g4 g8 | c4.~c4 c8 | %9
g'4 g8 g,4 g8 | c4 c8 c4 c8 | %11
d4 d8 d4 d8 | g,4.~g4 g8 | c4 c8 c4 c8 | %14
f4 f8 f4 f,8 | g4 g8 g4 g8 c4.~c4
}
BBGAExDBMusicLH =  \partCombine #'(2 . 20)  \BBGAExDBMusicLHA \BBGAExDBMusicLHB
BBGAExDBMusicLyrics = \relative c''''{ \BBGAExDBMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8 c8  s8 c8 c4 c8 c8  s8 c8 c4 c8 c8  s8 c8 c4 c8 c4.  s4 c8 c8  s8 c8 c4 c8 c8  s8 c8 c4 c8 c8  s8 c8 c4 c8 c4.  s4 c8 c8  s8 c8 c4 c8 c8  s8 c8 c4 c8 c8  s8 c8 c4 c8 c4.  s4 c8 c8  s8 c8 c4 c8 c8  s8 c8 c4 c8 c8  s8 c8 c4 c8 c4.
}

BBGAFxBFAMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 76
    \time 4/4
    \key as \major
    \partial 4
    \accidentalStyle modern
}
BBGAFxBFAMusicRHA = \relative c'{ \BBGAFxBFAMusicGlobal \clef "treble"
    c8. des16 |  \nbp ees4 des' c g8. aes16 | %2
bes4 bes f \lbp f8. aes16 | %3
\nbp g4 des8. ees16 g4 f | %4
\nbp ees2. \lbp c8. des16 | %5
\nbp ees4 des' c g8. aes16 | %6
bes4 bes f \lbp g8. f16 | %7
\nbp ees4 c'8. (des16) c4 bes | %8
\nbp aes2. \cbp aes8. \postCho aes16 | %9
\nbp g4 des'8. des16 des4 des | %10
\nbp des2. \lbp f,8. g16 | %11
\nbp ees4 c'8. c16 c4 c | %12
\nbp c2. \lbp c8. des16 | %13
\nbp ees4 ees ees c8. bes16 | %14
aes4 aes \set Score.tempoHideNote = ##t \tempo 4 = 38  \fpre aes \fpost \set Score.tempoHideNote = ##t \tempo 4 = 76   \lbp g8. f16 | %15
\nbp ees4 c'8. des16 c4 bes \nbp aes2. \he
}
BBGAFxBFAMusicRHB = \relative c'{ \BBGAFxBFAMusicGlobal \clef "treble"
    aes8. bes16 | c4 f ees des8. ees16 | %2
des4 des des d8. d16 | %3
des4 bes8. bes16 des4 des | %4
c2. aes8. bes16 | c4 f ees des8. ees16 | %6
des4 des des b8. b16 | %7
c4 ees8. (f16) ees4 des | c2. c8. c16 | %9
des4 ees8. f16 g4 fis | %10
g (f ees) des8. des16 | %11
c4 ees8. aes16 g4 f | %12
ees (f ees) ees8. ees16 | %13
aes4 aes aes ees8. ees16 | %14
ees4 ges f b,8. b16 | %15
c4 ees8. ees16 ees4 des c2.
}
BBGAFxBFAMusicRH =  \partCombine #'(2 . 20)  \BBGAFxBFAMusicRHA \BBGAFxBFAMusicRHB
BBGAFxBFAMusicLHA = \relative c{ \BBGAFxBFAMusicGlobal \clef "bass"
    ees8. ees16 | aes4 aes aes ees8. aes16 | %2
f4 f bes bes8. bes16 | %3
bes4 g8. g16 bes4 g | aes2. ees8. ees16 | %5
aes4 aes aes ees8. aes16 | %6
f4 f bes g8. aes16 | aes4 aes8. (aes16) aes4 g | %8
aes2. aes8. aes16 | bes4 g8. aes16 bes4 a | %10
bes (aes g) g8. g16 | %11
aes4 aes8. aes16 aes4 aes | %12
aes2. \pcAO aes8. bes16 | %13
c4 c c aes8. g16 | %14
aes4 ees' des g,8. aes16 | %15
aes4 aes8. bes16 aes4 g aes2.
}
BBGAFxBFAMusicLHB = \relative c{ \BBGAFxBFAMusicGlobal \clef "bass"
    aes8. aes16 | aes4 aes aes bes8. c16 | %2
des4 des des bes8. bes16 | %3
ees4 ees8. ees16 ees4 ees | %4
aes,2. aes8. aes16 | %5
aes4 aes aes bes8. c16 | %6
des4 des des d8. d16 | ees4 ees8. (ees16) ees4 ees | %8
aes,2. aes8. aes16 | %9
ees'4 ees8. ees16 ees4 ees | %10
ees2. ees8. ees16 | %11
aes,4 aes8. aes16 aes4 aes | %12
aes2. aes'8. aes16 | %13
aes4 aes aes aes,8. bes16 | %14
c4 c \fpre des \fpostbelow d8. d16 | %15
ees4 ees8. ees16 ees4 ees aes,2.
}
BBGAFxBFAMusicLH =  \partCombine #'(2 . 20)  \BBGAFxBFAMusicLHA \BBGAFxBFAMusicLHB
BBGAFxBFAMusicLyrics = \relative c''''{ \BBGAFxBFAMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8. c16 c4 c4 c4 c8. c16 c4 c4 c4 c8. c16 c4 c8. c16 c4 c4 c2. c8. c16 c4 c4 c4 c8. c16 c4 c4 c4 c8. c16 c4 c8. c16 c4 c4 c2. c8. c16 c4 c8. c16 c4 c4 c2. c8. c16 c4 c8. c16 c4 c4 c2. c8. c16 c4 c4 c4 c8. c16 c4 c4 c4 c8. c16 c4 c8. c16 c4 c4 c2.
}

BBGAGxCCDMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 86
    \time 4/4
    \key d \major
    
}
BBGAGxCCDMusicRHA = \relative c'{ \BBGAGxCCDMusicGlobal \clef "treble"
    a'4. fis8 b4 d | cis b a fis \pcAO | %2
d \pcAO d e fis | a b a2 | %4
a4. fis8 b4 d | cis b a a | a d d fis, a e \pcAO d2 \he
}
BBGAGxCCDMusicRHB = \relative c'{ \BBGAGxCCDMusicGlobal \clef "treble"
    d4. d8 d4 d | d d d d | d d cis d | %3
cis d cis2 | d4. d8 d4 fis | f f cis cis | %6
d d d d d cis d2
}
BBGAGxCCDMusicRH =  \partCombine #'(2 . 20)  \BBGAGxCCDMusicRHA \BBGAGxCCDMusicRHB
BBGAGxCCDMusicLHA = \relative c{ \BBGAGxCCDMusicGlobal \clef "bass"
    fis4. a8 g4 b | a g fis a | b a a a | %3
a gis a2 | fis4. a8 b4 a | gis gis a g | %6
fis g fis a e8 [fis] g4 fis2
}
BBGAGxCCDMusicLHB = \relative c{ \BBGAGxCCDMusicGlobal \clef "bass"
    d4. d8 d4 d | d d d d | g fis e d | %3
e e a,2 | d4. d8 b4 b | cis cis fis e | %6
d b a a a a d2
}
BBGAGxCCDMusicLH =  \partCombine #'(2 . 20)  \BBGAGxCCDMusicLHA \BBGAGxCCDMusicLHB
BBGAGxCCDMusicLyrics = \relative c''''{ \BBGAGxCCDMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4. c8 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c2 c4. c8 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c2
}

BBGAHxBIHMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 120
    \time 3/4
    \key g \major
    
}
BBGAHxBIHMusicRHA = \relative c'{ \BBGAHxBIHMusicGlobal \clef "treble"
    b'4 b a \pcAO | g2 \pcAO d4 | g2 a4 | %3
\nbp b2. \pcAO | d,4 g b | d2 c4 | %6
b (a) \pcAO g |  \nbp a2. | fis4 g a | %9
g2 g4 | b (c) d |  \nbp e2. | %12
g,4 b4. a8 \nbp g2. \he
}
BBGAHxBIHMusicRHB = \relative c'{ \BBGAHxBIHMusicGlobal \clef "treble"
    d4 d d8 [c] | b4. (c8) d4 | b2 d4 | %3
d2. | d4 d g | g (fis8) [e] fis4 | %6
d2 g4 | fis2. | d4 d c | b2 c4 | %10
d (g) f | e2. | d4 g4. fis8 d2.
}
BBGAHxBIHMusicRH =  \partCombine #'(2 . 20)  \BBGAHxBIHMusicRHA \BBGAHxBIHMusicRHB
BBGAHxBIHMusicLHA = \relative c{ \BBGAHxBIHMusicGlobal \clef "bass"
    g'4 g fis | g4. (a8) b [a] | g2 fis4 | %3
g2. | b4 b b | b a8 [g] a4 \pcAp | %6
g (a) \pcAu b | d2. | a4 b fis \pcAp | %9
g (d') \pcAu c | %10
\pcAp b (g) a8 [b] | c4 (g a) \pcAu| %12
b d4. c8 b2.
}
BBGAHxBIHMusicLHB = \relative c{ \BBGAHxBIHMusicGlobal \clef "bass"
    g4 b d | g2 g8 [fis] | e2 d4 | g,2. | %4
g'4 g e | d2 d4 | g (fis) e | d2. | %8
d4 d d | g (b) a | g8 [f] (e4) d | %11
c2. | d4 d4. d8 g2.
}
BBGAHxBIHMusicLH =  \partCombine #'(2 . 20)  \BBGAHxBIHMusicLHA \BBGAHxBIHMusicLHB
BBGAHxBIHMusicLyrics = \relative c''''{ \BBGAHxBIHMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c4 c4 c2 c4 c2 c4 c2. c4 c4 c4 c2 c4 c2 c4 c2. c4 c4 c4 c2 c4 c2 c4 c2. c4 c4. c8 c2.
}

BBGAIxCGIMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 74
    \time 3/4
    \key f \major
    \partial 4
    
}
BBGAIxCGIMusicRHA = \relative c'{ \BBGAIxCGIMusicGlobal \clef "treble"
    a'4 |  \nbp a8 g g4 bes | %2
bes8 a a4 \lbp c | %3
\nbp c4. a8 \pcAO f a | %4
\nbp g2 \lbp a4 |  \nbp bes8 c d4. d8 | %6
d c c4 \lbp c | %7
\nbp c4. c8 bes g \pcAO \nbp f2 \he
}
BBGAIxCGIMusicRHB = \relative c'{ \BBGAIxCGIMusicGlobal \clef "treble"
    f4 | f8 e e4 g | f8 f f4 a | a4. f8 f f | %4
e2 f4 | f8 f f4. f8 | f f f4 f | %7
e4. e8 e e f2
}
BBGAIxCGIMusicRH =  \partCombine #'(2 . 20)  \BBGAIxCGIMusicRHA \BBGAIxCGIMusicRHB
BBGAIxCGIMusicLHA = \relative c{ \BBGAIxCGIMusicGlobal \clef "bass"
    c'4 | c8 c c4 c | d8 c c4 f | %3
f4. c8 a b | c2 c4 | bes8 a bes4. bes8 | %6
bes a a4 a | g4. g8 g bes a2
}
BBGAIxCGIMusicLHB = \relative c{ \BBGAIxCGIMusicGlobal \clef "bass"
    f4 | c8 c c4 e | f8 f f4 f | f4. f8 f d | %4
c2 f4 | d8 c bes4. bes8 | f' f f4 f | %7
c4. c8 c c f2
}
BBGAIxCGIMusicLH =  \partCombine #'(2 . 20)  \BBGAIxCGIMusicLHA \BBGAIxCGIMusicLHB
BBGAIxCGIMusicLyrics = \relative c''''{ \BBGAIxCGIMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c8 c8 c4 c4 c8 c8 c4 c4 c4. c8 c8 c8 c2 c4 c8 c8 c4. c8 c8 c8 c4 c4 c4. c8 c8 c8 c2
}

BBGBZxDZCMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 62
    \time 3/4
    \key des \major
    \partial 4.
    
}
BBGBZxDZCMusicRHA = \relative c'{ \BBGBZxDZCMusicGlobal \clef "treble"
    \pcAO aes8 des f | aes4. f8 des f | %2
\nbp ees4. \pcAO \lbp aes,8 c ees | %3
aes4. ges8 f ees | %4
\nbp des4. \pcAO \lbp aes8 des f | %5
aes4. \pcAO f8 ges aes | %6
\nbp bes4. \lbp ges8 f ees | %7
aes4. \pcAO f8 ees \pcAO aes, | %8
\nbp des4. \cbp \pcAO des8 \postCho \pcAO ees \pcAO des | %9
des'4. bes8 ges bes | %10
\nbp aes4. \lbp f8 bes aes | %11
ges4. \pcAO ees8 c' bes | %12
\nbp aes4. \pcAO \lbp des,8 \pcAO ees \pcAO des | %13
des'4. bes8 ges bes | %14
\nbp aes4. \lbp f8 f e | %15
ees4. \pcAO aes,8 f' ees \nbp des4. \he
}
BBGBZxDZCMusicRHB = \relative c'{ \BBGBZxDZCMusicGlobal \clef "treble"
    aes8 aes des | f4. des8 aes des | %2
c4. aes8 aes c | c4. c8 c c | %4
aes4. aes8 aes des | f4. f8 ees f | %6
ges4. ees8 d bes | f'4. f8 c aes | %8
aes4. des8 ees des | bes'4. ges8 des ges | %10
f4. des8 ges f | ees4. ees8 aes ges | %12
f4. des8 ees des | bes'4. ges8 des ges | %14
f4. des8 des des | c4. aes8 c c aes4.
}
BBGBZxDZCMusicRH =  \partCombine #'(2 . 20)  \BBGBZxDZCMusicRHA \BBGBZxDZCMusicRHB
BBGBZxDZCMusicLHA = \relative c{ \BBGBZxDZCMusicGlobal \clef "bass"
    f8 f aes | des4. aes8 f aes | %2
aes4. ees8 ees aes | aes4. bes8 aes ges | %4
f4. f8 f aes | des4. des8 c b | %6
des4. bes8 aes \pcAO ges | %7
des'4. des8 ges, ges | f4. f8 b b | %9
bes4. des8 bes des | des4. aes8 des des | %11
c4. c8 ees c | des4. f,8 b b | %13
bes4. des8 bes des | des4. aes8 aes g | %15
ges4. ges8 aes ges f4.
}
BBGBZxDZCMusicLHB = \relative c{ \BBGBZxDZCMusicGlobal \clef "bass"
    des8 des des | des4. des8 des des | %2
aes4. aes8 aes aes | aes4. aes8 aes aes | %4
des4. des8 des des | des4. des8 des des | %6
ges4. ees8 f ges | aes4. aes8 aes, aes | %8
des4. des8 des des | ges4. ges8 ges ges | %10
des4. des8 des des | aes'4. aes8 aes aes | %12
des,4. des8 des des | ges4. ges8 ges ges | %14
des4. des8 des des | aes4. aes8 aes aes des4.
}
BBGBZxDZCMusicLH =  \partCombine #'(2 . 20)  \BBGBZxDZCMusicLHA \BBGBZxDZCMusicLHB
BBGBZxDZCMusicLyrics = \relative c''''{ \BBGBZxDZCMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4.
}

BBGBAxABBMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 92
    \time 12/8
    \key bes \major
    
}
BBGBAxABBMusicRHA = \relative c'{ \BBGBAxABBMusicGlobal \clef "treble"
    bes'4. bes8 a g g4. f | ees ees8 g f d2. | %2
bes'4. bes8 a g g4. f | %3
e e8 f g f2. \pcAO | %4
a4. \pcAO a8 bes c c4. f, | %5
f f8 bes c d2. | d4. d8 c a bes4. g f f8 f f f2. \he
}
BBGBAxABBMusicRHB = \relative c'{ \BBGBAxABBMusicGlobal \clef "treble"
    d4. d8 f ees ees4. d | c c8 ees d bes2. | %2
d4. d8 f ees ees4. d | c c8 c c c2. | %4
a'4. a8 d, ees ees4. ees | d d8 d ees f2. | %6
ges4. ges8 ges ges g4 d8 ees4. d c8 d ees d2.
}
BBGBAxABBMusicRH =  \partCombine #'(2 . 20)  \BBGBAxABBMusicRHA \BBGBAxABBMusicRHB
BBGBAxABBMusicLHA = \relative c{ \BBGBAxABBMusicGlobal \clef "bass"
    bes'4. bes8 bes bes bes4. bes | %1
a a8 a a f2. | %2
bes4. bes8 bes bes bes4. bes | %3
g g8 a bes a2. | c4. c8 bes a a4. c | %5
bes bes8 f f bes2. | a4. a8 a c bes4. bes bes a8 bes c bes2.
}
BBGBAxABBMusicLHB = \relative c{ \BBGBAxABBMusicGlobal \clef "bass"
    bes4. bes8 bes bes bes4. bes | %1
f' f8 f f bes,2. | %2
bes4. bes8 bes bes bes4. bes | %3
c c8 c c f2. | f4. f8 f f f4. f | %5
bes, bes8 bes bes bes2. | %6
d4. d8 d d g4. ees f f8 f f bes,2.
}
BBGBAxABBMusicLH =  \partCombine #'(2 . 20)  \BBGBAxABBMusicLHA \BBGBAxABBMusicLHB
BBGBAxABBMusicLyrics = \relative c''''{ \BBGBAxABBMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4. c8 c8 c8 c4. c4. c4. c8 c8 c8 c2. c4. c8 c8 c8 c4. c4. c4. c8 c8 c8 c2. c4. c8 c8 c8 c4. c4. c4. c8 c8 c8 c2. c4. c8 c8 c8 c4. c4. c4. c8 c8 c8 c2.
}

BBGBBxADZMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 94
    \time 4/4
    \key as \major
    \partial 4
    
}
BBGBBxADZMusicRHA = \relative c'{ \BBGBBxADZMusicGlobal \clef "treble"
    \pcAO ees4 |  \nbp c' bes aes \pcAO ees | %2
\nbp f aes2 \lbp f4 | %3
\nbp ees aes aes c | %4
\nbp bes2. bes8 [c] | %5
\nbp des4 c bes aes | g aes \set Score.tempoHideNote = ##t \tempo 4 = 47  \fpre bes \fpost \set Score.tempoHideNote = ##t \tempo 4 = 94    \lbp c | %7
\nbp bes c8 [aes] g4 f \pcAO | %8
\nbp ees2. \cbp \pcAO ees4 \postCho | %9
\nbp bes' bes des g, | %10
\nbp bes aes2 \pcAO \lbp aes4 | %11
\nbp c c ees \pcAO aes, | %12
\nbp c (bes2) \lbp bes8. c16 | %13
\nbp des4 c bes aes | g f \set Score.tempoHideNote = ##t \tempo 4 = 47  \fpre ees \fpost \set Score.tempoHideNote = ##t \tempo 4 = 94    \lbp des' | %15
\nbp c bes f g \nbp aes2. \he
}
BBGBBxADZMusicRHB = \relative c'{ \BBGBBxADZMusicGlobal \clef "treble"
    ees4 | ees ees ees ees | des f2 des4 | %3
c ees ees aes | g2. g8 [aes] | %5
bes4 aes g ees | ees d ees ees | %7
ees ees ees d | ees2. ees4 | ees g g ees | %10
ees ees2 aes4 | aes aes aes aes | %12
aes (g2) g8. aes16 | bes4 aes g ees | %14
des des des ees | ees f des des c2.
}
BBGBBxADZMusicRH =  \partCombine #'(2 . 20)  \BBGBBxADZMusicRHA \BBGBBxADZMusicRHB
BBGBBxADZMusicLHA = \relative c{ \BBGBBxADZMusicGlobal \clef "bass"
    c'4 | c des c aes | aes aes2 aes4 | %3
aes c c ees | ees2. ees4 | ees ees des c | %6
bes bes bes \pcAO aes | %7
bes c \pcAO bes aes | g2. g4 | %9
g bes bes bes | des c2 c4 | ees ees c c | %12
ees2. ees8. ees16 | ees4 ees des c | %14
bes aes bes bes \pcAO | aes bes bes bes aes2.
}
BBGBBxADZMusicLHB = \relative c{ \BBGBBxADZMusicGlobal \clef "bass"
    aes'4 | aes aes aes c, | des des2 des4 | %3
aes aes aes' aes | ees2. ees4 | %5
ees ees ees ees | ees f \fpre g \fpostbelow aes | %7
g aes bes bes, | ees2. ees4 | %9
ees ees ees ees | aes aes2 aes4 | %11
aes aes aes aes | ees2. ees8. ees16 | %13
ees4 ees ees ees | ees f \fpre g \fpostbelow g | %15
aes des, bes ees aes,2.
}
BBGBBxADZMusicLH =  \partCombine #'(2 . 20)  \BBGBBxADZMusicLHA \BBGBBxADZMusicLHB
BBGBBxADZMusicLyrics = \relative c''''{ \BBGBBxADZMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c4 c4 c4 c4 c4 c2 c4 c4 c4 c4 c4 c2. c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c2. c4 c4 c4 c4 c4 c4 c2 c4 c4 c4 c4 c4 c4  s2 c8. c16 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c2.
}

BBGBCxBAZMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 98
    \time 4/4
    \key as \major
    
}
BBGBCxBAZMusicRHA = \relative c'{ \BBGBCxBAZMusicGlobal \clef "treble"
    aes'4 aes8 aes g4 g |  \nbp f2 ees | %2
f4 f8 f ees4 des |  \nbp c2. r4 | %4
aes' aes8 aes aes4 g | %5
f2 ees4 r8 \lbp ees |  \nbp f4 f8 f g4 g | %7
\nbp aes2. r4 | aes c8 bes aes4 aes | %9
\nbp aes2 g | aes4 aes8 aes c4 bes | %11
\nbp bes2. r4 | aes aes8 aes g4 g | %13
f2 ees4 r8 \lbp ees |  \nbp f4 f8 f g4 g \nbp aes2. \he
}
BBGBCxBAZMusicRHB = \relative c'{ \BBGBCxBAZMusicGlobal \clef "treble"
    c4 c8 c des4 des | des2 c | %2
des4 des8 des c4 bes | g2. r4 | %4
c c8 c c4 bes | aes (bes) c r8 c | %6
des4 des8 des ees4 des | c2. r4 | %8
f aes8 g f4 f | f2 e | f4 f8 ees d4 d | %11
ees2 (des4) r | c c8 c des4 des | %13
des2 c4 r8 c | des4 des8 des ees4 des c2.
}
BBGBCxBAZMusicRH =  \partCombine #'(2 . 20)  \BBGBCxBAZMusicRHA \BBGBCxBAZMusicRHB
BBGBCxBAZMusicLHA = \relative c{ \BBGBCxBAZMusicGlobal \clef "bass"
    ees4 ees8 ees ees4 ees | g2 aes | %2
aes4 aes8 aes aes4 f | e2. r4 | %4
f f8 f f4 e | f (g) aes r8 aes | %6
aes4 bes8 bes bes4 bes | aes2. r4 | %8
c c8 c c4 c | c2 c | c4 c8 c aes4 aes | %11
g2. r4 | ees ees8 ees ees4 ees | %13
g2 aes4 r8 aes | aes4 bes8 bes bes4 bes aes2.
}
BBGBCxBAZMusicLHB = \relative c{ \BBGBCxBAZMusicGlobal \clef "bass"
    aes4 aes8 aes bes4 bes | ees2 aes, | %2
des4 des8 des aes4 bes | c2. r4 | %4
f, f8 f c'4 c | des2 aes4 r8 aes | %6
des4 bes8 bes ees4 ees | aes,2. r4 | %8
f' f8 f f4 f | c2 c | f4 f8 f bes,4 bes | %11
ees2. r4 | aes, aes8 aes bes4 bes | %13
ees2 aes,4 r8 aes | %14
des4 bes8 bes ees4 ees aes,2.
}
BBGBCxBAZMusicLH =  \partCombine #'(2 . 20)  \BBGBCxBAZMusicLHA \BBGBCxBAZMusicLHB
BBGBCxBAZMusicLyrics = \relative c''''{ \BBGBCxBAZMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c8 c8 c4 c4 c2 c2 c4 c8 c8 c4 c4 c2.  s4 c4 c8 c8 c4 c4 c2 c4  s8 c8 c4 c8 c8 c4 c4 c2.  s4 c4 c8 c8 c4 c4 c2 c2 c4 c8 c8 c4 c4 c2.  s4 c4 c8 c8 c4 c4 c2 c4  s8 c8 c4 c8 c8 c4 c4 c2.
}

BBGBDxCZHAltMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 2 = 120
    \time 3/2
    \key f \major
    \partial 2
    
}
BBGBDxCZHAltMusicRHA = \relative c'{ \BBGBDxCZHAltMusicGlobal \clef "treble"
    \pcAO c2 |  \nbp a'1 bes4. (g8) | %2
c1 bes4 (g) | f1 e2 | %4
\nbp f1 \lbp a2 |  \nbp a (g) g | %6
b1 b2 |  \nbp c1 \lbp a2 | %8
\nbp a (bes) a | g1 a2 | %10
bes (c) bes |  \nbp a1 \lbp a2 | %12
\nbp g (bes) d | f,1 e2 \nbp f1 \he
}
BBGBDxCZHAltMusicRHB = \relative c'{ \BBGBDxCZHAltMusicGlobal \clef "treble"
    c2 | f1 g4. (e8) | a2 (f) d | c1 c2 | %4
c1 f2 | f1 f2 | d (g) f | e1 f2 | %8
f (g) f | e1 f2 | g (a) g | f1 f2 | %12
d1 d2 | c1 c2 c1
}
BBGBDxCZHAltMusicRH =  \partCombine #'(2 . 20)  \BBGBDxCZHAltMusicRHA \BBGBDxCZHAltMusicRHB
BBGBDxCZHAltMusicLHA = \relative c{ \BBGBDxCZHAltMusicGlobal \clef "bass"
    a'2 | c1 bes2 | a1 bes2 | a1 g2 | %4
a1 c2 | b1 b2 | d1 d2 | c1 c2 | %8
c (g) a4 (bes) | c1 c2 | c1 c2 | %11
c1 c2 | bes1 bes2 | a1 g2 a1
}
BBGBDxCZHAltMusicLHB = \relative c{ \BBGBDxCZHAltMusicGlobal \clef "bass"
    f2 | f1 f2 | f1 bes,2 | c1 c2 | %4
f1 f4 (e) | d1 d2 | g1 g,2 | c1 f2 | %8
c1 c2 | c (bes') a | g (c,) d4 (e) | %11
f1 f2 | bes,1 bes2 | c1 c2 f1
}
BBGBDxCZHAltMusicLH =  \partCombine #'(2 . 20)  \BBGBDxCZHAltMusicLHA \BBGBDxCZHAltMusicLHB
BBGBDxCZHAltMusicLyrics = \relative c''''{ \BBGBDxCZHAltMusicGlobal \clef "treble"
    \hideNotes \voiceFour c2 c1 c4.  s8 c1 c4  s4 c1 c2 c1 c2 c2  s2 c2 c1 c2 c1 c2 c2  s2 c2 c1 c2 c2  s2 c2 c1 c2 c2  s2 c2 c1 c2 c1
}

BBGBExAAFMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 124
    \time 4/4
    \partial 4
    
}
BBGBExAAFMusicRHA = \relative c'{ \BBGBExAAFMusicGlobal \clef "treble"
    g'4 |  \nbp g2 f4 e \pcAO | e2 d4 e | %3
f (a) g f \pcAO |  \nbp e2. \lbp g4 | %5
\nbp c2 b4 a | a2 g4 fis | %7
\nbp g2. \lbp g4 |  \nbp c2 c4 b | %9
a2 \pcAO a4 a | d2 d4 c | %11
\nbp b2 \lbp a4 \pcAO g | %12
\nbp c2 c4 c | c2 b4. c8 | %14
\nbp \set Score.tempoHideNote = ##t \tempo 4 = 62  \fpre c2 \fpost \set Score.tempoHideNote = ##t \tempo 4 = 124   \cbp \pcAO g4 \postCho \pcAO g | %15
g1~ \nbp | g2 \lbp \pcAO g4 \pcAO g | g1~ | \nbp  %18
g2 \lbp e4 g |  \nbp a2 a4 c | %20
c2 b4. c8 c2. \he
}
BBGBExAAFMusicRHB = \relative c'{ \BBGBExAAFMusicGlobal \clef "treble"
    e4 | e2 d4 c | e2 b4 c | c2 b4 d | %4
e2. e4 | e2 d4 c | e2 d4 d | d2. f4 | %8
e2 e4 g | f2 a4 g | f2 f4 fis | g2 g4 g | %12
g2 c,4 d | e2 d4. e8 | e2 g4 g | %15
r2 e4 e | d2 g4 g | r2 d4 f | e2 c4 e | %19
f2 f4 f | e2 d4. e8 e2.
}
BBGBExAAFMusicRH =  \partCombine #'(2 . 20)  \BBGBExAAFMusicRHA \BBGBExAAFMusicRHB
BBGBExAAFMusicLHA = \relative c{ \BBGBExAAFMusicGlobal \clef "bass"
    g'4 | g2 g4 g | c2 g4 g | a (f) g b | %4
c2. g4 | a2 gis4 a | c2 b4 a | b2. b4 | %8
c2 c4 c | c2 c4 cis | d2 d4 d | d2 c4 b | %12
c2 g4 a \pcAO | g2 g4. g8 | g2 r | %15
r g4 c | b2 r1 b4 d | c2 g4 c | %19
c2 c4 a \pcAO | g2 g4. g8 g2.
}
BBGBExAAFMusicLHB = \relative c{ \BBGBExAAFMusicGlobal \clef "bass"
    c4 | c2 c4 c8 [e] | g2 f4 e | %3
d2 g,4 g | c2. c4 | a2 b4 c | c2 d4 d | %7
g,2. g'4 | c,2 c4 e | f2 f4 e | d2 d4 d | %11
g2 g4 g8 [f] | e2 e4 f | g2 g,4. c8 | %14
\fpre c2 \fpostbelow r | r c4 e | g2 r1 g,4 g | c2 c4 c | %19
f2 f4 f | g2 g,4. c8 c2.
}
BBGBExAAFMusicLH =  \partCombine #'(2 . 20)  \BBGBExAAFMusicLHA \BBGBExAAFMusicLHB
BBGBExAAFMusicLyrics = \relative c''''{ \BBGBExAAFMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c2 c4 c4 c2 c4 c4 c2 c4 c4 c2. c4 c2 c4 c4 c2 c4 c4 c2. c4 c2 c4 c4 c2 c4 c4 c2 c4 c4 c2 c4 c4 c2 c4 c4 c2 c4. c8 c2 c4 c4 c1. c4 c4 c1. c4 c4 c2 c4 c4 c2 c4. c8 c2
}

BBGBFxAADMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 100
    \time 4/4
    \key g \major
    \partial 4
    
}
BBGBFxAADMusicRHA = \relative c'{ \BBGBFxAADMusicGlobal \clef "treble"
    d4 |  \nbp d4. e8 d4 g | %2
b4. b8 a4 \lbp g |  \nbp d' d b g | %4
\nbp a2. \lbp b4 |  \nbp d4. d8 b4 g | %6
g4. g8 e4 \lbp d |  \nbp d4. g8 b4 a | %8
\nbp g2. r4 \cbp | %9
d'4. \postCho b8 b [a] g4 | %10
g4. e8 e4 d \pcAO | d g b \pcAO g | %12
\nbp a2. r4 | d4. b8 b [a] g4 | %14
g4. e8 e4 d | d4. g8 b4 a \nbp g2. \he
}
BBGBFxAADMusicRHB = \relative c'{ \BBGBFxAADMusicGlobal \clef "treble"
    b4 | b4. c8 b4 d | g4. g8 d4 d | %3
g g g d | fis2. g4 | g4. g8 g4 d | %6
e4. e8 c4 b | b4. d8 d4 d | d2. r4 | %9
g4. g8 d4 d | e4. c8 c4 b | d d g g | %12
fis2. r4 | g4. g8 d4 d | e4. c8 c4 b | %15
b4. d8 g4 fis d2.
}
BBGBFxAADMusicRH =  \partCombine #'(2 . 20)  \BBGBFxAADMusicRHA \BBGBFxAADMusicRHB
BBGBFxAADMusicLHA = \relative c{ \BBGBFxAADMusicGlobal \clef "bass"
    \pcAO g'4 \pcAO | %1
g4. \pcAO g8 \pcAO g4 b | d4. d8 c4 b | %3
b b d d | d2. \pcAO g,4 | b4. b8 d4 d | %6
c4. c8 g4 g | g4. b8 \pcAO d,4 c' | %8
b2. r4 | b4. d8 d [c] b4 | c4. g8 g4 g | %11
b b d b | d2. r4 | b4. d8 d [c] b4 | %14
c4. g8 g4 g | g4. b8 d4 c b2.
}
BBGBFxAADMusicLHB = \relative c{ \BBGBFxAADMusicGlobal \clef "bass"
    g'4 | g4. g8 g4 g | g4. g8 g4 g | %3
g, g g b | d2. g4 | g4. g8 g4 b, | %6
c4. c8 c4 g | d'4. d8 d4 d | g2. r4 | %9
g4. g8 g4 g | c,4. c8 c4 g | g' g g g | %12
d2. r4 | g4. g8 g4 g | c,4. c8 c4 g | %15
d'4. d8 d4 d g2.
}
BBGBFxAADMusicLH =  \partCombine #'(2 . 20)  \BBGBFxAADMusicLHA \BBGBFxAADMusicLHB
BBGBFxAADMusicLyrics = \relative c''''{ \BBGBFxAADMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c4. c8 c4 c4 c4. c8 c4 c4 c4 c4 c4 c4 c2. c4 c4. c8 c4 c4 c4. c8 c4 c4 c4. c8 c4 c4 c2.  s4 c4. c8 c8  s8 c4 c4. c8 c4 c4 c4 c4 c4 c4 c2.  s4 c4. c8 c8  s8 c4 c4. c8 c4 c4 c4. c8 c4 c4 c2.
}

BBGBGxADEMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 82
    \time 3/4
    \key d \major
    \partial 4
    
}
BBGBGxADEMusicRHA = \relative c'{ \BBGBGxADEMusicGlobal \clef "treble"
    a'4 |  \nbp a4. gis8 b a | %2
\nbp fis2 \pcAO \lbp d4 | %3
\nbp e4. fis8 g a |  \nbp fis2 \lbp a4 | %5
\nbp a4. a8 g fis | b cis d4 \lbp b | %7
\nbp a4. \pcAO d,8 e fis \pcAO | %8
\nbp d2 r4 \cbp | %9
d'4. \postCho d8 e cis |  \nbp d2 r4 | %11
b4. d8 cis b |  \nbp a2 r4 | %13
a4. a8 g fis | b cis d4 \lbp b | %15
\nbp a4. \pcAO d,8 e fis \pcAO \nbp d2 \he
}
BBGBGxADEMusicRHB = \relative c'{ \BBGBGxADEMusicGlobal \clef "treble"
    d4 | d4. d8 d d | d2 d4 | %3
cis4. d8 e cis | d2 d4 | d4. d8 cis d | %6
d g fis4 d | d4. d8 cis cis | d2 r4 | %9
fis4. fis8 g e | fis2 r4 | d4. d8 d d | %12
d2 r4 | d4. d8 cis d | d g fis4 d | %15
d4. d8 cis cis d2
}
BBGBGxADEMusicRH =  \partCombine #'(2 . 20)  \BBGBGxADEMusicRHA \BBGBGxADEMusicRHB
BBGBGxADEMusicLHA = \relative c{ \BBGBGxADEMusicGlobal \clef "bass"
    fis4 | fis4. eis8 g fis | a2 fis4 | %3
a4. a8 a a | a2 fis4 | %5
fis4. a8 a  d | b a a4 g | %7
fis4. fis8 g a | fis2 r4 | a4. a8 b a | %10
a2 r4 \pcAO | g4. b8 a \pcAO g | %12
fis2 r4 | fis4. a8 a d | %14
b a a4 g | fis4. fis8 g a fis2
}
BBGBGxADEMusicLHB = \relative c{ \BBGBGxADEMusicGlobal \clef "bass"
    d4 | d4. d8 d d | d2 d4 | a4. a8 a a | %4
d2 d4 | d4. fis8 e d | g e d4 g, | %7
a4. a8 a a | d2 r4 | d4. d8 g, a | %10
d2 r4 | g4. g8 g g | d2 r4 | %13
d4. fis8 e d | g e d4 g, | a4. a8 a a d2
}
BBGBGxADEMusicLH =  \partCombine #'(2 . 20)  \BBGBGxADEMusicLHA \BBGBGxADEMusicLHB
BBGBGxADEMusicLyrics = \relative c''''{ \BBGBGxADEMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c4. c8 c8 c8 c2 c4 c4. c8 c8 c8 c2 c4 c4. c8 c8 c8 c8 c8 c4 c4 c4. c8 c8 c8 c2  s4 c4. c8 c8 c8 c2  s4 c4. c8 c8 c8 c2  s4 c4. c8 c8 c8 c8 c8 c4 c4 c4. c8 c8 c8 c2
}

BBGBHxCFZAfrMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 74
    \time 6/8
    \key f \major
    
}
BBGBHxCFZAfrMusicRHA = \relative c'{ \BBGBHxCFZAfrMusicGlobal \clef "treble"
    a'4 bes8 a4 g8 | %1
f4 d8 d4 r8 \pcAO | c4 f8 f4 a8 | %3
a4. (g4) r8 | a4 bes8 a4 g8 | %5
f4 d8 d4 r8 | c4 f8 f4 e8 \pcAp | %7
g4. (f4) \pcAu r8 \cbp | %8
a4 \postCho c8 c4. | bes4 d8 d4. | %10
c4 d8 c4 a8 |  \nbp a4. g | %12
a4 bes8 a4 g8 | f4 d8 d4 r8 | %14
c4 f8 f4 e8 g4. \pcAO f4 r8 \he
}
BBGBHxCFZAfrMusicRHB = \relative c'{ \BBGBHxCFZAfrMusicGlobal \clef "treble"
    f4 f8 f4 e8 | d4 bes8 bes4 r8 | %2
c4 c8 c4 f8 | f4. (e4) r8 | %4
f4 f8 f4 e8 | d4 bes8 bes4 r8 | %6
a4 c8 c4 c8 | e4. (f4) r8 | f4 f8 f4. | %9
f4 f8 f4. | a4 gis8 a4 f8 | f4. e | %12
f4 f8 f4 e8 | d4 bes8 bes4 r8 | %14
a4 c8 c4 c8 e4. f4 r8
}
BBGBHxCFZAfrMusicRH =  \partCombine #'(2 . 20)  \BBGBHxCFZAfrMusicRHA \BBGBHxCFZAfrMusicRHB
BBGBHxCFZAfrMusicLHA = \relative c{ \BBGBHxCFZAfrMusicGlobal \clef "bass"
    c'4 d8 c4 bes8 | a4 bes8 f4 r8 | %2
a4 a8 a4 c8 | c4. (c4) r8 | %4
c4 d8 c4 bes8 | a4 bes8 f4 r8 | %6
f4 a8 a4 g8 | bes4. a4 r8 | c4 a8 a4. | %9
bes4 bes8 bes4. | c4 b8 c4 c8 | c4. c | %12
c4 d8 c4 bes8 | a4 bes8 f4 r8 | %14
f4 a8 a4 g8 bes4. a4 r8
}
BBGBHxCFZAfrMusicLHB = \relative c{ \BBGBHxCFZAfrMusicGlobal \clef "bass"
    f4 f8 f4 cis8 | d4 bes8 bes4 r8 | %2
f'4 f8 f4 f8 | c4. (c4) r8 | %4
f4 f8 f4 cis8 | d4 bes8 bes4 r8 | %6
c4 c8 c4 c8 | c4. f4 r8 | f4 f8 f4. | %9
d4 bes8 bes4. | f'4 f8 f4 f8 | c4. c | %12
f4 f8 f4 cis8 | d4 bes8 bes4 r8 | %14
c4 c8 c4 c8 c4. f4 r8
}
BBGBHxCFZAfrMusicLH =  \partCombine #'(2 . 20)  \BBGBHxCFZAfrMusicLHA \BBGBHxCFZAfrMusicLHB
BBGBHxCFZAfrMusicLyrics = \relative c''''{ \BBGBHxCFZAfrMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c8 c4 c8 c4 c8 c4  s8 c4 c8 c4 c8 c4. c4  s8 c4 c8 c4 c8 c4 c8 c4  s8 c4 c8 c4 c8 c4. c4  s8 c4 c8 c4. c4 c8 c4. c4 c8 c4 c8 c4. c4. c4 c8 c4 c8 c4 c8 c4  s8 c4 c8 c4 c8 c4. c4
}

BBGBIxBFCMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 2 = 80
    \time 4/4
    \key es \major
    
}
BBGBIxBFCMusicRHA = \relative c'{ \BBGBIxBFCMusicGlobal \clef "treble"
    g'2 ges4 g \pcAO | ees2 g | %2
f4 (g) aes (bes) |  \nbp g1 | %4
bes2 a4 bes | g2 g4 (bes) | %6
bes (aes) aes (g) |  \nbp f1 | %8
g2 f4 f | ees2 f | g4 (aes) bes (c) | %11
\nbp f,1 | g2 bes4 bes | aes2. f4 | %14
ees2 d \nbp ees1 \he
}
BBGBIxBFCMusicRHB = \relative c'{ \BBGBIxBFCMusicGlobal \clef "treble"
    ees2 ees4 ees | ees2 ees | %2
d4 (ees) f (d) | ees1 | %4
ees2 ees4 ees | ees2 ees4 (g) | %6
g (f) f (ees) | d1 | ees2 d4 d | %9
c2 d | ees4 (d) ees2 | ees (d) | %12
ees ees4 ees | ees2. c4 | bes2 bes bes1
}
BBGBIxBFCMusicRH =  \partCombine #'(2 . 20)  \BBGBIxBFCMusicRHA \BBGBIxBFCMusicRHB
BBGBIxBFCMusicLHA = \relative c{ \BBGBIxBFCMusicGlobal \clef "bass"
    bes'2 a4 bes | g2 bes \pcAO | bes bes | %3
bes1 | g2 ges4 g | bes2 bes | bes bes | %7
bes1 | bes2 bes4 aes | g2 bes | %10
bes4 (aes) \pcAp g (c) \pcAu \pcAO | %11
bes1 | bes2 des4 des | c2. aes4 | %14
g2 aes4 (f) g1
}
BBGBIxBFCMusicLHB = \relative c{ \BBGBIxBFCMusicGlobal \clef "bass"
    ees2 ees4 ees | ees2 ees | bes' bes, | %3
ees1 | ees2 ees4 ees | ees2 ees | d ees | %7
bes1 | ees2 bes4 b | c2 bes | %10
ees4 (f) g (aes) | bes1 | ees,2 g4 g | %13
aes2. aes,4 | bes2 bes ees1
}
BBGBIxBFCMusicLH =  \partCombine #'(2 . 20)  \BBGBIxBFCMusicLHA \BBGBIxBFCMusicLHB
BBGBIxBFCMusicLyrics = \relative c''''{ \BBGBIxBFCMusicGlobal \clef "treble"
    \hideNotes \voiceFour c2 c4 c4 c2 c2 c4  s4 c4  s4 c1 c2 c4 c4 c2 c4  s4 c4  s4 c4  s4 c1 c2 c4 c4 c2 c2 c4  s4 c4  s4 c1 c2 c4 c4 c2. c4 c2 c2 c1
}

BBGCZxINoChoMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 84
    \time 4/4
    \key f \major
    
}
BBGCZxINoChoMusicRHA = \relative c'{ \BBGCZxINoChoMusicGlobal \clef "treble"
    c'4. c8 d c a f | f2 d4 r \pcAO | %2
c4. f8 a f c' a |  \nbp g2. r4 | %4
c4. c8 d c a f | f2 d4 r | %6
c4. f8 a g f e |  \nbp f2. r4  | %8
g4.  fis8 g a bes g | a2 c4 r | %10
d4. d8 c a bes a |  \nbp g2. r4 | %12
c4. c8 d c a f | f2 d4 r | %14
c4. f8 a g f e \nbp f2. \he
}
BBGCZxINoChoMusicRHB = \relative c'{ \BBGCZxINoChoMusicGlobal \clef "treble"
    f4. f8 f f f c | d2 bes4 r | %2
c4. c8 c c f f | e2. r4 | f4. f8 f f f c | %5
d2 bes4 r | a4. c8 f c c c | c2. r4 | %8
e4. dis8 e f g e | f2 f4 r | %10
f4. f8 f f g f | e2. r4 | f4. f8 f f f c | %13
d2 bes4 r | a4. c8 f c c c c2.
}
BBGCZxINoChoMusicRH =  \partCombine #'(2 . 20)  \BBGCZxINoChoMusicRHA \BBGCZxINoChoMusicRHB
BBGCZxINoChoMusicLHA = \relative c{ \BBGCZxINoChoMusicGlobal \clef "bass"
    a'4. a8 bes a c a | bes2 f4 r | %2
a4. a8 a a a c \pcAO | c2. r4 | %4
a4. a8 bes a c a | bes2 f4 r | %6
f4. a8 c bes a g | a2. r4 | %8
c4. c8 c c c c | c2 a4 r \pcAO | %10
bes4. \pcAO bes8 c c c c | c2. r4 | %12
a4. a8 bes a c a | bes2 f4 r | %14
f4. a8 c bes a g a2.
}
BBGCZxINoChoMusicLHB = \relative c{ \BBGCZxINoChoMusicGlobal \clef "bass"
    f4. f8 f f f f | bes,2 bes4 r | %2
f'4. f8 f f f a | c2. r4 | %4
f,4. f8 f f f f | bes,2 bes4 r | %6
c4. c8 c c c c | f2. r4 | c4. c8 c c c c | %9
f2 f4 r | bes4. bes8 a f e f | c2. r4 | %12
f4. f8 f f f f | bes,2 bes4 r | %14
c4. c8 c c c c f2.
}
BBGCZxINoChoMusicLH =  \partCombine #'(2 . 20)  \BBGCZxINoChoMusicLHA \BBGCZxINoChoMusicLHB
BBGCZxINoChoMusicLyrics = \relative c''''{ \BBGCZxINoChoMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4. c8 c8 c8 c8 c8 c2 c4  s4 c4. c8 c8 c8 c8 c8 c2.  s4 c4. c8 c8 c8 c8 c8 c2 c4  s4 c4. c8 c8 c8 c8 c8 c2.  s4 c4. c8 c8 c8 c8 c8 c2 c4  s4 c4. c8 c8 c8 c8 c8 c2.  s4 c4. c8 c8 c8 c8 c8 c2 c4  s4 c4. c8 c8 c8 c8 c8 c2.
}

BBGCAxBZFMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 2 = 64
    \time 4/4
    \key des \major
    
}
BBGCAxBZFMusicRHA = \relative c'{ \BBGCAxBZFMusicGlobal \clef "treble"
    aes'2 f4 bes | aes2 f \pcAO | %2
des4 ees f aes8 [ges] |  \nbp f2 ees | %4
aes bes4 des | c2. aes4 | c bes aes g | %7
\nbp aes1 | des2 c4 bes | aes2 des | %10
ees4 des c bes |  \nbp des2 aes | %12
f ges4 bes | aes f \pcAO des ges | %14
f2 ees \pcAO \nbp des1 \he
}
BBGCAxBZFMusicRHB = \relative c'{ \BBGCAxBZFMusicGlobal \clef "treble"
    f2 des4 des | des2 des | des4 c des ees | %3
des2 c | des des4 des | ees2. des4 | %6
ees des c des | c1 | f2 aes4 ges | f2 f | %10
ges4 f ees des | des2 des | des des4 des | %13
des des des des | des2 c des1
}
BBGCAxBZFMusicRH =  \partCombine #'(2 . 20)  \BBGCAxBZFMusicRHA \BBGCAxBZFMusicRHB
BBGCAxBZFMusicLHA = \relative c{ \BBGCAxBZFMusicGlobal \clef "bass"
    des'2 aes4 ges | f2 aes | f4 aes aes aes | %3
aes2 aes | aes \pcAO ges4 bes \pcAO | %5
aes2.  aes4 | aes g aes bes | %7
aes1 | aes2 des4 des | des2 aes | %10
aes4 aes aes bes | ges2 f | aes bes4 ges | %13
f aes f bes | aes2 ges f1
}
BBGCAxBZFMusicLHB = \relative c{ \BBGCAxBZFMusicGlobal \clef "bass"
    des2 des4 des | des2 des | %2
des4 aes des c | des2 aes | f' ges4 ges | %5
aes2 (ges4) f | ees ees ees ees | aes,1 | %8
des2 des4 des | des2 des | %10
c4 des aes ges | bes2 des | des des4 des | %13
des des des ges, | aes2 aes des1
}
BBGCAxBZFMusicLH =  \partCombine #'(2 . 20)  \BBGCAxBZFMusicLHA \BBGCAxBZFMusicLHB
BBGCAxBZFMusicLyrics = \relative c''''{ \BBGCAxBZFMusicGlobal \clef "treble"
    \hideNotes \voiceFour c2 c4 c4 c2 c2 c4 c4 c4 c8  s8 c2 c2 c2 c4 c4 c2. c4 c4 c4 c4 c4 c1 c2 c4 c4 c2 c2 c4 c4 c4 c4 c2 c2 c2 c4 c4 c4 c4 c4 c4 c2 c2 c1
}

BBGCBxCAIMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 68
    \time 4/4
    \key c \major
    \partial 4.
    
}
BBGCBxCAIMusicRHA = \relative c'{ \BBGCBxCAIMusicGlobal \clef "treble"
    g'8 a g | e4. g8 c b d c | %2
\nbp d,4.~d4 \lbp e8 f g | %3
b4. a8 d, e f g | %4
\nbp g4.~g4 \lbp g8 a g | %5
e4.~e4 c'8 d c | \nbp  c2~c8 \lbp c b a | %7
g a b c c4 b | %8
\nbp c~c4. \cbp \pcAO g8 \postCho \pcAO g \pcAO g | %9
d'4. d8 e d d c | %10
\nbp g2~g8 \pcAO \lbp c \pcAO c \pcAO c | %11
c4. c8 c a b c | %12
\nbp d4.~d4 \pcAO \lbp g,8 \pcAO g \pcAO g | %13
e'4.~e4 c8 d c | %14
\nbp c4.~c4 \lbp c8 b a | %15
g a b c c4 b \nbp c2~c8 \he
}
BBGCBxCAIMusicRHB = \relative c'{ \BBGCBxCAIMusicGlobal \clef "treble"
    e8 f e | c4. e8 g g g g | %2
c,4.~c4 c8 c c | f4. f8 b, b d f | %4
e4.~e4 e8 f e | c4.~c4 e8 g g | %6
a2~a8 c, dis dis | e dis d e f4 f | %8
e~e4. g8 g g | f4. f8 g f e e | %10
e2~e8 c' c c | a4. g8 fis fis fis fis | %12
f4.~f4 g8 g g | g4.~g4 e8 g ais | %14
a4.~a4 c,8 dis dis | e dis d e f4 f e2~e8
}
BBGCBxCAIMusicRH =  \partCombine #'(2 . 20)  \BBGCBxCAIMusicRHA \BBGCBxCAIMusicRHB
BBGCBxCAIMusicLHA = \relative c{ \BBGCBxCAIMusicGlobal \clef "bass"
    c'8 c c | g4. c8 c c c c | %2
a4.~a4 a8 a a \pcAO | %3
g4. \pcAO g8 g g a b | c4.~c4 c8 c c | %5
g4.~g4 c8 c c | c2~c8 a a c | %7
c c g g a4 g | %8
g~g4. \pcAp g8 g g \pcAu | %9
b4. b8 b b g g | %10
c2~c8 \pcAp c c c \pcAu | %11
e4. e8 d d d d | %12
b4.~b4 \pcAp g8 g g \pcAu | %13
c4.~c4 c8 c c | c4.~c4 a8 a c | %15
c c g g a4 g g2~g8
}
BBGCBxCAIMusicLHB = \relative c{ \BBGCBxCAIMusicGlobal \clef "bass"
    c8 c c | c4. c8 e e e e | %2
f4.~f4 f8 d d | g4. g8 g, g g g | %4
c4.~c4 c8 c c | c4.~c4 c8 e e | %6
f2~f8 f fis fis | g fis f e d4 g, | %8
c~c4. g'8 g g | g4. g8 g g c, c | %10
c2~c8 c' c c | a4. a8 a c b a | %12
g4.~g4 g8 g g | c,4.~c4 c8 e e | %14
f4.~f4 f8 fis fis | g fis f e d4 g, c2~c8
}
BBGCBxCAIMusicLH =  \partCombine #'(2 . 20)  \BBGCBxCAIMusicLHA \BBGCBxCAIMusicLHB
BBGCBxCAIMusicLyrics = \relative c''''{ \BBGCBxCAIMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8 c8 c8 c4. c8 c8 c8 c8 c8 c4.  s4 c8 c8 c8 c4. c8 c8 c8 c8 c8 c4.  s4 c8 c8 c8 c4.  s4 c8 c8 c8 c8  s2 c8 c8 c8 c8 c8 c8 c8 c4 c4 c4  s4. c8 c8 c8 c4. c8 c8 c8 c8 c8 c2  s8 c8 c8 c8 c4. c8 c8 c8 c8 c8 c4.  s4 c8 c8 c8 c4.  s4 c8 c8 c8 c4.  s4 c8 c8 c8 c8 c8 c8 c8 c4 c4 c2
}

BBGCCxAIIMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 120
    \time 3/4
    \key bes \major
    \accidentalStyle Score.modern
}
BBGCCxAIIMusicRHA = \relative c'{ \BBGCCxAIIMusicGlobal \clef "treble"
    f4 f ees | d (f) bes | %2
bes4. (c8) \pcAO a4 | %3
\nbp bes2 \lbp d4 |  \nbp c2 c4 | %5
d2 c8 [bes] | a2 g4 \pcAO |  \nbp f2. | %8
bes4 bes f | g4. (a8) bes4 | %10
ees4. (d8) c [bes] | %11
\nbp bes4 (a) \lbp g \pcAO | %12
\nbp f2 ees4 | d (f) bes | %14
bes4. (c8) a4 \nbp bes2. \he
}
BBGCCxAIIMusicRHB = \relative c'{ \BBGCCxAIIMusicGlobal \clef "treble"
    d4 bes a | bes (d) bes | d (ees) c | %3
d2 f4 | f2 f4 | f2 f4 | f2 e4 | f2. | %8
d4 f d | ees4. (f8) f4 | %10
g4. (f8) ees [d] | d4 (c) c | %12
f2 bes,4 | bes2 d4 | ees2 c4 d2.
}
BBGCCxAIIMusicRH =  \partCombine #'(2 . 20)  \BBGCCxAIIMusicRHA \BBGCCxAIIMusicRHB
BBGCCxAIIMusicLHA = \relative c{ \BBGCCxAIIMusicGlobal \clef "bass"
    f4 f f | f2 f4 | bes (g) \pcAO f | %3
f2 \pcAO bes4 | c2 a4 | bes2 a8 [bes] | %6
c2 bes4 | a2. | bes4 bes bes | %9
bes4. (c8) bes4 | g2 g4 \pcAO | f2 a4 | %12
bes2 bes4 | bes2 f4 | g2 \pcAO f4 f2.
}
BBGCCxAIIMusicLHB = \relative c{ \BBGCCxAIIMusicGlobal \clef "bass"
    bes4 d c | bes2 d4 | g (ees) f | %3
bes,2 bes'4 | a2 f4 | bes,2 c8 [d] | %6
c2 c4 | f2. | bes,4 d bes | ees2 d4 | %10
c4. (d8) ees [e] | f2 ees4 | d2 g4 | %13
f (d) bes | ees (c) f bes,2.
}
BBGCCxAIIMusicLH =  \partCombine #'(2 . 20)  \BBGCCxAIIMusicLHA \BBGCCxAIIMusicLHB
BBGCCxAIIMusicLyrics = \relative c''''{ \BBGCCxAIIMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c4 c4 c4  s4 c4 c4.  s8 c4 c2 c4 c2 c4 c2 c8  s8 c2 c4 c2. c4 c4 c4 c4.  s8 c4 c4.  s8 c8  s8 c4  s4 c4 c2 c4 c4  s4 c4 c4.  s8 c4 c2.
}

BBGCDxEGMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 2 = 86
    \time 9/4
    \key f \major
    \partial 4*3
    
}
BBGCDxEGMusicRHA = \relative c'{ \BBGCDxEGMusicGlobal \clef "treble"
    a'4 g a | bes2. a f4 e f | %2
\nbp g1. \lbp g4 ges g | a2. g g4 f e | %4
\nbp f1. \lbp a4 g a | bes2. a c4 b c | %6
\nbp d1. \lbp d4 e d | c2. a g4 f g \nbp f1. \he
}
BBGCDxEGMusicRHB = \relative c'{ \BBGCDxEGMusicGlobal \clef "treble"
    f4 f f | f2. f c4 c c | e1. e4 e e | %3
f2. e c4 c c | c1. f4 f f | %5
f2. f ees4 d ees | f1. f4 f f | %7
f2. f e4 c c c1.
}
BBGCDxEGMusicRH =  \partCombine #'(2 . 20)  \BBGCDxEGMusicRHA \BBGCDxEGMusicRHB
BBGCDxEGMusicLHA = \relative c{ \BBGCDxEGMusicGlobal \clef "bass"
    c'4 bes c | d2. c a4 g a | %2
bes1. bes4 a bes | c2. bes bes4 a g | %4
a1. c4 bes c | d2. c a4 a a | %6
bes1. bes4 c bes | a2. c bes4 a bes a1.
}
BBGCDxEGMusicLHB = \relative c{ \BBGCDxEGMusicGlobal \clef "bass"
    f4 f f | f2. f c4 c c | c1. c4 c c | %3
c2. c c4 c c | f1. f4 f f | f2. f f4 f f | %6
bes,1. bes4 bes bes | c2. c c4 c c f1.
}
BBGCDxEGMusicLH =  \partCombine #'(2 . 20)  \BBGCDxEGMusicLHA \BBGCDxEGMusicLHB
BBGCDxEGMusicLyrics = \relative c''''{ \BBGCDxEGMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c4 c4 c2. c2. c4 c4 c4 c1. c4 c4 c4 c2. c2. c4 c4 c4 c1. c4 c4 c4 c2. c2. c4 c4 c4 c1. c4 c4 c4 c2. c2. c4 c4 c4 c1.
}

BBGCExAIDMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 94
    \time 4/4
    \key es \major
    
}
BBGCExAIDMusicRHA = \relative c'{ \BBGCExAIDMusicGlobal \clef "treble"
    g'4 bes c bes | bes4. aes8 g2 | %2
ees'4 d c bes | g \pcAO ees f2 | %4
g4 bes c bes | bes4. aes8 g2 | %6
g4 aes g f | g4. f8 \pcAO ees2  | %8
ees4  aes g aes | des c bes2 | c4 c d ees | %11
aes, g f2 | g4 bes c bes | bes4. aes8 g2 | %14
g4 aes g f g4. f8 \pcAO ees2 \he
}
BBGCExAIDMusicRHB = \relative c'{ \BBGCExAIDMusicGlobal \clef "treble"
    ees4 ees c ees | ees (d8) d ees2 | %2
ees4 ees ees d | ees ees d2 | %4
ees4 ees ees8 [aes] g4 | %5
f (ees8) ees d2 | ees4 ees ees ees | %7
ees4. d8 ees2 | c4 ees ees ees | %9
ees ees g2 | ees4 ees aes g | f ees d2 | %12
ees4 ees ees8 [aes] g4 | %13
f (ees8) ees d2 | ees4 ees ees ees ees4. d8 ees2
}
BBGCExAIDMusicRH =  \partCombine #'(2 . 20)  \BBGCExAIDMusicRHA \BBGCExAIDMusicRHB
BBGCExAIDMusicLHA = \relative c{ \BBGCExAIDMusicGlobal \clef "bass"
    bes'4 bes ees bes | c (bes8) bes bes2 | %2
bes4 bes \pcAO aes aes | bes a bes2 | %4
bes4 g aes8 [c] ees4 | d (c8) c b2 | %6
c4 aes bes c | bes4. aes8 g2 | %8
aes4 c bes c | bes c ees2 | %10
c4 bes bes bes | bes bes bes2 | %12
bes4 g aes8 [c] ees4 | d (c8) c b2 | %14
c4 aes bes c bes4. aes8 g2
}
BBGCExAIDMusicLHB = \relative c{ \BBGCExAIDMusicGlobal \clef "bass"
    ees4 g aes g | f (bes,8) bes ees2 | %2
g4 g aes f | ees c bes2 | %4
ees4 ees ees ees | f4. f8 g2 | %6
c,4 c bes aes | bes4. bes8 ees2 | %8
ees4 ees ees aes | g aes ees2 | %10
aes4 g f ees | d ees bes2 | %12
ees4 ees ees ees | f4. f8 g2 | %14
c,4 c bes aes bes4. bes8 ees2
}
BBGCExAIDMusicLH =  \partCombine #'(2 . 20)  \BBGCExAIDMusicLHA \BBGCExAIDMusicLHB
BBGCExAIDMusicLyrics = \relative c''''{ \BBGCExAIDMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c4 c4 c4 c4. c8 c2 c4 c4 c4 c4 c4 c4 c2 c4 c4 c4 c4 c4. c8 c2 c4 c4 c4 c4 c4. c8 c2 c4 c4 c4 c4 c4 c4 c2 c4 c4 c4 c4 c4 c4 c2 c4 c4 c4 c4 c4. c8 c2 c4 c4 c4 c4 c4. c8 c2
}

BBGCFxGAMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 68
    \time 3/4
    \key a \major
    \partial 4
    
}
BBGCFxGAMusicRHA = \relative c'{ \BBGCFxGAMusicGlobal \clef "treble"
    e8 e |  \nbp e4. e8 e \pcAO e | %2
\nbp fis2 \lbp fis8 fis | %3
\nbp e4. e8 a a |  \nbp b2 \lbp a8 b | %5
\nbp cis4. cis8 d cis | %6
\nbp cis4 (b) \lbp gis8 a | %7
\nbp b4. b8 cis b | %8
\nbp b4 (a) \cbp a8 \postCho a | %9
\nbp a4. a8 a \pcAO e | %10
\nbp fis2 \lbp a8 b | %11
\nbp cis4. cis8 b b \nbp a2 \he
}
BBGCFxGAMusicRHB = \relative c'{ \BBGCFxGAMusicGlobal \clef "treble"
    cis8 cis | cis4. cis8 cis e | d2 d8 d | %3
cis4. cis8 cis cis | d2 cis8 d | %5
e4. e8 fis e | e2 e8 cis | e4. e8 e e | %8
d4 (cis) cis8 cis | cis4. cis8 e e | %10
d2 fis8 f | e4. e8 e d cis2
}
BBGCFxGAMusicRH =  \partCombine #'(2 . 20)  \BBGCFxGAMusicRHA \BBGCFxGAMusicRHB
BBGCFxGAMusicLHA = \relative c{ \BBGCFxGAMusicGlobal \clef "bass"
    a'8 a | a4. a8 a a | a2 a8 a | %3
a4. a8 a a | gis2 e8 e | a4. a8 a a | %6
a4 (gis) b8 a | gis4. gis8 a gis | %8
a2 e8 e | a4. a8 a a | a2 a8 a | %11
a4. a8 gis gis a2
}
BBGCFxGAMusicLHB = \relative c{ \BBGCFxGAMusicGlobal \clef "bass"
    a8 a | a4. a8 cis cis | d2 d8 d | %3
e4. e8 fis fis | e2 a,8 a | a4. a8 a a | %6
e'2 e8 e | e4. e8 e e | a,2 a8 a | %9
a4. a8 cis cis | d2 d8 d | e4. e8 e e a,2
}
BBGCFxGAMusicLH =  \partCombine #'(2 . 20)  \BBGCFxGAMusicLHA \BBGCFxGAMusicLHB
BBGCFxGAMusicLyrics = \relative c''''{ \BBGCFxGAMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8 c8 c4. c8 c8 c8 c2 c8 c8 c4. c8 c8 c8 c2 c8 c8 c4. c8 c8 c8 c4  s4 c8 c8 c4. c8 c8 c8 c4  s4 c8 c8 c4. c8 c8 c8 c2 c8 c8 c4. c8 c8 c8 c2
}

BBGCGxCEHMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 62
    \time 3/4
    \key bes \major
    \partial 4.
    
}
BBGCGxCEHMusicRHA = \relative c'{ \BBGCGxCEHMusicGlobal \clef "treble"
    d8 ees e | f4. d'8 d8. c16 | %2
\nbp bes4. \lbp f8 d f | a4. a8 c8. g16 | %4
\nbp g4 ( \set Score.tempoHideNote = ##t \tempo 4 = 31  \fpre f8) \fpost \set Score.tempoHideNote = ##t \tempo 4 = 62   \lbp d ees e | %5
f4. d'8 d8. c16 | %6
\nbp bes4. \lbp bes8 bes bes | %7
bes4 r8 d, d8. c16 \pcAO | %8
\nbp bes4. \cbp bes'8 \postCho a8. g16 | %9
f4. d8 f8. \pcAO d16 | %10
\nbp f4. \lbp a8 g8. f16 | %11
a4. g8 f8. g16 \pcAO | %12
\nbp d4. \lbp bes'8 a8. g16 | %13
f4. \pcAO d8 f8. ges16 | %14
\nbp g4. \lbp bes8 bes bes | %15
\set Score.tempoHideNote = ##t \tempo 4 = 31  \fpre f'4. \fpost \set Score.tempoHideNote = ##t \tempo 4 = 62   d8 d8. c16 \nbp bes4. \he
}
BBGCGxCEHMusicRHB = \relative c'{ \BBGCGxCEHMusicGlobal \clef "treble"
    bes8 c cis | d4. f8 f8. ees16 | %2
d4. d8 bes d | ees4. ees8 ees8. ees16 | %4
ees4 (d8) bes c des | d4. f8 f8. ees16 | %6
d4. d8 des des | d4 r8 bes a8. a16 | %8
bes4. d8 d8. d16 | d4. bes8 d8. d16 | %10
ees4. ees8 ees8. ees16 | %11
ees4. ees8 ees8. ees16 | d4. d8 d8. d16 | %13
d4. d8 d8. d16 | ees4. g8 f ees | %15
f4. f8 f8. ees16 d4.
}
BBGCGxCEHMusicRH =  \partCombine #'(2 . 20)  \BBGCGxCEHMusicRHA \BBGCGxCEHMusicRHB
BBGCGxCEHMusicLHA = \relative c{ \BBGCGxCEHMusicGlobal \clef "bass"
    f8 f f | bes4. bes8 a8. a16 | %2
bes4. bes8 f bes | c4. c8 a8. a16 | %4
bes4 (bes8) f8 f g | f4. bes8 a8. a16 | %6
bes4. bes8 bes bes | bes4 r8 f f8. ees16 | %8
d4. f8 f8. f16 | bes4. f8 bes8. bes16 | %10
a4. c8 bes8. a16 | c4. c8 a8. a16 | %12
bes4. f8 f8. f16 | bes4. f8 bes8. bes16 | %14
bes4. ees8 d c | bes4. bes8 a8. a16 f4.
}
BBGCGxCEHMusicLHB = \relative c{ \BBGCGxCEHMusicGlobal \clef "bass"
    bes8 bes bes | bes4. bes8 f'8. f16 | %2
bes,4. bes8 bes bes | f'4. f8 f8. f16 | %4
bes,4 (\fpre bes8) \fpostbelow bes8 bes bes | bes4. bes8 f'8. f16 | %6
g4. g8 ges ges | f4 r8 f, f8. f16 | %8
bes4. bes8 bes8. bes16 | %9
bes4. bes8 bes8. bes16 | c4. f8 f8. f16 | %11
f4. f8 f8. f16 | bes,4. bes8 bes8. bes16 | %13
bes4. bes8 bes8. bes16 | %14
ees4. bes'8 bes bes | \fpre f4. \fpostbelow f8 f8. f16 bes,4.
}
BBGCGxCEHMusicLH =  \partCombine #'(2 . 20)  \BBGCGxCEHMusicLHA \BBGCGxCEHMusicLHB
BBGCGxCEHMusicLyrics = \relative c''''{ \BBGCGxCEHMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8 c8 c8 c4. c8 c8. c16 c4. c8 c8 c8 c4. c8 c8. c16 c4  s8 c8 c8 c8 c4. c8 c8. c16 c4. c8 c8 c8 c4  s8 c8 c8. c16 c4. c8 c8. c16 c4. c8 c8. c16 c4. c8 c8. c16 c4. c8 c8. c16 c4. c8 c8. c16 c4. c8 c8. c16 c4. c8 c8 c8 c4. c8 c8. c16 c4.
}

BBGCHxAZAMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 64
    \time 2/4
    \key des \major
    
}
BBGCHxAZAMusicRHA = \relative c'{ \BBGCHxAZAMusicGlobal \clef "treble"
    aes'4 aes8 aes | aes4. aes8 | %2
des des c bes |  \nbp aes4 f | f ges8 f | %5
bes4. aes8 | des, des ees8. f16 | %7
\nbp ees2 | ees4 ges8 f | bes4. aes8 | %10
des des des des |  \nbp des4 c | %12
c des8 bes | aes4. \pcAO des,8 | %14
ges f f8. ees16 \pcAO \nbp des2 \he
}
BBGCHxAZAMusicRHB = \relative c'{ \BBGCHxAZAMusicGlobal \clef "treble"
    f4 ees8 ges | f4. f8 | ges bes aes ges | %3
f4 des | des des8 des | des4. des8 | %6
bes bes bes8. des16 | c2 | c4 c8 des | %9
des4. f8 | f f g g | aes4 aes | %12
ges f8 ges | des4. des8 | %14
des des c8. c16 des2
}
BBGCHxAZAMusicRH =  \partCombine #'(2 . 20)  \BBGCHxAZAMusicRHA \BBGCHxAZAMusicRHB
BBGCHxAZAMusicLHA = \relative c{ \BBGCHxAZAMusicGlobal \clef "bass"
    aes'4 ges8 c | des4. des8 | %2
des des des des | des4 aes | %4
ces bes8 aes \pcAO | ges4. aes8 | %6
f f g8. g16 | aes2 | aes4 aes8 aes | %9
bes4. des8 | des des ees ees | f4 ees | %12
ees des8 des | aes4. bes8 | %14
bes bes aes8. ges16 f2
}
BBGCHxAZAMusicLHB = \relative c{ \BBGCHxAZAMusicGlobal \clef "bass"
    des4 des8 des | des4. ces'8 | %2
bes ges ges ges | des4 des | %4
des des8 des | ges4. f8 | %6
bes, bes ees8. ees16 | aes,2 | %8
aes4 aes8 des | ges4. f8 | %10
bes bes bes bes | aes4 aes | %12
aes bes8 ges | f4. bes,8 | %14
ees ees aes,8. aes16 des2
}
BBGCHxAZAMusicLH =  \partCombine #'(2 . 20)  \BBGCHxAZAMusicLHA \BBGCHxAZAMusicLHB
BBGCHxAZAMusicLyrics = \relative c''''{ \BBGCHxAZAMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c8 c8 c4. c8 c8 c8 c8 c8 c4 c4 c4 c8 c8 c4. c8 c8 c8 c8. c16 c2 c4 c8 c8 c4. c8 c8 c8 c8 c8 c4 c4 c4 c8 c8 c4. c8 c8 c8 c8. c16 c2
}

BBGCIxCDGMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 80
    \time 4/4
    \key c \major
    \partial 4
    
}
BBGCIxCDGMusicRHA = \relative c'{ \BBGCIxCDGMusicGlobal \clef "treble"
    g'4 |  \nbp e4. f8 g e a a | %2
\nbp g4 (c2) \lbp c4 | %3
\nbp b4. a8 g  d g d | %4
\nbp e2. \lbp e4 | %5
\nbp f4. f8 \pcAO e d g a | %6
\nbp b2. \lbp b4 | %7
\nbp c4. b8 a \pcAO e fis a | %8
\nbp g2. \cbp g4 \postCho | %9
\nbp e'4. d8 c  e, d e | %10
\nbp f2. \lbp f4 | %11
\nbp d'4. c8 b f e f | %12
\nbp g2. \lbp g4 | %13
\nbp e4. f8 g e d \pcAO c | %14
\nbp a'4 (c2) \lbp a4 | %15
\nbp g4. a8 b g e' d \nbp c2. \he
}
BBGCIxCDGMusicRHB = \relative c'{ \BBGCIxCDGMusicGlobal \clef "treble"
    e4 | c4. d8 e c f f | e2. e4 | %3
f4. f8 d b d b | c2. c4 | %5
b4. b8 e b c fis | g2. g4 | %7
g4. g8 e e d c | b2. f'4 | %9
g4. f8 e c b c | b2. d4 | f4. f8 f d c b | %12
c2. e4 | c4. d8 e c b c | f2. f4 | %15
f4. f8 f f f f e2.
}
BBGCIxCDGMusicRH =  \partCombine #'(2 . 20)  \BBGCIxCDGMusicRHA \BBGCIxCDGMusicRHB
BBGCIxCDGMusicLHA = \relative c{ \BBGCIxCDGMusicGlobal \clef "bass"
    c'4 | g4. g8 g g c c | c4 (g2) c4 | %3
d4. c8 b \pcAO g g g | g2. g4 | %5
g4. g8 c g g d' | d2. d4 | %7
e4. d8 c c a fis | g2. b4 | %9
c4. b8 g \pcAO g g g | g2. b4 | b4. a8 g g g g | %12
g2. c4 | g4. g8 g g g g | c4 (a2) c4 | %15
b4. c8 d b a b c2.
}
BBGCIxCDGMusicLHB = \relative c{ \BBGCIxCDGMusicGlobal \clef "bass"
    c4 | c4. b8 c c c c | c2. c4 | %3
g'4. g8 g g b, g | c2. c4 | %5
g4. g8 g' f e d | g2. g4 | %7
g4. g8 c, a d d | g,2. g'4 | %9
c,4. d8 e g f e | d2. g4 | %11
g,4. g8 g b c d | e2. c4 | %13
c4. b8 c c d e | f2. f4 | g4. g8 g g g g c,2.
}
BBGCIxCDGMusicLH =  \partCombine #'(2 . 20)  \BBGCIxCDGMusicLHA \BBGCIxCDGMusicLHB
BBGCIxCDGMusicLyrics = \relative c''''{ \BBGCIxCDGMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c4. c8 c8 c8 c8 c8 c4  s2 c4 c4. c8 c8 c8 c8 c8 c2. c4 c4. c8 c8 c8 c8 c8 c2. c4 c4. c8 c8 c8 c8 c8 c2. c4 c4. c8 c8 c8 c8 c8 c2. c4 c4. c8 c8 c8 c8 c8 c2. c4 c4. c8 c8 c8 c8 c8 c4  s2 c4 c4. c8 c8 c8 c8 c8 c2.
}

BBGDZxGEMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 74
    \time 4/4
    \key as \major
    \partial 4
    
}
BBGDZxGEMusicRHA = \relative c'{ \BBGDZxGEMusicGlobal \clef "treble"
    ees8 aes | %1
\nbp c4. bes8 aes8. g16 aes8. f16 | %2
\nbp ees2. \lbp c'8 c | %3
\nbp bes4. a8 bes c des c | %4
\nbp bes4.~bes4 r8 \lbp ees, aes | %5
\nbp c4. bes8 aes8. g16 aes8. f16 \nbp | %6
ees2. \lbp aes8 g | %7
\nbp f4 bes8 [aes] g g c bes | %8
\nbp aes2. r8 \cbp ees \postCho | %9
\nbp f4 aes des4. f,8 | %10
ees4 aes c4. \lbp aes8 | %11
\nbp g8. ges16 g8 aes bes bes des des | %12
\nbp c2 (aes4) r8 \lbp ees | %13
\nbp f4 aes des4. f,8 | %14
ees4 aes c4. \lbp aes8 | %15
\nbp g4. aes8 c bes g ees \nbp aes2. \he
}
BBGDZxGEMusicRHB = \relative c'{ \BBGDZxGEMusicGlobal \clef "treble"
    c8 c | ees4. e8 f8. e16 f8. des16 | %2
c2. ees8 ees | des4. c8 des ees ees ees | %4
des4.~des4 r8 c c | %5
ees4. e8 f8. e16 f8. des16 | c2. ees8 ees | %7
des4 des des8 des ees des | c2. r8 c | %9
des4 f f4. des8 | c4 c ees4. c8 | %11
des8. des16 des8 des des des f f | %12
ees2 (c4) r8 c | des4 des f4. des8 | %14
c4 c ees4. c8 | des4. c8 ees des des des c2.
}
BBGDZxGEMusicRH =  \partCombine #'(2 . 20)  \BBGDZxGEMusicRHA \BBGDZxGEMusicRHB
BBGDZxGEMusicLHA = \relative c{ \BBGDZxGEMusicGlobal \clef "bass"
    aes'8 aes | %1
aes4. aes8 aes8. aes16 aes8. aes16 | %2
aes2. aes8 aes | g4. ges8 g aes bes aes | %4
g4.~g4 r8 aes aes | %5
aes4. aes8 aes8. aes16 aes8. aes16 | %6
aes2. aes8 aes | aes4 bes bes8 bes g g | %8
ees2. r8 aes | aes4 des aes4. aes8 | %10
aes4 ees aes4. aes8 | %11
bes8. a16 bes8 aes g g g g | %12
aes2 (ees4) r8 aes | aes4 f aes4. aes8 | %14
aes4 ees aes4. aes8 | %15
bes4. aes8 g g bes g aes2.
}
BBGDZxGEMusicLHB = \relative c{ \BBGDZxGEMusicGlobal \clef "bass"
    aes8 aes | %1
aes4. c8 des8. des16 des8. des16 | %2
aes2. aes8 aes | %3
ees'4. ees8 ees ees ees ees | %4
ees4.~ees4 r8 aes, aes | %5
aes4. c8 des8. des16 des8. des16 | %6
aes2. c8 c | des4 bes ees8 ees ees ees | %8
aes,2. r8 aes | des4 des des4. des8 | %10
aes4 aes aes4. aes8 | %11
ees'8. ees16 ees8 ees ees ees ees ees | %12
aes,2. r8 aes | des4 des des4. des8 | %14
aes4 aes aes4. aes8 | %15
ees'4. ees8 ees ees ees ees aes,2.
}
BBGDZxGEMusicLH =  \partCombine #'(2 . 20)  \BBGDZxGEMusicLHA \BBGDZxGEMusicLHB
BBGDZxGEMusicLyrics = \relative c''''{ \BBGDZxGEMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8 c8 c4. c8 c8. c16 c8. c16 c2. c8 c8 c4. c8 c8 c8 c8 c8 c4. s4 s8 c8 c8 c4. c8 c8. c16 c8. c16 c4.  s4. c8 c8 c4 c8  s8 c8 c8 c8 c8 c2.  s8 c8 c4 c4 c4  s8 c8 c4 c4 c4. c8 c8. c16 c8 c8 c8 c8 c8 c8 c2 s4 s8 c8 c4 c4 c4. c8 c4 c4 c4. c8 c4. c8 c8 c8 c8 c8 c2.
}

BBGDAxHEMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 66
    \time 3/4
    \key e \major
    \partial 4
    
}
BBGDAxHEMusicRHA = \relative c'{ \BBGDAxHEMusicGlobal \clef "treble"
    gis'8. a16 |  \nbp b4. gis8 e'8. cis16 | %2
\nbp b4 gis \lbp cis8. b16 | %3
\nbp fis4. gis8 b8. a16 | %4
\nbp gis2 \fb gis8. a16 | %5
\nbp b4. gis8 e'8. cis16 | %6
\nbp b4 gis \lbp e'8. e16 | %7
\nbp dis4. cis8 b8. ais16 | %8
\nbp b2 \cfb b8. \postCho b16 | %9
\nbp b4. a8 gis8. fis16 | %10
\nbp gis2 \lbp e'8. dis16 | %11
\nbp cis4. e8 dis8. cis16 | %12
\nbp b2 \lbp b8. b16 | %13
\nbp e4. gis,8 a8. b16 | %14
\nbp dis4 cis \lbp a8. fis16 | %15
\nbp e4 gis \set Score.tempoHideNote = ##t \tempo 4 = 33  \fpre gis8. \fpost \set Score.tempoHideNote = ##t \tempo 4 = 66   fis16 \nbp e2 \he
}
BBGDAxHEMusicRHB = \relative c'{ \BBGDAxHEMusicGlobal \clef "treble"
    e8. fis16 | gis4. e8 gis8. a16 | %2
gis4 e e8. e16 | dis4. e8 dis8. fis16 | %4
e2 e8. fis16 | gis4. e8 a8. a16 | %6
gis4 e gis8. gis16 | fis4. fis8 fis8. e16 | %8
dis2 dis8. dis16 | dis4. fis8 e8. dis16 | %10
e2 gis8. b16 | a4. cis8 b8. a16 | %12
gis2 gis8. gis16 | gis4. e8 dis8. e16 | %14
e4 e e8. cis16 | b4 e dis8. b16 b2
}
BBGDAxHEMusicRH =  \partCombine #'(2 . 20)  \BBGDAxHEMusicRHA \BBGDAxHEMusicRHB
BBGDAxHEMusicLHA = \relative c{ \BBGDAxHEMusicGlobal \clef "bass"
    b'8. b16 | e4. b8 b8. e16 | %2
e4 b a8. gis16 | b4. b8 b8. b16 | %4
b2 b8. b16 | e4. b8 cis8. e16 | %6
e4 b cis8. cis16 | b4. e8 dis8. cis16 | %8
b2 fis8. fis16 | fis4. b8 b8. b16 | %10
b2 b8. e16 | e4. e8 e8. e16 | e2 e8. e16 | %13
b4. b8 b8. b16 \pcAO | %14
a4 \pcAO a cis8. a16 | gis4 b b8. a16 gis2
}
BBGDAxHEMusicLHB = \relative c{ \BBGDAxHEMusicGlobal \clef "bass"
    e8. e16 | e4. e8 e8. e16 | e4 e e8. e16 | %3
b4. b8 b8. dis16 | e2 e8. e16 | %5
e4. e8 e8. e16 | e4 e cis8. cis16 | %7
fis4. fis8 fis8. fis16 | b,2 b8. b16 | %9
b4. b8 b8. b16 | e2 e8. e16 | %11
a4. a8 a8. a16 | e2 e8. e16 | %13
e4. e8 fis8. gis16 | a4 a a,8. a16 | %15
b4 b \fpre b8. \fpostbelow b16 e2
}
BBGDAxHEMusicLH =  \partCombine #'(2 . 20)  \BBGDAxHEMusicLHA \BBGDAxHEMusicLHB
BBGDAxHEMusicLyrics = \relative c''''{ \BBGDAxHEMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8. c16 c4. c8 c8. c16 c4 c4 c8. c16 c4. c8 c8. c16 c2 c8. c16 c4. c8 c8. c16 c4 c4 c8. c16 c4. c8 c8. c16 c2 c8. c16 c4. c8 c8. c16 c2 c8. c16 c4. c8 c8. c16 c2 c8. c16 c4. c8 c8. c16 c4 c4 c8. c16 c4 c4 c8. c16 c2
}

BBGDBxABDMoreSylBMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 88
    \time 3/4 \key as \major
    \partial 4
}
BBGDBxABDMoreSylBMusicRHA = \relative c'{ \BBGDBxABDMoreSylBMusicGlobal \clef "treble"
    aes'4 |  \nbp c4. bes8 aes g | %2
\nbp aes2 \lbp aes4 | %3
\nbp aes4. (bes8) aes [f] | %4
\nbp ees2 \pcAO \lbp ees4 | %5
\nbp bes'4. c8 bes \pcAO ees, | %6
\nbp c'2 \lbp aes4 | %7
\nbp g4. aes8 g [f] \pcAO | %8
\nbp ees2 \cbp c'4 \postCho | %9
\nbp c4. aes8 des c |  \nbp c4 bes2 | %11
bes4. aes8 c bes | %12
\nbp bes4 aes \lbp aes | %13
\nbp aes4. bes8 aes f | %14
\nbp ees4 aes \lbp bes | %15
\nbp c4. (aes8) bes4 \nbp aes2 \he
}
BBGDBxABDMoreSylBMusicRHB = \relative c'{ \BBGDBxABDMoreSylBMusicGlobal \clef "treble"
    c4 | ees4. des8 c bes | c2 c4 | %3
des2 des4 | c2 ees4 | ees4. ees8 ees ees | %6
ees2 ees4 | ees4. f8 ees [d] | %8
ees2 ees4 | ees4. ees8 aes aes | aes4 g2 | %11
ees4. ees8 ees ees | ees4 ees ees | %13
f4. f8 f des | c4 ees f | %15
ees4. (c8) des4 c2
}
BBGDBxABDMoreSylBMusicRH =  \partCombine #'(2 . 20)  \BBGDBxABDMoreSylBMusicRHA \BBGDBxABDMoreSylBMusicRHB
BBGDBxABDMoreSylBMusicLHA = \relative c{ \BBGDBxABDMoreSylBMusicGlobal \clef "bass"
    ees4 | aes4. f8 \pcAO ees \pcAO ees | %2
ees2 ees4 | f2 f8 [aes] | aes2 g4 | %5
g4. aes8 g g \pcAO | aes2 c4 | %7
bes2 bes8 [aes] | g2 \pcAO aes4 \pcAO | %9
aes4. c8 f ees | ees4 ees2 | %11
des4. c8  ees des | des4 c aes | %13
aes4. aes8 aes aes | aes4 aes aes | %15
aes2 g4 aes2
}
BBGDBxABDMoreSylBMusicLHB = \relative c{ \BBGDBxABDMoreSylBMusicGlobal \clef "bass"
    aes4 | aes4. des8 ees ees | aes,2 aes4 | %3
des2 des4 | aes2 ees'4 | %5
ees4. ees8 ees ees | aes2 aes,4 | %7
bes2 bes4 | ees2 aes4 | %9
aes4. aes8 aes aes | ees4 ees2 | %11
ees4. ees8 ees ees | aes,4 aes c | %13
des4. des8 des des | aes4 c des | %15
ees2 ees4 aes,2
}
BBGDBxABDMoreSylBMusicLH =  \partCombine #'(2 . 20)  \BBGDBxABDMoreSylBMusicLHA \BBGDBxABDMoreSylBMusicLHB
BBGDBxABDMoreSylBMusicLyrics = \relative c''''{ \BBGDBxABDMoreSylBMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c4. c8 c8 c8 c2 c4 c4. c8 c8 c8 c2 c4 c4. c8 c8 c8 c2 c4 c4. c8 c8 c8 c2 c4 c4. c8 c8 c8 c4 c2 c4. c8 c8 c8 c4 c4 c4 c4. c8 c8 c8 c4 c4 c4 c4.  s8 c4 c2
}

BBGDCxHBMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 62
    \time 3/4
    \key as \major
    \partial 4
    
}
BBGDCxHBMusicRHA = \relative c'{ \BBGDCxHBMusicGlobal \clef "treble"
    ees4 |  \nbp c'8. des16 c4 aes | %2
aes8. f16 ees4. r8 | g8. f16 ees4 des' | %4
c8. b16 \set Score.tempoHideNote = ##t \tempo 4 = 31  \fpre c4 \fpost \set Score.tempoHideNote = ##t \tempo 4 = 62    \lbp ees, | %5
\nbp c'8. des16 c4 aes | %6
aes8. f16 ees4. r8 | g8. f16 ees4 des' | %8
c8. bes16 \set Score.tempoHideNote = ##t \tempo 4 = 31  \fpre aes4 \fpost \set Score.tempoHideNote = ##t \tempo 4 = 62   \lbp aes | %9
\nbp bes8. g16 ees4 g | %10
des'8. des16 c4 \lbp aes | %11
\nbp bes8. g16 ees4 des' | %12
c8. b16 \set Score.tempoHideNote = ##t \tempo 4 = 31  \fpre c4 \fpost \set Score.tempoHideNote = ##t \tempo 4 = 62   \lbp ees, | %13
\nbp c'8. des16 c4 aes | %14
aes8. f16 ees4. r8 | g8. f16 ees4 des' c8. bes16 \set Score.tempoHideNote = ##t \tempo 4 = 31  \fpre aes4 \fpost \set Score.tempoHideNote = ##t \tempo 4 = 62    \he
}
BBGDCxHBMusicRHB = \relative c'{ \BBGDCxHBMusicGlobal \clef "treble"
    c4 | ees8. f16 ees4 ees | %2
f8. des16 c4. r8 | des8. des16 des4 ees | %4
ees8. d16 ees4 c | ees8. f16 ees4 ees | %6
f8. des16 c4. r8 | des8. des16 des4 ees | %8
ees8. des16 c4 c | des8. des16 des4 des | %10
ees8. ees16 ees4 c | des8. des16 des4 ees | %12
ees8. d16 ees4 c | ees8. f16 ees4 ees | %14
f8. des16 c4. r8 | des8. des16 des4 ees ees8. des16 c4
}
BBGDCxHBMusicRH =  \partCombine #'(2 . 20)  \BBGDCxHBMusicRHA \BBGDCxHBMusicRHB
BBGDCxHBMusicLHA = \relative c{ \BBGDCxHBMusicGlobal \clef "bass"
    aes'4 | aes8. aes16 aes4 aes | %2
aes8. aes16 aes4. r8 | bes8. aes16 g4 g | %4
aes8. aes16 aes4 aes | %5
aes8. aes16 aes4 aes | %6
aes8. aes16 aes4. r8 | bes8. aes16 g4 g | %8
aes8. g16 aes4 aes | g8. bes16 g4 bes | %10
bes8. bes16 \pcAO aes4 aes | %11
g8. bes16 g4 g | aes8. aes16 aes4 aes | %13
aes8. aes16 aes4 aes | %14
aes8. aes16 aes4. r8 | bes8. aes16 g4 g aes8. g16 aes4
}
BBGDCxHBMusicLHB = \relative c{ \BBGDCxHBMusicGlobal \clef "bass"
    aes4 | aes8. aes16 aes4 c | %2
des8. des16 aes4. r8 | %3
ees'8. ees16 ees4 ees | %4
ees8. ees16 \fpre aes,4  \fpostbelow aes | %5
aes8. aes16 aes4 c | des8. des16 aes4. r8 | %7
ees'8. ees16 ees4 ees | %8
ees8. ees16 \fpre aes,4 \fpostbelow aes | %9
ees'8. ees16 ees4 ees | g8. g16 aes4 aes, | %11
ees'8. ees16 ees4 ees | %12
aes,8. aes16 \fpre aes4 \fpostbelow aes | %13
aes8. aes16 aes4 c | des8. des16 aes4. r8 | %15
ees'8. ees16 ees4 ees ees8. ees16 \fpre aes,4 \fpostbelow
}
BBGDCxHBMusicLH =  \partCombine #'(2 . 20)  \BBGDCxHBMusicLHA \BBGDCxHBMusicLHB
BBGDCxHBMusicLyrics = \relative c''''{ \BBGDCxHBMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c8. c16 c4 c4 c8. c16 c4.  s8 c8. c16 c4 c4 c8. c16 c4 c4 c8. c16 c4 c4 c8. c16 c4.  s8 c8. c16 c4 c4 c8. c16 c4 c4 c8. c16 c4 c4 c8. c16 c4 c4 c8. c16 c4 c4 c8. c16 c4 c4 c8. c16 c4 c4 c8. c16 c4.  s8 c8. c16 c4 c4 c8. c16 c4
}

BBGDDxBEZMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 2 = 68
    \time 4/4
    \key as \major
    
}
BBGDDxBEZMusicRHA = \relative c'{ \BBGDDxBEZMusicGlobal \clef "treble"
    ees2 ees4 f \pcAO | ees2 aes | %2
aes4 g aes bes |  \nbp c1 | %4
aes2 aes4 bes | aes2 c | c4 bes c d | %7
\nbp ees1 | ees2 aes,4 aes | des2 des | %10
des4 bes c des |  \nbp c1 | %12
aes2 bes4 aes | aes2 f | ees4 ees f ees \nbp ees1 \he
}
BBGDDxBEZMusicRHB = \relative c'{ \BBGDDxBEZMusicGlobal \clef "treble"
    c2 c4 c | ees2 ees | des4 des des des | %3
c1 | ees2 ees4 ees | f2 aes | %6
aes4 aes aes aes | g1 | ees2 ees4 ees | %9
f2 f | ees4 ees ees ees | ees1 | %12
c2 c4 c | des2 des | bes4 bes des des c1
}
BBGDDxBEZMusicRH =  \partCombine #'(2 . 20)  \BBGDDxBEZMusicRHA \BBGDDxBEZMusicRHB
BBGDDxBEZMusicLHA = \relative c{ \BBGDDxBEZMusicGlobal \clef "bass"
    aes'2 aes4 aes | aes2 aes | ees4 ees f g | %3
aes1 | c2 c4 c | c2 c | d4 d c bes | %7
bes1 | aes2 \pcAO c4 \pcAO c | %9
des2 bes | bes4 bes g g | aes1 | %12
aes2 aes4 aes | f2 aes | g4 g g g aes1
}
BBGDDxBEZMusicLHB = \relative c{ \BBGDDxBEZMusicGlobal \clef "bass"
    aes2 aes4 aes | c2 c | bes4 bes bes bes | %3
aes1 | aes'2 aes4 aes | f2 f | %6
bes,4 bes bes bes | ees1 | c2 c'4 c | %9
bes2 aes | g4 g ees ees | aes,1 | %12
f'2 f4 f | des2 des | ees4 ees ees ees aes,1
}
BBGDDxBEZMusicLH =  \partCombine #'(2 . 20)  \BBGDDxBEZMusicLHA \BBGDDxBEZMusicLHB
BBGDDxBEZMusicLyrics = \relative c''''{ \BBGDDxBEZMusicGlobal \clef "treble"
    \hideNotes \voiceFour c2 c4 c4 c2 c2 c4 c4 c4 c4 c1 c2 c4 c4 c2 c2 c4 c4 c4 c4 c1 c2 c4 c4 c2 c2 c4 c4 c4 c4 c1 c2 c4 c4 c2 c2 c4 c4 c4 c4 c1
}

BBGDExCICMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 2 = 96
    \time 4/2
    \key d \major
    
}
BBGDExCICMusicRHA = \relative c'{ \BBGDExCICMusicGlobal \clef "treble"
    d2 d e fis | g2. g4 fis1 | d2 d e fis | %3
e e \pcAO d1 \pcAO | d2 fis a a | %5
b b a1 \pcAO | d,2 fis a a | %7
b2. b4 a1 \pcAO | d,2 \pcAO d e fis | %9
g2. g4 fis1 \pcAO | d2 e fis e d cis d1 \he
}
BBGDExCICMusicRHB = \relative c'{ \BBGDExCICMusicGlobal \clef "treble"
    a2 a cis d | d2. d4 d1 | a2 b cis d | %3
d cis d1 | d2 d e fis | d e fis1 | %6
d2 d e cis | fis (e4) d cis1 | %8
d2 d cis d | d2. d4 d1 | d2 cis d b a a a1
}
BBGDExCICMusicRH =  \partCombine #'(2 . 20)  \BBGDExCICMusicRHA \BBGDExCICMusicRHB
BBGDExCICMusicLHA = \relative c{ \BBGDExCICMusicGlobal \clef "bass"
    fis2 fis a a | b2. b4 a1 | fis2 fis a a | %3
b a fis1 | fis2 b cis d  | %5
d cis d1 | a2 a a a | %7
a (gis4) gis \pcAO a1 | a2 a g a | %9
b2. b4 a1 | a2 g a g fis e fis1
}
BBGDExCICMusicLHB = \relative c{ \BBGDExCICMusicGlobal \clef "bass"
    d2 d a d | g,2. g4 d'1 | d2 b a d | %3
g, a d1 | d2 b a d | g g d1 | %6
fis2 d cis fis | d (e4) e a1 | %8
fis2 fis e d | g,2. g4 d'1 | fis2 e d g, a a d1
}
BBGDExCICMusicLH =  \partCombine #'(2 . 20)  \BBGDExCICMusicLHA \BBGDExCICMusicLHB
BBGDExCICMusicLyrics = \relative c''''{ \BBGDExCICMusicGlobal \clef "treble"
    \hideNotes \voiceFour c2 c2 c2 c2 c2. c4 c1 c2 c2 c2 c2 c2 c2 c1 c2 c2 c2 c2 c2 c2 c1 c2 c2 c2 c2 c2. c4 c1 c2 c2 c2 c2 c2. c4 c1 c2 c2 c2 c2 c2 c2 c1
}

BBGDFxBECMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 60
    \time 3/4
    \key f \major
    \partial 4.
    
}
BBGDFxBECMusicRHA = \relative c'{ \BBGDFxBECMusicGlobal \clef "treble"
    \pcAO c8 f8. g16 | %1
a4. bes8 a8. g16 \pcAO | %2
\nbp f4. \lbp f8 f8. a16 | %3
c4. d8 c8. a16 | %4
\nbp g4. \pcAO \lbp c,8 f8. g16 | %5
a4. \pcAO f8 a8. bes16 | %6
\nbp c4. \pcAO \lbp f,8 bes8. a16 | %7
a4. g8 \pcAO f8. e16 | %8
\nbp f4. \lbp c'8 c8. a16 | %9
d4. c8 c8. a16 | %10
\nbp bes4. \lbp bes8 bes8. g16 | %11
e'4. d8 c8. g16 | %12
\nbp a4. \pcAO \lbp c,8 f8. g16 | %13
a4. \pcAO f8 a8. bes16 | %14
\nbp c4. \pcAO \lbp f,8 bes8. a16 | %15
a4. g8 \pcAO f8. e16 | %16
\nbp f4. \cbp c'8 \postCho c8. a16 | %17
c4. a8 a8. c16 | %18
\nbp bes4. \lbp f8 f8. g16 | %19
a4. a8 g8. \pcAO f16 | %20
\nbp c'4. \lbp c8 c8. a16 | %21
c4. a8 a8. c16 | %22
\nbp bes4. \lbp d8 d8. d16 | %23
c4. a8 a8. g16 \pcAO \nbp f4. \he
}
BBGDFxBECMusicRHB = \relative c'{ \BBGDFxBECMusicGlobal \clef "treble"
    c8 c8. c16 | f4. f8 f8. e16 | %2
f4. c8 c8. f16 | f4. f8 f8. f16 | %4
e4. c8 c8. c16 | f4. f8 f8. f16 | %6
f4. f8 f8. f16 | f4. e8 f8. c16 | %8
c4. f8 f8. f16 | fis4. fis8 fis8. fis16 | %10
g4. f8 e8. e16 | g4. e8 e8. e16 | %12
f4. c8 c8. c16 | f4. f8 f8. f16 | %14
f4. f8 f8. f16 | f4. e8 f8. c16 | %16
c4. f8 f8. f16 | f4. f8 f8. ees16 | %18
d4. d8 d8. des16 | c4. c8 c8. f16 | %20
e4. c8 f8. f16 | f4. f8 f8. ees16 | %22
d4. f8 f8. f16 | f4. f8 e8. e16 f4.
}
BBGDFxBECMusicRH =  \partCombine #'(2 . 20)  \BBGDFxBECMusicRHA \BBGDFxBECMusicRHB
BBGDFxBECMusicLHA = \relative c{ \BBGDFxBECMusicGlobal \clef "bass"
    a'8 a8. bes16 | c4. d8 c8. bes16 | %2
a4. a8 a8. c16 | a4. bes8 c8. c16 | %4
c4. bes8 a8. bes16 | c4. a8 c8. g16 | %6
a4. a8 d8. c16 | c4. bes8 a8. g16 | %8
a4. a8 a8. c16 | a4. a8 a8. d16 | %10
d4. d8 c8. bes16 | bes4. g8 g8. c16 | %12
c4. a8 a8. bes16 | c4. a8 c8. g16 | %14
a4. a8 d8. c16 | c4. bes8 a8. g16 | %16
a4. a8 a8. c16 | a4. c8 c8. f,16 | %18
f4. f8 f8. f16 \pcAO | f4. c'8 c8. b16 | %20
c4. bes8 a8. c16 | a4. c8 c8. f,16 | %22
f4. bes8 bes8. bes16 | a4. c8 c8. bes16 a4.
}
BBGDFxBECMusicLHB = \relative c{ \BBGDFxBECMusicGlobal \clef "bass"
    f8 f8. f16 | f4. bes,8 c8. c16 | %2
f4. f8 f8. f16 | f4. bes,8 a8. f16 | %4
c'4. e8 f8. f16 | f4. f8 f8. f16 | %6
f4. f8 f8. f16 | c4. c8 c8. c16 | %8
f4. f8 f8. ees16 | d4. d8 d8. d16 | %10
g4. g8 c,8. c16 | c4. c8 c8. c16 | %12
f4. f8 f8. f16 | f4. f8 f8. f16 | %14
f4. f8 f8. f16 | c4. c8 c8. c16 | %16
f4. f8 f8. f16 | f4. f8 f8. a,16 | %18
bes4. bes8 bes8. bes16 | f'4. f8 e8. d16 | %20
c4. e8 f8. f16 | f4. f8 f8. a,16 | %22
bes4. bes8 bes8. bes16 | c4. c8 c8. c16 f4.
}
BBGDFxBECMusicLH =  \partCombine #'(2 . 20)  \BBGDFxBECMusicLHA \BBGDFxBECMusicLHB
BBGDFxBECMusicLyrics = \relative c''''{ \BBGDFxBECMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8 c8. c16 c4. c8 c8. c16 c4. c8 c8. c16 c4. c8 c8. c16 c4. c8 c8. c16 c4. c8 c8. c16 c4. c8 c8. c16 c4. c8 c8. c16 c4. c8 c8. c16 c4. c8 c8. c16 c4. c8 c8. c16 c4. c8 c8. c16 c4. c8 c8. c16 c4. c8 c8. c16 c4. c8 c8. c16 c4. c8 c8. c16 c4. c8 c8. c16 c4. c8 c8. c16 c4. c8 c8. c16 c4. c8 c8. c16 c4. c8 c8. c16 c4. c8 c8. c16 c4. c8 c8. c16 c4. c8 c8. c16 c4.
}

BBGDGxBGGMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 8 = 112
    \time 3/8
    \key f \major
    
}
BBGDGxBGGMusicRHA = \relative c'{ \BBGDGxBGGMusicGlobal \clef "treble"
    a'8 bes a | f4 a8 \pcAp | %2
g [f] \pcAu g |  \nbp a c4 | d8 d d | %5
c4 a8 | c [bes] g |  \nbp a4. | %8
a8 bes a | f4 a8 \pcAp | %10
g [f] \pcAu g |  \nbp a f4 \pcAO | %12
c8 f g | a [bes] a | g [d] e | %15
\nbp f4. \cbp | g8 \postCho g g | %17
a4 a8 | c [bes] a |  \nbp a g4 | %20
a8 a a | g4 c8 | b [a] b | %23
\nbp c4. \pcAO | c,8 e g | f4 a8 | %26
bes4 a8 |  \nbp g \pcAO d4 | f8 e f | %29
a [bes] a | g [d] e \nbp f4. \he
}
BBGDGxBGGMusicRHB = \relative c'{ \BBGDGxBGGMusicGlobal \clef "treble"
    f8 f f | c4 f8 | e [f] e | f f4 | %4
f8 f f | f4 f8 | g4 e8 | f4. | f8 f f | %9
c4 f8 | e [f] e | f c4 | c8 c e | %13
f4 f8 | d4 c8 | c4. | e8 e e | f4 f8 | %18
g4 f8 | f e4 | f8 f dis | e4 e8 | %22
f4 f8 | e4. | c8 c c | c4 f8 | f4 f8 | %27
d d4 | c8 c c | f4 f8 | d4 c8 c4.
}
BBGDGxBGGMusicRH =  \partCombine #'(2 . 20)  \BBGDGxBGGMusicRHA \BBGDGxBGGMusicRHB
BBGDGxBGGMusicLHA = \relative c{ \BBGDGxBGGMusicGlobal \clef "bass"
    c'8 d c | a4 c8 | bes [a] c | c a4 | %4
bes8 bes bes | a4 c8 | c4 c8 | c4. | %8
c8 d c | a4 c8 | bes [a] c | c a4 | %12
a8 a c | c [d] c | bes4 bes8 | a4. | %16
c8 c c | c4 c8 | c4 c8 | c c4 | c8 c c | %21
c4 c8 | d4 d8 | c4. | e,8 g bes | %25
a4 c8 | d4 c8 | bes bes4 | a8 g a | %29
c [d] c | bes4 bes8 a4.
}
BBGDGxBGGMusicLHB = \relative c{ \BBGDGxBGGMusicGlobal \clef "bass"
    f8 f f | f4 f8 | c4 c8 | f f4 | %4
bes,8 bes d | f4 f8 | e4 c8 | f4. | %8
f8 f f | f4 f8 | c4 c8 | f f4 | f8 f c | %13
f4 f8 | bes,4 c8 | f4. | c8 c c | %17
f4 f8 | e4 f8 | c c4 | f8 f fis | %21
g4 g8 | g4 g8 | c,4. | c8 c c | f4 f8 | %26
f4 f8 | bes, g4 | c8 c c | c4 c8 | %30
c4 c8 f4.
}
BBGDGxBGGMusicLH =  \partCombine #'(2 . 20)  \BBGDGxBGGMusicLHA \BBGDGxBGGMusicLHB
BBGDGxBGGMusicLyrics = \relative c''''{ \BBGDGxBGGMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8 c8 c8 c4 c8 c8  s8 c8 c8 c4 c8 c8 c8 c4 c8 c8  s8 c8 c4. c8 c8 c8 c4 c8 c8  s8 c8 c8 c4 c8 c8 c8 c8  s8 c8 c8  s8 c8 c4. c8 c8 c8 c4 c8 c8  s8 c8 c8 c4 c8 c8 c8 c4 c8 c8  s8 c8 c4. c8 c8 c8 c4 c8 c4 c8 c8 c4 c8 c8 c8 c8  s8 c8 c8  s8 c8 c4.
}

BBGDHxFDMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 120
    \time 3/4
    \key f \major
    
}
BBGDHxFDMusicRHA = \relative c'{ \BBGDHxFDMusicGlobal \clef "treble"
    f4 f f | f (e) f | g (a) g \pcAO | %3
\nbp f2. | a4 a a | a (g) a | %6
c (bes) a |  \nbp g2. | g4 g a | %9
bes2 g4 | a2 bes4 |  \nbp c2. | d4 d d | %13
c2 a4 | bes (a) g \pcAO \nbp f2. \he
}
BBGDHxFDMusicRHB = \relative c'{ \BBGDHxFDMusicGlobal \clef "treble"
    c4 c c | c2 c4 | e2 e4 | f2. | f4 f f | %5
f (e) f | f (e) f | e2. | e4 d fis | %9
g (d) e | f2 f4 | e2. | d4 f f | %13
f (e) f | f2 e4 f2.
}
BBGDHxFDMusicRH =  \partCombine #'(2 . 20)  \BBGDHxFDMusicRHA \BBGDHxFDMusicRHB
BBGDHxFDMusicLHA = \relative c{ \BBGDHxFDMusicGlobal \clef "bass"
    a'4 a a | a (g) a | bes (c) bes | %3
a2. | c4 c c | c2 c4 | c2 c4 | %7
c2. \pcAO | c4 d c | bes2 c4 | c2 bes4 | %11
g2 (a4) | bes bes bes | g2 d'4 | %14
d c bes a2.
}
BBGDHxFDMusicLHB = \relative c{ \BBGDHxFDMusicGlobal \clef "bass"
    f4 f f | f2 f4 | c2 c4 | f2. | f4 f f | %5
f2 f4 | a (g) f | c2. | c'4 bes a | %9
g2 c,4 | f2 d4 | c2. | bes4 bes bes | %13
c2 d4 | bes c c f2.
}
BBGDHxFDMusicLH =  \partCombine #'(2 . 20)  \BBGDHxFDMusicLHA \BBGDHxFDMusicLHB
BBGDHxFDMusicLyrics = \relative c''''{ \BBGDHxFDMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c4 c4 c4  s4 c4 c4  s4 c4 c2. c4 c4 c4 c4  s4 c4 c4  s4 c4 c2. c4 c4 c4 c2 c4 c2 c4 c2. c4 c4 c4 c2 c4 c4  s4 c4 c2.
}

BBGDIxBGDMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 92
    \time 4/4
    \key bes \major
    \partial 4
    
}
BBGDIxBGDMusicRHA = \relative c'{ \BBGDIxBGDMusicGlobal \clef "treble"
    \pcAp f4 | %1
\nbp bes a8 [g] f4 \pcAu bes \pcAO | %2
d, ees f \lbp f | %3
\nbp g8 [a] bes4 c c | %4
\nbp d2. \pcAp \lbp f,4 | %5
\nbp bes a8 [g] f4 \pcAu bes \pcAO | %6
d, ees f \lbp f | %7
\nbp g8 [a] bes4 bes a | %8
\nbp bes2. \cfb bes8 \postCho [c] | %9
\nbp d4 c d ees | %10
c a8 [bes] c4 \lbp bes8 [c] | %11
\nbp d4 c d ees | %12
\nbp c2. \fb \pcAp f,4 | %13
\nbp bes a8 [g] f4 \pcAu bes \pcAO | %14
d, ees f \lbp f | %15
\nbp g8 [a] bes4 bes a \nbp bes2. \he
}
BBGDIxBGDMusicRHB = \relative c'{ \BBGDIxBGDMusicGlobal \clef "treble"
    f4 | bes a8 [g] f4 f | %2
d c8 [bes] c4 d | ees f g f | f2. f4 | %5
bes a8 [g] f4 f | d c8 [bes] c4 d | %7
ees d8 [ees] f4 f | f2. d8 [ees] | %9
f4 f f g | f f f d8 [ees] | f4 f f g | %12
f2. f4 | bes a8 [g] f4 f | %14
d c8 [bes] c4 d | ees d8 [ees] f4 f f2.
}
BBGDIxBGDMusicRH =  \partCombine #'(2 . 20)  \BBGDIxBGDMusicRHA \BBGDIxBGDMusicRHB
BBGDIxBGDMusicLHA = \relative c{ \BBGDIxBGDMusicGlobal \clef "bass"
    \pcAp f4 | bes a8 [g] f4 \pcAu bes | %2
bes bes a bes | bes bes bes a | %4
bes2. \pcAp f4 | %5
bes a8 [g] f4 \pcAu bes | %6
bes bes a bes | bes bes c c | %8
d2. \pcAO bes4 \pcAO | %9
bes c \pcAO bes bes | %10
a f8 [g] a4 \pcAO bes \pcAO | %11
bes c \pcAO bes bes | a2. \pcAp f4 | %13
bes a8 [g] f4 \pcAu bes | %14
bes bes a bes | bes bes c c d2.
}
BBGDIxBGDMusicLHB = \relative c{ \BBGDIxBGDMusicGlobal \clef "bass"
    f4 | bes a8 [g] f4 d | g g f bes, | %3
ees d ees f | bes,2. f'4 | %5
bes a8 [g] f4 d | g g f bes, | %7
ees g f f | bes,2. bes'4 | %9
bes a bes ees, | f f f bes | %11
bes a bes ees, | f2. f4 | %13
bes a8 [g] f4 d | g g f bes, | %15
ees g f f bes,2.
}
BBGDIxBGDMusicLH =  \partCombine #'(2 . 20)  \BBGDIxBGDMusicLHA \BBGDIxBGDMusicLHB
BBGDIxBGDMusicLyrics = \relative c''''{ \BBGDIxBGDMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c4 c8  s8 c4 c4 c4 c4 c4 c4 c8  s8 c4 c4 c4 c2. c4 c4 c8  s8 c4 c4 c4 c4 c4 c4 c8  s8 c4 c4 c4 c2. c8  s8 c4 c4 c4 c4 c4 c8  s8 c4 c8  s8 c4 c4 c4 c4 c2. c4 c4 c8  s8 c4 c4 c4 c4 c4 c4 c8  s8 c4 c4 c4 c2.
}

BBGEZxCFBMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 2 = 68
    \time 4/4
    \key f \major
    
}
BBGEZxCFBMusicRHA = \relative c'{ \BBGEZxCFBMusicGlobal \clef "treble"
    \pcAO f2 g4 a | bes2 a | g4 f f e | %3
\nbp f1 | a2 bes4 c | d2 c | %6
bes4 a g f |  \nbp g1 | c2 c4 bes | %9
a2 g | a4 c c b |  \nbp c1 | a2 g4 f | %13
e f g bes | a2 g \nbp f1 \he
}
BBGEZxCFBMusicRHB = \relative c'{ \BBGEZxCFBMusicGlobal \clef "treble"
    f2 e4 f | f2 f | d4 c d c | c1 | %4
f2 f4 f | f2 f | e4 f d d | e1 | %8
f2 f4 e | f2 e | f4 f d8 [e] f4 | e1 | %12
f2 e4 d | des d d d | f2 e c1
}
BBGEZxCFBMusicRH =  \partCombine #'(2 . 20)  \BBGEZxCFBMusicRHA \BBGEZxCFBMusicRHB
BBGEZxCFBMusicLHA = \relative c{ \BBGEZxCFBMusicGlobal \clef "bass"
    a'2 c4 c | d2 c | bes4 a g g | a1 | %4
c2 bes4 a | bes2 a | bes4 c g g | g1 | %8
a2 c4 c | c2 c | c4 c d g, | g1 | %12
c2 bes4 a | a a bes bes | c2 bes a1
}
BBGEZxCFBMusicLHB = \relative c{ \BBGEZxCFBMusicGlobal \clef "bass"
    f2 c4 f | bes,2 f | g4 a bes c | f,1 | %4
f'2 d4 c | bes2 f | g4 a bes b | c1 | %8
f2 a4 g | f2 c | f4 a g g, | c1 | %12
f2 c4 d | a d bes g | c2 c f,1
}
BBGEZxCFBMusicLH =  \partCombine #'(2 . 20)  \BBGEZxCFBMusicLHA \BBGEZxCFBMusicLHB
BBGEZxCFBMusicLyrics = \relative c''''{ \BBGEZxCFBMusicGlobal \clef "treble"
    \hideNotes \voiceFour c2 c4 c4 c2 c2 c4 c4 c4 c4 c1 c2 c4 c4 c2 c2 c4 c4 c4 c4 c1 c2 c4 c4 c2 c2 c4 c4 c4 c4 c1 c2 c4 c4 c4 c4 c4 c4 c2 c2 c1
}

BBGEAxCCZMoreSylMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 78
    \time 2/4
    \key es \major
    
}
BBGEAxCCZMoreSylMusicRHA = \relative c'{ \BBGEAxCCZMoreSylMusicGlobal \clef "treble"
    ees4 g8 aes | bes4 c8 d | ees4 d8 [c] | %3
\nbp bes2 | bes4 bes8 bes | c4 bes | %6
aes g |  \nbp f2 | g4 g8 f \pcAO | %9
ees [g] bes [ees] | %10
c [bes] aes [g] |  \nbp f2 | %12
bes4 c8 d | ees4. aes,8 | g4 f \pcAO \nbp ees2 \he
}
BBGEAxCCZMoreSylMusicRHB = \relative c'{ \BBGEAxCCZMoreSylMusicGlobal \clef "treble"
    bes4 ees8 d | ees4 ees8 f | %2
g4 f8 [ees] | d2 | ees4 ees8 ees | %5
ees4 ees | f ees | d2 | ees4 ees8 d | %9
ees4 ees | ees d8 [ees] | d2 | %12
ees4 ees8 aes | g [aes bes] ees, | %14
ees4 d ees2
}
BBGEAxCCZMoreSylMusicRH =  \partCombine #'(2 . 20)  \BBGEAxCCZMoreSylMusicRHA \BBGEAxCCZMoreSylMusicRHB
BBGEAxCCZMoreSylMusicLHA = \relative c{ \BBGEAxCCZMoreSylMusicGlobal \clef "bass"
    g'4 bes8 bes | bes4 \pcAO aes8 [ \pcAO bes] | %2
bes4 bes8 [a] | bes2 | %4
g4 g8 bes \pcAO | aes4 bes | bes bes | %7
bes2 | bes4 bes8 bes | bes4 bes \pcAO | %10
aes8 bes bes4 | bes2 | %12
bes4 \pcAO aes8 bes | bes4. c8 \pcAO | %14
bes4 bes8 [aes] g2
}
BBGEAxCCZMoreSylMusicLHB = \relative c{ \BBGEAxCCZMoreSylMusicGlobal \clef "bass"
    ees4 ees8 f | g4 aes8 [f] | ees4 f | %3
bes,2 | ees4 ees8 g | aes4 g | d ees | %7
bes2 | ees4 ees8 bes | g4 g' | %10
aes8 g f [ees] | bes2 | g'4 aes8 f | %13
ees [f g] aes | bes4 bes, ees2
}
BBGEAxCCZMoreSylMusicLH =  \partCombine #'(2 . 20)  \BBGEAxCCZMoreSylMusicLHA \BBGEAxCCZMoreSylMusicLHB
BBGEAxCCZMoreSylMusicLyrics = \relative c''''{ \BBGEAxCCZMoreSylMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c8 c8 c4 c8 c8 c4 c8  s8 c2 c4 c8 c8 c4 c4 c4 c4 c2 c4 c8 c8 c8  s8 c8  s8 c8  s8 c8  s8 c2 c4 c8 c8 c4. c8 c4 c4 c2
}

BBGEBxBFBMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 120
    \time 4/4
    \key es \major
    
}
BBGEBxBFBMusicRHA = \relative c'{ \BBGEBxBFBMusicGlobal \clef "treble"
    ees4 ees g g | bes2 bes | c4 c c c | %3
\nbp bes2 g | bes4. bes8 bes4 bes | %5
ees2 d4 bes | f bes c4. bes8 | %7
\nbp bes1 | ees,4 ees g g | bes2 bes | %10
c4. c8 c4 c |  \nbp bes2 bes | %12
ees bes4 bes | c2 g | %14
aes4 f f4. \pcAO ees8 \pcAO \nbp \set Score.tempoHideNote = ##t \tempo 4 = 60  \fpre ees1 \fpost \set Score.tempoHideNote = ##t \tempo 4 = 120   \he
}
BBGEBxBFBMusicRHB = \relative c'{ \BBGEBxBFBMusicGlobal \clef "treble"
    bes4 bes ees ees | d (f) ees (d) | %2
c d ees f | g2 ees | f4. f8 g4 f | %5
ees (f) f g | d d ees4. d8 | d1 | %8
bes4 bes ees ees | d (f) ees (d) | %10
c4. d8 ees4 f | g2 ees | ees ees4 ees | %13
ees2 ees4 (des) | c c d4. ees8 ees1
}
BBGEBxBFBMusicRH =  \partCombine #'(2 . 20)  \BBGEBxBFBMusicRHA \BBGEBxBFBMusicRHB
BBGEBxBFBMusicLHA = \relative c{ \BBGEBxBFBMusicGlobal \clef "bass"
    g'4 g ees ees | f (aes) g (bes) | %2
aes bes c d | ees (bes) bes2 | %4
bes4. bes8 bes4 bes | %5
g (a) bes bes \pcAO | f bes a4. bes8 | %7
bes2 (aes) | g4 g ees ees | %9
f (aes) g (bes) | aes4. bes8 c4 d | %11
ees (bes) g2 | g4 (aes) bes des | %13
c2 bes | aes4 aes aes4. g8  g1
}
BBGEBxBFBMusicLHB = \relative c{ \BBGEBxBFBMusicGlobal \clef "bass"
    ees4 ees c c | bes2 ees | %2
aes,4 aes aes' aes | ees2 ees | %4
d4. d8 ees4 d | c2 d4 ees | %6
f f f4. bes,8 | bes1 | ees4 ees c c | %9
bes2 ees | aes,4. aes8 aes'4 aes | %11
ees2 ees | c g4 g | aes2 ees' | %14
aes,4 aes bes4. ees8 \fpre ees1 \fpostbelow
}
BBGEBxBFBMusicLH =  \partCombine #'(2 . 20)  \BBGEBxBFBMusicLHA \BBGEBxBFBMusicLHB
BBGEBxBFBMusicLyrics = \relative c''''{ \BBGEBxBFBMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c4 c4 c4 c2 c2 c4 c4 c4 c4 c2 c2 c4. c8 c4 c4 c2 c4 c4 c4 c4 c4. c8 c1 c4 c4 c4 c4 c2 c2 c4. c8 c4 c4 c2 c2 c2 c4 c4 c2 c2 c4 c4 c4. c8 c1
}

BBGECxAHFMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 120
    \time 3/4
    \key as \major
    \partial 4
    
}
BBGECxAHFMusicRHA = \relative c'{ \BBGECxAHFMusicGlobal \clef "treble"
    c'4 |  \nbp c (bes) aes | aes (g) f | %3
ees (c') bes | %4
\nbp aes2 \pcAO \lbp ees4 | %5
\nbp ees (des') c | c (bes) aes | %7
ees' (c) aes | %8
\nbp bes2 \pcAO \lbp ees,4 \pcAO | %9
\nbp ees (f) g | aes2 ees4 | %11
f (des') bes | %12
\nbp aes (g) \breathe \pcAO \lbp ees | %13
\nbp f2 g4 | aes2 aes4 | aes (g) bes \nbp aes2 \he
}
BBGECxAHFMusicRHB = \relative c'{ \BBGECxAHFMusicGlobal \clef "treble"
    ees4 | ees2 ees4 | f (ees) des | %3
c (ees) des | c2 ees4 | ees2 ees4 | %6
aes (g) f | ees2 ees4 | ees2 ees4 | %9
ees d des | c2 c4 | des (f) f | %12
ees2 ees4 | des2 des4 | c2 ees4 | %15
ees2 ees4 ees2
}
BBGECxAHFMusicRH =  \partCombine #'(2 . 20)  \BBGECxAHFMusicRHA \BBGECxAHFMusicRHB
BBGECxAHFMusicLHA = \relative c{ \BBGECxAHFMusicGlobal \clef "bass"
    c'4 | ees (des) c | aes2 aes4 | %3
aes2 g4 | aes2 g4 | aes (g) aes | %6
ees' (des) c \pcAp | %7
bes (aes) \pcAu aes | g2 g4 | %9
g (aes) bes | aes2 aes4 | aes2 des4 | %12
c (bes) aes | aes2 bes4 | %14
ees, (aes) c | c (bes) des c2
}
BBGECxAHFMusicLHB = \relative c{ \BBGECxAHFMusicGlobal \clef "bass"
    aes4 | aes (bes) c | des2 des4 | %3
ees2 ees4 | aes,2 ees'8 [des] | %5
c4 (bes) aes | aes' (ees) f | %7
g (aes) c, | ees2 ees4 | ees2 ees4 | %10
aes,2 aes4 | des2 des4 | ees2 c4 | %13
des2 bes4 | aes2 aes4 | ees'2 ees4 aes,2
}
BBGECxAHFMusicLH =  \partCombine #'(2 . 20)  \BBGECxAHFMusicLHA \BBGECxAHFMusicLHB
BBGECxAHFMusicLyrics = \relative c''''{ \BBGECxAHFMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c4  s4 c4 c4  s4 c4 c4  s4 c4 c2 c4 c4  s4 c4 c4  s4 c4 c4  s4 c4 c2 c4 c4  s4 c4 c2 c4 c4  s4 c4 c4  s4 c4 c2 c4 c2 c4 c4  s4 c4 c2
}

BBGEDxCHBMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 96
    \time 4/4
    \key as \major
    \partial 4
    
}
BBGEDxCHBMusicRHA = \relative c'{ \BBGEDxCHBMusicGlobal \clef "treble"
    ees4 |  \nbp c' g bes aes \pcAO | %2
c, f ees4. \lbp aes8 | %3
\nbp aes4 g f g  | %4
\nbp aes2. \lbp g4 | %5
\nbp f e f aes \pcAO | %6
ees c' c4. \lbp c8 |  \nbp bes4 bes f c' | %8
\nbp bes2. \lbp ees,4 | %9
\nbp c' g bes aes \pcAO | %10
c, f ees4. \lbp ees8 | %11
\nbp aes4 bes c ees |  \nbp ees2 des | %13
f,4 e f aes \pcAO | %14
ees aes \set Score.tempoHideNote = ##t \tempo 4 = 48  \fpre des \fpost \set Score.tempoHideNote = ##t \tempo 4 = 96   \lbp c | %15
\nbp c ees, bes' g \nbp aes2. \he
}
BBGEDxCHBMusicRHB = \relative c'{ \BBGEDxCHBMusicGlobal \clef "treble"
    c4 | ees des des c | c b c4. ees8 | %3
ees4 ees des des | c2. ees4 | %5
des des des des | ees ees ees4. ees8 | %7
d4 d d d | des2. c4 | ees des des c | %10
c b c4. c8 | ees4 ees ees ges | f2 f | %13
des4 des des des | ees ees ees ees | %15
ees c des des c2.
}
BBGEDxCHBMusicRH =  \partCombine #'(2 . 20)  \BBGEDxCHBMusicRHA \BBGEDxCHBMusicRHB
BBGEDxCHBMusicLHA = \relative c{ \BBGEDxCHBMusicGlobal \clef "bass"
    aes'4 | aes bes g aes | %2
ees aes aes4. aes8 | c4 bes bes bes | %4
c2. aes4 | aes g aes f | %6
aes aes aes4. aes8 | f4 f bes aes | %8
g2. aes4 | aes bes g aes | %10
ees aes aes4. aes8 | aes4 g aes aes | %12
aes2 aes | aes4 g aes f | aes aes  g  aes | %15
aes aes g bes aes2.
}
BBGEDxCHBMusicLHB = \relative c{ \BBGEDxCHBMusicGlobal \clef "bass"
    aes4 | aes ees' ees aes, | %2
aes aes aes4. c8 | ees4 ees ees ees | %4
aes,2. c4 | des des des des | %6
c aes aes4. aes8 | bes4 bes bes bes | %8
ees2. aes,4 | aes ees' ees aes, | %10
aes aes aes4. aes8 | c4 bes aes c | %12
des2 des | des4 des des des | %14
c c \fpre bes \fpostbelow aes | %15
ees' ees ees ees aes,2.
}
BBGEDxCHBMusicLH =  \partCombine #'(2 . 20)  \BBGEDxCHBMusicLHA \BBGEDxCHBMusicLHB
BBGEDxCHBMusicLyrics = \relative c''''{ \BBGEDxCHBMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c4 c4 c4 c4 c4 c4 c4. c8 c4 c4 c4 c4 c2. c4 c4 c4 c4 c4 c4 c4 c4. c8 c4 c4 c4 c4 c2. c4 c4 c4 c4 c4 c4 c4 c4. c8 c4 c4 c4 c4 c2 c2 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c2.
}

BBGEExBFGMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 120
    \time 3/4
    \key f \major
    
}
BBGEExBFGMusicRHA = \relative c'{ \BBGEExBFGMusicGlobal \clef "treble"
    a'4 a a | bes2 f4 |  \nbp a2. | %3
c4 bes a | g2 a4 |  \nbp g2. | a4 bes d | %7
c2 a4 | a2 g4 |  \nbp bes2 \lbp g4 | %10
\nbp f (e) f | a2 g4 \pcAO \nbp f2. \he
}
BBGEExBFGMusicRHB = \relative c'{ \BBGEExBFGMusicGlobal \clef "treble"
    f4 f f | f2 des4 | f2. | f4 e f | %4
f2 f4 | e2. | f4 f e | f2 f8 [e] | %8
d2 d4 | d2 d4 | c2 c4 | f2 e4 f2.
}
BBGEExBFGMusicRH =  \partCombine #'(2 . 20)  \BBGEExBFGMusicRHA \BBGEExBFGMusicRHB
BBGEExBFGMusicLHA = \relative c{ \BBGEExBFGMusicGlobal \clef "bass"
    c'4 \pcAO f, e' | d2 \pcAO f,4 | c'2. | %3
c4 c c | d2 d4 \pcAO | c,2. | %6
c'4 d bes \pcAO | a2 c4 | c2 bes4 | %9
bes2 bes4 | a (g) a | c2 bes4 a2.
}
BBGEExBFGMusicLHB = \relative c{ \BBGEExBFGMusicGlobal \clef "bass"
    f4 f f | f2 f4 | f2. | a4 g f | %4
bes,2 b4 | c2. | f4 f g | a2 f4 | %8
bes,2 bes4 | g2 bes4 | c2 c4 | c2 c4 f,2.
}
BBGEExBFGMusicLH =  \partCombine #'(2 . 20)  \BBGEExBFGMusicLHA \BBGEExBFGMusicLHB
BBGEExBFGMusicLyrics = \relative c''''{ \BBGEExBFGMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c4 c4 c2 c4 c2. c4 c4 c4 c2 c4 c2. c4 c4 c4 c2 c4 c2 c4 c2 c4 c4  s4 c4 c2 c4 c2.
}

BBGEFxCCMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 2 = 64
    \time 6/4
    \key as \major
}
BBGEFxCCMusicRHA = \relative c'{ \BBGEFxCCMusicGlobal \clef "treble"
    c'4 b c des c b |  \nbp c2. aes | %2
aes4 g aes bes aes f | %3
\nbp ees2.~ees2 r4 | c' b c des c b | %5
\nbp c2. aes | aes4 g aes c (bes) aes | %7
\nbp bes2.~bes2 r4 | %8
des des des des des des | %9
\nbp des2. c2. | ees4 ees ees ees des c | %11
\nbp bes2.~bes2 r4 | c c c c b c | %13
ees2. des | c4 bes aes \set Score.tempoHideNote = ##t \tempo 2 = 32  \fpre ees \fpost \set Score.tempoHideNote = ##t \tempo 2 = 64    c' bes | %15
\nbp aes2.~aes2 r4 \cbp \pcAO | %16
aes \postCho \pcAO g \pcAO f \pcAO aes \pcAO g \pcAO f | %17
g2. g | aes4 aes aes bes aes bes | %19
\nbp c2.~c2 r4 | c bes aes c bes aes | %21
ees'2. des | c4 bes aes ees c' bes \nbp aes2.~aes2 r4 \he
}
BBGEFxCCMusicRHB = \relative c'{ \BBGEFxCCMusicGlobal \clef "treble"
    ees4 d ees f ees d | ees2. c | %2
f4 e f e f des | c2.~c2 r4 | %4
ees d ees f ees d | ees2. c | %6
d4 d d d (d) d | des!2.~des2 r4 | %8
g f ees g f ees | bes' (f g) aes2. | %10
c4 bes aes g g aes | g2.~g2 r4 | %12
aes g f ees d ees | ges (aes ges) f2. | %14
ees4 des c c ees des | c2.~c2 r4 | %16
aes' g f aes g f | e2. e | c4 c c f f f | %19
e g f e2 r4 | ees ees ees ees ees ees | %21
ges2. f | ees4 des c c ees des c2.~c2 r4
}
BBGEFxCCMusicRH =  \partCombine #'(2 . 20)  \BBGEFxCCMusicRHA \BBGEFxCCMusicRHB
BBGEFxCCMusicLHA = \relative c{ \BBGEFxCCMusicGlobal \clef "bass"
    aes'4 aes aes aes aes aes | aes2. aes | %2
aes4 aes aes aes aes aes | %3
aes2.~aes2 r4 | aes aes aes aes aes aes | %5
aes2. aes | f4 f f aes (g) f | %7
g (bes aes g2) r4 | bes aes g bes aes g | %9
g (aes bes) \pcAO aes2. | %10
ees'4 des c bes bes ees | ees2.~ees2 r4 | %12
aes, aes aes aes aes aes | aes2. aes | %14
aes4 g aes aes aes g | %15
aes2.~aes2 r4 \pcAp | %16
aes g f aes g f \pcAu | bes2. bes | %18
aes4 aes aes des des des | %19
g, bes aes g2 r4 \pcAO | %20
aes des c \pcAO aes des c | aes2. aes | %22
aes4 aes aes aes aes g aes2.~aes2 r4
}
BBGEFxCCMusicLHB = \relative c{ \BBGEFxCCMusicGlobal \clef "bass"
    aes4 aes aes aes aes aes | aes2. aes | %2
des4 des des des des des | %3
aes2.~aes2 r4 | aes aes aes aes aes aes | %5
aes2. aes | bes4 bes bes bes (bes) bes | %7
ees2.~ees2 r4 | ees ees ees ees ees ees | %9
ees2. aes | aes4 aes aes ees ees ees | %11
ees2.~ees2 r4 | %12
aes, aes aes aes aes aes | c2. des | %14
ees4 ees ees \fpre ees \fpostbelow ees ees | %15
aes,2.~aes2 r4 | aes' g f aes g f | %17
c2. c | f4 f f des des des | c2.~c2 r4 | %20
aes' aes aes aes aes aes | c,2. des | %22
ees4 ees ees ees ees ees aes,2.~aes2 r4
}
BBGEFxCCMusicLH =  \partCombine #'(2 . 20)  \BBGEFxCCMusicLHA \BBGEFxCCMusicLHB
BBGEFxCCMusicLyrics = \relative c''''{ \BBGEFxCCMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c4 c4 c4 c4 c4 c2. c2. c4 c4 c4 c4 c4 c4 c2. s2 s4 c4 c4 c4 c4 c4 c4 c2. c2. c4 c4 c4 c4 c4 c4 c2. s2 s4 c4 c4 c4 c4 c4 c4 c2. c2. c4 c4 c4 c4 c4 c4 c2 s2. s4 c4 c4 c4 c4 c4 c4 c2. c4  s2 c4 c4 c4 c4 c4 c4 c2. s2 s4 c4 c4 c4 c4 c4 c4 c2  s4 c4  s2 c4 c4 c4 c4 c4 c4 c2. s2 s4 c4 c4 c4 c4 c4 c4 c2  s4 c4  s2 c4 c4 c4 c4 c4 c4 c2.
}

BBGEGxHIMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 8 = 98
    \time 6/8
    \key f \major
    
}
BBGEGxHIMusicRHA = \relative c'{ \BBGEGxHIMusicGlobal \clef "treble"
    \pcAO c8 f g a4 a16 a | bes8 f g a4. | %2
c8 g a bes8. a16 bes8 | %3
d c bes a4. \pcAO | c,8 f g a8. aes16 a8 | %5
bes f g a4. | %6
g8. g16 g8 c \pcAO e, \pcAO e | %7
g f d \pcAO c4. \cbp | %8
a'8 \postCho r r16 a r4 r8 \pcAO | %9
f \pcAO a8. \pcAO f16 \pcAO a4. | %10
d8. d16 d8 c a f | f e f g4. \pcAO | %12
c,8 f g a8. aes16 a8 | bes f g a4. | %14
bes8 c d c8. a16 \pcAO \set Score.tempoHideNote = ##t \tempo 8 = 49  \fpre f8 \fpost \set Score.tempoHideNote = ##t \tempo 8 = 98   a a g \pcAO f4. \he
}
BBGEGxHIMusicRHB = \relative c'{ \BBGEGxHIMusicGlobal \clef "treble"
    c8 c c f4 f16 f | f8 d f f4. | %2
e8 e f g8. ges16 g8 | bes a g f4. | %4
c8 c c f8. f16 f8 | f d f f4. | %6
e8. e16 e8 e e e | b b b c4. | %8
f8 c'8. f,16 c'4. | f,8 a8. f16 a4. | %10
f8. f16 f8 f c d | d d d e4. | %12
c8 c c f8. f16 f8 | f d f f4. | %14
f8 f f f8. f16 f8 f e e f4.
}
BBGEGxHIMusicRH =  \partCombine #'(2 . 20)  \BBGEGxHIMusicRHA \BBGEGxHIMusicRHB
BBGEGxHIMusicLHA = \relative c{ \BBGEGxHIMusicGlobal \clef "bass"
    a'8 a bes c4 c16 c | %1
d8 \pcAO f, des' c4. | c8 c c c8. c16 c8 | %3
c c c c4. | a8 a bes c8. b16 c8 | %5
d \pcAO f, des' c4. | %6
c8. c16 c8 \pcAO g c c | %7
g d f e4. \pcAO | %8
f8 \pcAO f8. \pcAO f16 \pcAO f4. | %9
a8 c8. a16 c4. | bes8. bes16 bes8 a a a | %11
b b b bes4. | a8 a bes c8. b16 c8 | %13
d \pcAO f, des' c4. | %14
bes8 a bes a8. c16 b8 c c bes a4.
}
BBGEGxHIMusicLHB = \relative c{ \BBGEGxHIMusicGlobal \clef "bass"
    f8 f f f4 f16 f | f8 f f f4. | %2
c8 c c c8. c16 c8 | c d e f4. | %4
f8 f f f8. f16 f8 | f f f f4. | %6
g8. g16 g8 g g g | g, g g c4. | %8
f8 f8. f16 f4. | f8 f8. f16 f4. | %10
bes,8. bes16 bes8 f' f d | g, g g c4. | %12
f8 f f f8. f16 f8 | f f f f4. | %14
d8 c bes c8. c16 \fpre d8 \fpostbelow c c c f4.
}
BBGEGxHIMusicLH =  \partCombine #'(2 . 20)  \BBGEGxHIMusicLHA \BBGEGxHIMusicLHB
BBGEGxHIMusicLyrics = \relative c''''{ \BBGEGxHIMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8 c8 c8 c4 c16 c16 c8 c8 c8 c4. c8 c8 c8 c8. c16 c8 c8 c8 c8 c4. c8 c8 c8 c8. c16 c8 c8 c8 c8 c4. c8. c16 c8 c8 c8 c8 c8 c8 c8 c4. c8 c8. c16 c4. c8 c8. c16 c4. c8. c16 c8 c8 c8 c8 c8 c8 c8 c4. c8 c8 c8 c8. c16 c8 c8 c8 c8 c4. c8 c8 c8 c8. c16 c8 c8 c8 c8 c4.
}

BBGEHxDZHMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 2 = 64
    \time 4/4
    \key des \major
    
}
BBGEHxDZHMusicRHA = \relative c'{ \BBGEHxDZHMusicGlobal \clef "treble"
    f2 f4 f | aes2 des,4 f | %2
f2 ges4 ees \pcAO |  \nbp des1 | %4
f2 f4 f | aes2 aes4 aes | bes2 aes4 f | %7
\nbp ees1 | f2 aes4 des | des2 aes4 aes | %10
bes2 bes4 bes |  \nbp aes1 | %12
des,2 des4 ees | %13
f2 \pcAO des4 \pcAO des | %14
f2 f4 ees \pcAO \nbp des1 \he
}
BBGEHxDZHMusicRHB = \relative c'{ \BBGEHxDZHMusicGlobal \clef "treble"
    des2 des4 des | ees2 bes4 des | %2
des2 c4 c | des1 | des2 des4 des | %5
ees2 f4 f | des2 des4 des | des2 (c) | %8
des f4 f | f2 f4 f | ges2 ges4 ges | f1 | %12
aes,2 bes4 des | des2 des4 des | %14
des2 c4 c des1
}
BBGEHxDZHMusicRH =  \partCombine #'(2 . 20)  \BBGEHxDZHMusicRHA \BBGEHxDZHMusicRHB
BBGEHxDZHMusicLHA = \relative c{ \BBGEHxDZHMusicGlobal \clef "bass"
    aes'2 aes4 aes | aes2 f4 f | %2
aes2 aes4 ges | f1 | aes2 bes4 bes | %5
c2 aes4 aes | ges2 aes4 aes | %7
\pcAO bes2 ( \pcAO aes) | aes des4 aes | %9
aes2 des4 des | des2 des4 des | des1 | %12
f,2 f4 ges | aes2 ges4 ges | %14
aes2 aes4 ges f1
}
BBGEHxDZHMusicLHB = \relative c{ \BBGEHxDZHMusicGlobal \clef "bass"
    des2 des4 des | c2 bes4 bes | %2
aes2 aes4 aes | des1 | %4
des4 (c) bes bes | aes2 des4 des | %6
des (ees) f f | ges2 (aes) | %8
des, des4 des | des2 des4 des | %10
ges,2 bes4 bes | des1 | des4 (c) bes beses | %13
aes2 beses4 beses | aes2 aes4 aes des1
}
BBGEHxDZHMusicLH =  \partCombine #'(2 . 20)  \BBGEHxDZHMusicLHA \BBGEHxDZHMusicLHB
BBGEHxDZHMusicLyrics = \relative c''''{ \BBGEHxDZHMusicGlobal \clef "treble"
    \hideNotes \voiceFour c2 c4 c4 c2 c4 c4 c2 c4 c4 c1 c2 c4 c4 c2 c4 c4 c2 c4 c4 c1 c2 c4 c4 c2 c4 c4 c2 c4 c4 c1 c2 c4 c4 c2 c4 c4 c2 c4 c4 c1
}

BBGEIxDZDMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 120
    \time 3/4
    \key es \major
    \partial 4
    
}
BBGEIxDZDMusicRHA = \relative c'{ \BBGEIxDZDMusicGlobal \clef "treble"
    bes'4 |  \nbp bes (g) bes | bes2 ees4 | %3
ees (d) c |  \nbp bes2 \lbp bes4 | %5
\nbp bes (aes) g | f (g) aes | %7
g (bes) g |  \nbp f2 \lbp bes4 | %9
\nbp bes (g) bes | bes2 ees4 | %11
ees (d) c |  \nbp bes2 \lbp bes4 | %13
\nbp bes (aes) g \pcAp | %14
f (g) \pcAu aes | g2 f4 \pcAO | %16
\nbp ees2 \lbp f4 | %17
\nbp f4. (g8) aes4 | g2 bes4 | %19
bes (g) c |  \nbp bes2 \lbp c4 | %21
\nbp ees2 c4 | bes4. (aes8) g4 | %23
aes2 f4 \pcAO \nbp ees2 \he
}
BBGEIxDZDMusicRHB = \relative c'{ \BBGEIxDZDMusicGlobal \clef "treble"
    g'4 | g (ees) g | g2 g4 | aes2 ees4 | %4
ees2 g4 | g f ees | d (ees) d | %7
ees2 ees4 | d2 f4 | g (ees) g | g2 g4 | %11
aes2 ees4 | ees2 g4 | g (f) ees | %14
f (e) f | ees2 d4 | ees2 d4 | %17
d4. (ees8) f4 | ees2 g4 | %19
g (ees) ees | ees2 ees4 | aes2 aes4 | %22
g4. (f8) ees4 | c (f) d ees2
}
BBGEIxDZDMusicRH =  \partCombine #'(2 . 20)  \BBGEIxDZDMusicRHA \BBGEIxDZDMusicRHB
BBGEIxDZDMusicLHA = \relative c{ \BBGEIxDZDMusicGlobal \clef "bass"
    ees'4 | ees (bes) ees | ees2 bes4 | %3
c (bes) aes | g2 bes4 | bes2 bes4 | %6
bes2 bes4 | bes2 bes4 | bes2 d4 | %9
ees (bes) ees | ees2 bes4 | %11
c (bes) aes | g2 bes4 | bes2 bes4 | %14
c (bes) c \pcAO | bes2 aes4 | g2 bes4 | %17
bes2 bes4 | bes2 ees4 | ees (bes) aes | %20
g2 \pcAO aes4 | c2 ees4 | %22
ees4. (bes8) bes4 | %23
aes (c) bes8 [aes] g2
}
BBGEIxDZDMusicLHB = \relative c{ \BBGEIxDZDMusicGlobal \clef "bass"
    ees4 | ees2 ees4 | ees2 ees4 | %3
ees2 ees4 | ees2 ees4 | ees (f) g | %6
aes (g) f | ees (g) ees | bes2 bes'4 | %9
ees,2 ees4 | ees2 ees4 | ees2 ees4 | %12
ees2 ees4 | ees (f) g | aes (g) f | %15
bes2 bes,4 | ees2 bes4 | bes2 bes4 | %18
ees2 ees4 | ees2 ees4 | ees2 aes4 | %21
aes2 aes4 | ees2 ees4 | f2 bes,4 ees2
}
BBGEIxDZDMusicLH =  \partCombine #'(2 . 20)  \BBGEIxDZDMusicLHA \BBGEIxDZDMusicLHB
BBGEIxDZDMusicLyrics = \relative c''''{ \BBGEIxDZDMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c4  s4 c4 c2 c4 c4  s4 c4 c2 c4 c4  s4 c4 c4  s4 c4 c4  s4 c4 c2 c4 c4  s4 c4 c2 c4 c4  s4 c4 c2 c4 c4  s4 c4 c4  s4 c4 c2 c4 c2 c4 c4.  s8 c4 c2 c4 c4  s4 c4 c2 c4 c2 c4 c4.  s8 c4 c2 c4 c2
}

BBGFZxBGBMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 64
    \time 2/4
    \key des \major
    
}
BBGFZxBGBMusicRHA = \relative c'{ \BBGFZxBGBMusicGlobal \clef "treble"
    aes'4 aes8 aes | aes4. aes8 | %2
des des c bes |  \nbp aes4 f | f ges8 f | %5
bes4. aes8 | des, des ees8. f16 | %7
\nbp ees2 | ees4 ges8 f | bes4. aes8 | %10
des des des des |  \nbp des4 c | %12
c des8 bes | aes4. \pcAO des,8 | %14
ges f f8. ees16 \pcAO \nbp des2 \he
}
BBGFZxBGBMusicRHB = \relative c'{ \BBGFZxBGBMusicGlobal \clef "treble"
    f4 ees8 ges | f4. f8 | ges bes aes ges | %3
f4 des | des des8 des | des4. des8 | %6
bes bes bes8. des16 | c2 | c4 c8 des | %9
des4. f8 | f f g g | aes4 aes | %12
ges f8 ges | des4. des8 | %14
des des c8. c16 des2
}
BBGFZxBGBMusicRH =  \partCombine #'(2 . 20)  \BBGFZxBGBMusicRHA \BBGFZxBGBMusicRHB
BBGFZxBGBMusicLHA = \relative c{ \BBGFZxBGBMusicGlobal \clef "bass"
    aes'4 ges8 c | des4. des8 | %2
des des des des | des4 aes | %4
b bes8 aes \pcAO | ges4. aes8 | %6
f f g8. g16 | aes2 | aes4 aes8 aes | %9
bes4. des8 | des des ees ees | f4 ees | %12
ees des8 des | aes4. bes8 | %14
bes bes aes8. ges16 f2
}
BBGFZxBGBMusicLHB = \relative c{ \BBGFZxBGBMusicGlobal \clef "bass"
    des4 des8 des | des4. b'8 | %2
bes ges ges ges | des4 des | %4
des des8 des | ges4. f8 | %6
bes, bes ees8. ees16 | aes,2 | %8
aes4 aes8 des | ges4. f8 | %10
bes bes bes bes | aes4 aes | %12
aes bes8 ges | f4. bes,8 | %14
ees ees aes,8. aes16 des2
}
BBGFZxBGBMusicLH =  \partCombine #'(2 . 20)  \BBGFZxBGBMusicLHA \BBGFZxBGBMusicLHB
BBGFZxBGBMusicLyrics = \relative c''''{ \BBGFZxBGBMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c8 c8 c4. c8 c8 c8 c8 c8 c4 c4 c4 c8 c8 c4. c8 c8 c8 c8. c16 c2 c4 c8 c8 c4. c8 c8 c8 c8 c8 c4 c4 c4 c8 c8 c4. c8 c8 c8 c8. c16 c2
}

BBGFAxDAZMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 60
    \time 2/4
    \key as \major
    
}
BBGFAxDAZMusicRHA = \relative c'{ \BBGFAxDAZMusicGlobal \clef "treble"
    ees4 d8 ees | f4. ees8 | ees c' bes aes | %3
\nbp aes4 g | bes g8 aes | %5
bes4 c \pcAO | ees,8 \pcAO ees g8. f16 | %7
\nbp ees2 | ees4 d8 ees | f4. ees8 | %10
aes c ees des |  \nbp c4 bes | %12
ees des8 c | f,4 bes | %14
aes8 g c8. bes16 \pcAO \nbp aes2 \he
}
BBGFAxDAZMusicRHB = \relative c'{ \BBGFAxDAZMusicGlobal \clef "treble"
    c4 b8 c | des4. c8 | c ees ees ees | %3
ees4 ees | ees ees8 ees | ees4 ees | %6
ees8 ees d8. d16 | ees4 (des) | c b8 c | %9
des4. c8 | ees ees ees f | ees4 ees | %12
ees ees8 ees | des4 f | ees8 ees g8. g16 aes2
}
BBGFAxDAZMusicRH =  \partCombine #'(2 . 20)  \BBGFAxDAZMusicRHA \BBGFAxDAZMusicRHB
BBGFAxDAZMusicLHA = \relative c{ \BBGFAxDAZMusicGlobal \clef "bass"
    aes'4 aes8 aes | aes4. aes8 | %2
aes aes aes aes | c4 bes | g bes8 c | %5
g4 aes | g8 g bes8. aes16 | g2 | %8
aes4 aes8 aes | aes4. aes8 | %10
aes aes aes aes | aes4 g | aes g8 aes | %13
aes4 des | c8 bes ees8. des16 c2
}
BBGFAxDAZMusicLHB = \relative c{ \BBGFAxDAZMusicGlobal \clef "bass"
    aes4 aes8 aes | aes4. aes8 | aes aes c c | %3
ees4 ees | ees ees8 ees | ees4 aes, | %6
bes8 bes bes8. bes16 | ees2 | %8
aes,4 aes8 aes | aes4. aes8 | %10
c aes c des | ees4 ees | c bes8 aes | %13
des4 bes | ees8 ees ees8. ees16 aes,2
}
BBGFAxDAZMusicLH =  \partCombine #'(2 . 20)  \BBGFAxDAZMusicLHA \BBGFAxDAZMusicLHB
BBGFAxDAZMusicLyrics = \relative c''''{ \BBGFAxDAZMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c8 c8 c4. c8 c8 c8 c8 c8 c4 c4 c4 c8 c8 c4 c4 c8 c8 c8. c16 c2 c4 c8 c8 c4. c8 c8 c8 c8 c8 c4 c4 c4 c8 c8 c4 c4 c8 c8 c8. c16 c2
}

BBGFBxAELessSylMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 2 = 98
    \time 4/2
    \key f \major
    \partial 2
    
}
BBGFBxAELessSylMusicRHA = \relative c'{ \BBGFBxAELessSylMusicGlobal \clef "treble"
    f4 (g) |  \nbp a2. a4 bes2 a | %2
\nbp a1 (g2) a4 (g) \pcAO | %3
\nbp f2. \pcAO f4 g2 c | %4
\nbp a1. \lbp c2 |  \nbp d2. c4 bes2 a | %6
c2. bes4 a2 \lbp g \pcAO | %7
\nbp f2. g4 a2 g \pcAO \nbp f1. \he
}
BBGFBxAELessSylMusicRHB = \relative c'{ \BBGFBxAELessSylMusicGlobal \clef "treble"
    f2 | f2. f4 g2 f | f1 (e2) e | %3
f2. f4 f2 e | f1. f2 | f2. e4 f2 f | %6
f2. f4 f2 e | f2. f4 f2 e f1.
}
BBGFBxAELessSylMusicRH =  \partCombine #'(2 . 20)  \BBGFBxAELessSylMusicRHA \BBGFBxAELessSylMusicRHB
BBGFBxAELessSylMusicLHA = \relative c{ \BBGFBxAELessSylMusicGlobal \clef "bass"
    a'4 (bes) | c2. c4 c2 c | %2
c1~c2 c4 (bes) | a2. a4 c2 c | c1. a2 | %5
bes2. g4 f2 c' | c2. d4 c2 bes | %7
a2. d4 c2 bes a1.
}
BBGFBxAELessSylMusicLHB = \relative c{ \BBGFBxAELessSylMusicGlobal \clef "bass"
    f2 | f2. f4 e2 f | c1~c2 c2 | d2. d4 c2 c | %4
f1. f2 | bes,2. c4 d2 f | a,2. bes4 c2 c | %7
d2. bes4 c2 c f1.
}
BBGFBxAELessSylMusicLH =  \partCombine #'(2 . 20)  \BBGFBxAELessSylMusicLHA \BBGFBxAELessSylMusicLHB
BBGFBxAELessSylMusicLyrics = \relative c''''{ \BBGFBxAELessSylMusicGlobal \clef "treble"
    \hideNotes \voiceFour c2 c2. c4 c2 c2 c1  s2 c2 c2. c4 c2 c2 c1. c2 c2. c4 c2 c2 c2. c4 c2 c2 c2. c4 c2 c2 c1.
}

BBGFCxIAMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 62
    \time 3/4
    \key as \major
    \partial 4.
    
}
BBGFCxIAMusicRHA = \relative c'{ \BBGFCxIAMusicGlobal \clef "treble"
    ees8 aes8. bes16 | c4. ees,8 f aes | %2
\nbp aes4. \lbp aes8 g f | %3
ees4. c'8 c8. aes16 | %4
\nbp bes4. \lbp ees,8 aes8. bes16 | %5
c4. ees,8 f aes | %6
\nbp aes4. \lbp aes8 g f | %7
ees4. c'8 bes8. aes16 | %8
\nbp aes4. \cbp  aes8 \postCho des8. des16 | %9
des4. des8 c8. aes16 | %10
\nbp c4. \lbp c8 c8. c16 | %11
ees4. c8 c \pcAO aes | %12
\nbp bes4. \lbp ees,8 aes8. bes16 | %13
c4. ees,8 f aes | %14
\nbp aes4. \lbp aes8 g f | %15
ees4. c'8 bes8. aes16 \nbp aes4. \he
}
BBGFCxIAMusicRHB = \relative c'{ \BBGFCxIAMusicGlobal \clef "treble"
    c8 c8. des16 | ees4. c8 des f | %2
f4. f8 ees des | c4. ees8 ees8. ees16 | %4
ees4. des8 c8. des16 | ees4. c8 des f | %6
f4. f8 ees des | c4. ees8 des8. c16 | %8
c4. c8 f8. f16 | f4. f8 ees8. c16 | %10
ees4. ees8 ees8. ees16 | %11
aes4. aes8 aes aes | g4. des8 c8. des16 | %13
ees4. c8 des f | f4. f8 ees des | %15
c4. ees8 des8. c16 c4.
}
BBGFCxIAMusicRH =  \partCombine #'(2 . 20)  \BBGFCxIAMusicRHA \BBGFCxIAMusicRHB
BBGFCxIAMusicLHA = \relative c{ \BBGFCxIAMusicGlobal \clef "bass"
    aes'8 aes8. aes16 | aes4. aes8 aes des | %2
des4. des8 aes aes | %3
aes4. aes8 aes8. aes16 | %4
g4. g8 aes8. aes16 | aes4. aes8 aes des | %6
des4. des8 aes aes | aes4. aes8 g8. aes16 | %8
aes4. \pcAO aes8 aes8. aes16 | %9
aes4. aes8 aes8. aes16 | %10
aes4. \pcAO aes8 \pcAO aes8. \pcAO aes16 | %11
c4. ees8 ees c | ees4. g,8 aes8. aes16 | %13
aes4. aes8 aes des | des4. des8 aes aes | %15
aes4. aes8 g8. aes16 aes4.
}
BBGFCxIAMusicLHB = \relative c{ \BBGFCxIAMusicGlobal \clef "bass"
    aes8 aes8. aes16 | aes4. aes8 des des | %2
des4. des8 des des | aes4. aes8 aes8. c16 | %4
ees4. ees8 aes,8. aes16 | %5
aes4. aes8 des des | des4. des8 des des | %7
ees4. ees8 ees8. aes,16 | %8
aes4. aes'8 des,8. des16 | %9
des4. des8 aes8. aes16 | %10
aes4. aes'8 aes8. aes16 | %11
aes4. aes8 aes aes | %12
ees4. ees8 aes,8. aes16 | %13
aes4. aes8 des des | des4. des8 des des | %15
ees4. ees8 ees8. aes,16 aes4.
}
BBGFCxIAMusicLH =  \partCombine #'(2 . 20)  \BBGFCxIAMusicLHA \BBGFCxIAMusicLHB
BBGFCxIAMusicLyrics = \relative c''''{ \BBGFCxIAMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8 c8. c16 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8. c16 c4. c8 c8. c16 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8. c16 c4. c8 c8. c16 c4. c8 c8. c16 c4. c8 c8. c16 c4. c8 c8 c8 c4. c8 c8. c16 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8. c16 c4.
}

BBGFDxBABMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 2 = 64
    \time 3/4
    \key g \major
    \partial 4
    
}
BBGFDxBABMusicRHA = \relative c'{ \BBGFDxBABMusicGlobal \clef "treble"
    b'4 |  \nbp b (a) b | c (b) a | %3
b2 a4 \pcAO |  \nbp g2 \lbp g4 \pcAp | %5
\nbp g (e) \pcAu g | g2 e4 \pcAp | %7
\nbp d2.~| d4 \pcAu r \lbp b' | %9
\nbp b (a) b | c (b) a | b2 a4 | %12
\nbp g2 \lbp g4 |  \nbp a (b) c | %14
b2 a4 \pcAp |  \nbp g2.~| %16
g4 \pcAu r \lbp a |  \nbp a (b) c | %18
c (b) a | b2 c4 | %20
\nbp d2 \pcAO \lbp g,4 | %21
\nbp g (a) b | b2 g4 | a2 a4 \nbp \set Score.tempoHideNote = ##t \tempo 2 = 32  \fpre g2 \fpost \set Score.tempoHideNote = ##t \tempo 2 = 64   \he
}
BBGFDxBABMusicRHB = \relative c'{ \BBGFDxBABMusicGlobal \clef "treble"
    g'4 | g2 g4 | g2 g4 | g2 fis4 | g2 f4 | %5
e2 e4 | e2 c4 | d2.~| d4 r g | g2 g4 | %10
g2 fis4 | fis2 fis4 | e2 e4 | e2 e4 | %14
g2 fis4 | g2.~| g4 r fis | %17
fis (g) a | a (g) fis | g2 fis4 | %20
g2 g4 | e (dis) d | d2 cis4 | c2 c4 b2
}
BBGFDxBABMusicRH =  \partCombine #'(2 . 20)  \BBGFDxBABMusicRHA \BBGFDxBABMusicRHB
BBGFDxBABMusicLHA = \relative c{ \BBGFDxBABMusicGlobal \clef "bass"
    d'4 | d (c) d | e (d) c | d2 c4 | %4
b2 b4 | c (g) c | c2 g4 | b2.~| %8
b4 r d | d (c) d | e (d) c | b2 b4 | %12
b2 b4 | c2 g4 | d'2 c4 | b2.~| %16
b4 r d | d2 d4 | d2 d4 | d2 d4 | d2 b4 | %21
g2 g4 | g2 g4 | fis2 fis4 g2
}
BBGFDxBABMusicLHB = \relative c{ \BBGFDxBABMusicGlobal \clef "bass"
    g'4 | g2 g4 | g2 g4 | d2 d4 | g2 g4 | %5
c,2 c4 | c2 c4 | g'2.~| g4 r g | %9
g2 g4 | g2 d4 | dis2 dis4 | e2 d4 | %13
c2 c4 | d2 d4 | g2.~| g4 r d | d2 d4 | %18
d2 d4 | g2 a4 | b2 g4 | c,2 d4 | d2 e4 | %23
d2 d4 \fpre g,2 \fpostbelow
}
BBGFDxBABMusicLH =  \partCombine #'(2 . 20)  \BBGFDxBABMusicLHA \BBGFDxBABMusicLHB
BBGFDxBABMusicLyrics = \relative c''''{ \BBGFDxBABMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c4  s4 c4 c4  s4 c4 c2 c4 c2 c4 c4  s4 c4 c2 c4 c2. s4 s4 c4 c4  s4 c4 c4  s4 c4 c2 c4 c2 c4 c4  s4 c4 c2 c4 c2. s4 s4 c4 c4  s4 c4 c4  s4 c4 c2 c4 c2 c4 c4  s4 c4 c2 c4 c2 c4 c2
}

BBGFExGFMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 84
    \time 9/8
    \key f \major
    \partial 4.
    
}
BBGFExGFMusicRHA = \relative c'{ \BBGFExGFMusicGlobal \clef "treble"
    a'8 gis a | f4. f a8 gis a | %2
\nbp bes2. \lbp bes8 a bes | %3
g4. g c8 b c |  \nbp a2. \lbp a8 gis a | %5
f4. f a8 gis a |  \nbp bes2. \lbp f8 e d | %7
c4. f a8 f g | %8
\nbp f2. \cbp c'8 \postCho b c | %9
a4. a c8 b c | %10
\nbp bes2. \lbp bes8 a bes | %11
g4. g \pcAO c,8 f bes | %12
\nbp a2. \lbp a8 gis a \pcAO | %13
f4. \pcAO f a8 gis a | %14
\nbp bes2. \lbp f8 e d | %15
c4. f a8 \pcAO f g \pcAO \nbp f2. \he
}
BBGFExGFMusicRHB = \relative c'{ \BBGFExGFMusicGlobal \clef "treble"
    f8 f f | c4. c f8 f f | e2. e8 e e | %3
e4. e f8 f f | f2. f8 f f | %5
c4. c ees8 ees ees | d2. d8 c bes | %7
a4. c f8 c c | c2. f8 f f | f4. f f8 f f | %10
e2. g8 fis g | e4. e c8 c f | f2. f8 f f | %13
f4. f ees8 ees ees | d2. d8 c bes | %15
a4. c f8 f e f2.
}
BBGFExGFMusicRH =  \partCombine #'(2 . 20)  \BBGFExGFMusicRHA \BBGFExGFMusicRHB
BBGFExGFMusicLHA = \relative c{ \BBGFExGFMusicGlobal \clef "bass"
    c'8 b c | a4. a c8 b c | c2. g8 fis g | %3
c4. c a8 gis a | c2. c8 b c | %5
a4. a c8 c c | bes2. f8 f f | %7
f4. a c8 a bes | a2. a8 gis a | %9
c4. c a8 gis a | c2. c8 c c | %11
c4. c a8 a d | c2. c8 b c | a4. a c8 c c | %14
bes2. bes8 bes f | f4. a c8 a bes a2.
}
BBGFExGFMusicLHB = \relative c{ \BBGFExGFMusicGlobal \clef "bass"
    f8 f f | f4. f f8 f f | g2. c,8 c c | %3
c4. c f8 f f | f2. f8 f f | f4. f f8 f f | %6
bes,2. bes8 bes bes | c4. c c8 c c | %8
f2. f8 f f | f4. f f8 f f | g2. c,8 c c | %11
c4. c f8 f f | f2. f8 f f | f4. f f8 f f | %14
bes,2. bes8 bes bes | c4. c c8 c c f,2.
}
BBGFExGFMusicLH =  \partCombine #'(2 . 20)  \BBGFExGFMusicLHA \BBGFExGFMusicLHB
BBGFExGFMusicLyrics = \relative c''''{ \BBGFExGFMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8 c8 c8 c4. c4. c8 c8 c8 c2. c8 c8 c8 c4. c4. c8 c8 c8 c2. c8 c8 c8 c4. c4. c8 c8 c8 c2. c8 c8 c8 c4. c4. c8 c8 c8 c2. c8 c8 c8 c4. c4. c8 c8 c8 c2. c8 c8 c8 c4. c4. c8 c8 c8 c2. c8 c8 c8 c4. c4. c8 c8 c8 c2. c8 c8 c8 c4. c4. c8 c8 c8 c2.
}

BBGFFxBCBMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 64
    \time 3/4
    \key f \major
    \partial 4
    
}
BBGFFxBCBMusicRHA = \relative c'{ \BBGFFxBCBMusicGlobal \clef "treble"
    c'8. d16 |  \nbp c4 a a8. bes16 | %2
\nbp a4 \pcAO f \lbp e8 \pcAO f | %3
\nbp g4. a8 bes c | %4
\nbp a2 \lbp c8. d16 | %5
\nbp c4 a a8. bes16 | %6
\nbp a4 f \pcAO \lbp f8 f | %7
\nbp f bes a4 g \pcAO | %8
\nbp f2 \cbp c'8. \postCho c16 | %9
\nbp d4 bes d8. d16 | %10
\nbp c4 a \lbp c8 a |  \nbp g c e4 d | %12
\nbp c2 \lbp c8. d16 | %13
\nbp c4 a a8. bes16 | %14
\nbp a4 f \pcAO \lbp f8 f | %15
\nbp f bes a4 g \pcAO \nbp f2 \he
}
BBGFFxBCBMusicRHB = \relative c'{ \BBGFFxBCBMusicGlobal \clef "treble"
    a'8. bes16 | a4 f f8. f16 | f4 f c8 f | %3
e4. f8 g e | f2 f8. f16 | f4 f f8. f16 | %6
f4 c f8 ees | d g f4 e | f2 f8. f16 | %9
f4 d f8. f16 | f4 f f8 f | e g g4 f | %12
e2 f8. f16 | f4 f f8. f16 | f4 c f8 ees | %15
d g f4 e f2
}
BBGFFxBCBMusicRH =  \partCombine #'(2 . 20)  \BBGFFxBCBMusicRHA \BBGFFxBCBMusicRHB
BBGFFxBCBMusicLHA = \relative c{ \BBGFFxBCBMusicGlobal \clef "bass"
    c'8. c16 | c4 c c8. d16 | c4 c c8 c | %3
c4. c8 c c | c2 a8. bes16 | a4 c c8. d16 | %6
c4 a a8 a | bes d c4 bes | a2 a8. a16 | %9
bes4 f bes8. bes16 | a4 c a8 c | %11
c e c4 b | c (bes) a8. bes16 | %13
a4 c c8. d16 | c4 a a8 a | bes d c4 bes a2
}
BBGFFxBCBMusicLHB = \relative c{ \BBGFFxBCBMusicGlobal \clef "bass"
    f8. f16 | f4 f f8. f16 | f4 a bes8 a | %3
g4. f8 e c | f2 f8. f16 | f4 f f8. f16 | %6
f4 f d8 c | bes g c4 c | f2 f8. f16 | %9
bes,4 bes bes8. d16 | f4 f f8 f | %11
g g g4 g, | c2 f8. f16 | f4 f f8. f16 | %14
f4 f d8 c | bes g c4 c f2
}
BBGFFxBCBMusicLH =  \partCombine #'(2 . 20)  \BBGFFxBCBMusicLHA \BBGFFxBCBMusicLHB
BBGFFxBCBMusicLyrics = \relative c''''{ \BBGFFxBCBMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8. c16 c4 c4 c8. c16 c4 c4 c8 c8 c4. c8 c8 c8 c2 c8. c16 c4 c4 c8. c16 c4 c4 c8 c8 c8 c8 c4 c4 c2 c8. c16 c4 c4 c8. c16 c4 c4 c8 c8 c8 c8 c4 c4 c2 c8. c16 c4 c4 c8. c16 c4 c4 c8 c8 c8 c8 c4 c4 c2
}

BBGFGxCEMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 62
    \time 2/4
    \key d \major
    
}
BBGFGxCEMusicRHA = \relative c'{ \BBGFGxCEMusicGlobal \clef "treble"
    fis8 fis fis g | a a a fis | g4 fis | %3
\nbp g2 | e8 fis g a | cis b a g | %6
fis4 g |  \nbp a2 | fis8 fis fis g | %9
a a a fis | g4 fis |  \nbp g2 | %12
e8 fis g a | cis b a g | fis4 e \pcAO | %15
\nbp d2 \cbp | a'4. \postCho a8 | %17
\nbp d a a fis | g4 g |  \nbp g2 | %20
g4. g8 |  \nbp cis b a g | fis4 g | %23
\nbp a2 | d4. d8 |  \nbp cis4. b8 | %26
cis cis b b |  \nbp a2 | d8 d cis d | %29
cis b a g | fis4 e \pcAO \nbp d2 \he
}
BBGFGxCEMusicRHB = \relative c'{ \BBGFGxCEMusicGlobal \clef "treble"
    d8 d d e | fis fis fis d | e4 dis | e2 | %4
cis8 d e fis | a g fis e | d4 e | fis2 | %8
d8 d d e | fis fis fis d | e4 dis | e2 | %12
cis8 d e fis | a g fis e | d4 cis | d2 | %16
fis4. fis8 | fis fis fis d | %18
e [d] cis [b] | cis2 | e4. e8 | %21
a g fis e | d4 e | fis2 | fis4. fis8 | %25
a4. g8 | g g g g | g2 | %28
fis8 fis fis fis | a g e e | d4 cis d2
}
BBGFGxCEMusicRH =  \partCombine #'(2 . 20)  \BBGFGxCEMusicRHA \BBGFGxCEMusicRHB
BBGFGxCEMusicLHA = \relative c{ \BBGFGxCEMusicGlobal \clef "bass"
    a'8 a a a | d d d a | a4 a | a2 | %4
a8 a a a | a a a a | a4 a | d2 | %8
a8 a a a | d d d a | a4 a | a2 | %12
a8 a a a | a a a a | a4 g | fis2 | %16
d'4. d8 | a a a a | a4 a | a2 | a4. a8 | %21
a a a a | a4 a | d2 | a4. d8 | d4. d8 | %26
cis e d d | cis2 | d8 d d d | %29
d d b b \pcAO | a4 g fis2
}
BBGFGxCEMusicLHB = \relative c{ \BBGFGxCEMusicGlobal \clef "bass"
    d8 d d d | d d d d | a4 a | a2 | %4
a8 a a a | a a a a | d4 d | d2 | %8
d8 d d d | d d d d | a4 a | a2 | %12
a8 a a a | a a a a | a4 a | d2 | %16
d4. d8 | d d d d | a4 a | a2 | a4. a8 | %21
a a a a | d4 d | d2 | d4. d8 | g4. g8 | %26
a a a a | a2 | d,8 d d d | g g g g | %30
a4 a, d2
}
BBGFGxCEMusicLH =  \partCombine #'(2 . 20)  \BBGFGxCEMusicLHA \BBGFGxCEMusicLHB
BBGFGxCEMusicLyrics = \relative c''''{ \BBGFGxCEMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8 c8 c8 c8 c8 c8 c8 c8 c4 c4 c2 c8 c8 c8 c8 c8 c8 c8 c8 c4 c4 c2 c8 c8 c8 c8 c8 c8 c8 c8 c4 c4 c2 c8 c8 c8 c8 c8 c8 c8 c8 c4 c4 c2 c4. c8 c8 c8 c8 c8 c4 c4 c2 c4. c8 c8 c8 c8 c8 c4 c4 c2 c4. c8 c4. c8 c8 c8 c8 c8 c2 c8 c8 c8 c8 c8 c8 c8 c8 c4 c4 c2
}

BBGFHxCGMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 90
    \time 4/4
    \key as \major
    
}
BBGFHxCGMusicRHA = \relative c'{ \BBGFHxCGMusicGlobal \clef "treble"
    ees4. ees8 f ees c ees |  \nbp f2 aes | %2
g4. f8 ees f g bes |  \nbp aes1 | %4
ees4. ees8 f ees c ees |  \nbp f2 aes | %6
g4. f8 ees f g bes |  \nbp aes1 \cbp | %8
c4. \postCho c8 bes aes aes bes | %9
\nbp aes2 \pcAO f | %10
bes4. c8 bes aes g ees |  \nbp aes1 | %12
ees4. ees8 f ees c ees |  \nbp f2 aes | %14
g4. f8 ees f g bes \nbp aes1 \he
}
BBGFHxCGMusicRHB = \relative c'{ \BBGFHxCGMusicGlobal \clef "treble"
    c4. c8 des c aes c | des2 f | %2
ees4. des8 des des des des | c1 | %4
c4. c8 des c aes c | des2 f | %6
ees4. des8 des des des des | c1 | %8
ees4. ees8 ees ees ges ges | f2 f | %10
ees4. ees8 ees ees ees des | c1 | %12
c4. c8 des c aes c | des2 f | %14
ees4. des8 des des des des c1
}
BBGFHxCGMusicRH =  \partCombine #'(2 . 20)  \BBGFHxCGMusicRHA \BBGFHxCGMusicRHB
BBGFHxCGMusicLHA = \relative c{ \BBGFHxCGMusicGlobal \clef "bass"
    aes'4. aes8 aes aes ees aes | aes2 des | %2
bes4. aes8 g aes bes g | aes1 | %4
aes4. aes8 aes aes ees aes | aes2 des | %6
bes4. aes8 g aes bes g | aes1 | %8
c4. c8 des c c c | des2 aes | %10
g4. aes8 g c des g, | aes1 | %12
aes4. aes8 aes aes ees aes | aes2 des | %14
bes4. aes8 g aes bes g aes1
}
BBGFHxCGMusicLHB = \relative c{ \BBGFHxCGMusicGlobal \clef "bass"
    aes4. aes8 aes aes aes aes | des2 des | %2
ees4. ees8 ees ees ees ees | aes,1 | %4
aes4. aes8 aes aes aes aes | des2 des | %6
ees4. ees8 ees ees ees ees | aes,1 | %8
aes'4. aes8 aes aes aes aes | des,2 des | %10
ees4. ees8 ees ees ees ees | aes,1 | %12
aes4. aes8 aes aes aes aes | des2 des | %14
ees4. ees8 ees ees ees ees aes,1
}
BBGFHxCGMusicLH =  \partCombine #'(2 . 20)  \BBGFHxCGMusicLHA \BBGFHxCGMusicLHB
BBGFHxCGMusicLyrics = \relative c''''{ \BBGFHxCGMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4. c8 c8 c8 c8 c8 c2 c2 c4. c8 c8 c8 c8 c8 c1 c4. c8 c8 c8 c8 c8 c2 c2 c4. c8 c8 c8 c8 c8 c1 c4. c8 c8 c8 c8 c8 c2 c2 c4. c8 c8 c8 c8 c8 c1 c4. c8 c8 c8 c8 c8 c2 c2 c4. c8 c8 c8 c8 c8 c1
}

BBGFIxCIMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 60
    \time 3/4
    \key es \major
    \partial 4.
    
}
BBGFIxCIMusicRHA = \relative c'{ \BBGFIxCIMusicGlobal \clef "treble"
    g'8 g aes | g4. f8 \pcAO bes, f' | %2
\nbp ees4. \lbp ees8 d ees | %3
aes4. g8 f8. \pcAO c16 | %4
\nbp f4. \fb g8 g aes | %5
g4. f8 \pcAO bes, f' | %6
\nbp ees4. \lbp g8 f g | bes aes g4. f8 | %8
\nbp ees4. \cbp g8 \postCho g bes | %9
bes4. c8 g bes | %10
\nbp bes4. \lbp bes8 bes aes | %11
aes bes d4. c8 | %12
\nbp bes4. \fb g8 g bes | %13
bes4. c8 g bes | %14
\nbp bes4. \lbp bes8 bes ees, | %15
ees aes g4. f8 \pcAO \nbp ees4. \he
}
BBGFIxCIMusicRHB = \relative c'{ \BBGFIxCIMusicGlobal \clef "treble"
    ees8 ees ees | ees4. d8 bes bes | %2
bes4. bes8 bes bes | ees4. ees8 c8. c16 | %4
bes4. ees8 ees ees | ees4. d8 bes bes | %6
bes4. ees8 ees ees | ees ees ees4. d8 | %8
bes4. ees8 ees g | g4. g8 ees g | %10
aes4. g8 g f | f g aes4. aes8 | %12
g4. ees8 ees g | g4. g8 ees ees | %14
d4. d8 des des | c ees ees4. d8 ees4.
}
BBGFIxCIMusicRH =  \partCombine #'(2 . 20)  \BBGFIxCIMusicRHA \BBGFIxCIMusicRHB
BBGFIxCIMusicLHA = \relative c{ \BBGFIxCIMusicGlobal \clef "bass"
    bes'8 bes c | bes4. aes8 aes aes | %2
g4. g8 f g | c4. bes8 a8. a16 | %4
bes4. bes8 bes c | bes4. aes8 aes aes | %6
g4. bes8 aes bes | c ces \pcAO bes4. aes8 | %8
g4. bes8 bes ees | ees4. ees8 bes ees | %10
d4. bes8 bes bes | bes bes bes4. d8 | %12
ees4. bes8 bes ees | ees4. ees8 bes g | %14
aes4. aes8 g bes | aes c bes4. aes8 g4.
}
BBGFIxCIMusicLHB = \relative c{ \BBGFIxCIMusicGlobal \clef "bass"
    ees8 ees ees | ees4. bes8 bes bes | %2
ees4. ees8 ees ees | %3
ees4. ees8 ees8. ees16 | d4. ees8 ees ees | %5
ees4. bes8 bes bes | ees4. ees8 ees ees | %7
aes aes bes4. bes,8 | ees4. ees8 ees ees | %9
ees4. ees8 ees ees | f4. ees8 bes bes | %11
bes bes bes4. bes8 | ees4. ees8 ees ees | %13
ees4. ees8 ees ees | f4. f8 ees g, | %15
aes aes bes4. bes8 ees4.
}
BBGFIxCIMusicLH =  \partCombine #'(2 . 20)  \BBGFIxCIMusicLHA \BBGFIxCIMusicLHB
BBGFIxCIMusicLyrics = \relative c''''{ \BBGFIxCIMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8. c16 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c8 c8 c4. c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c8 c8 c4. c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c8 c8 c4. c8 c4.
}

BBGGZxBIMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 98
    \time 6/4
    \key as \major
    \partial 4
    
}
BBGGZxBIMusicRHA = \relative c'{ \BBGGZxBIMusicGlobal \clef "treble"
    ees4 |  \nbp c'4. c8 c4 c4. bes8 aes4 | %2
aes4. f8 aes4  ees2 \lbp ees4 | %3
\nbp aes4. aes8 aes4 aes bes c | %4
\nbp bes2.~bes2 \postSegnoMark \pcAO \lbp ees,4 | %5
\nbp c'4. c8 c4 c4. bes8 aes4 | %6
aes4. f8 aes4  ees2 \pcAO \lbp ees4 | %7
\nbp aes4. aes8 aes4 c4. bes8 bes4 | %8
\nbp aes2.~aes2 \postFine \cbp aes4 \postCho | %9
\nbp des4. des8 des4 des4. des8 des4 | %10
c4. c8 c4 c2 c8 [bes] | %11
\nbp aes4. aes8 aes4 aes bes c \nbp bes2.~bes2 \postDS \he
}
BBGGZxBIMusicRHB = \relative c'{ \BBGGZxBIMusicGlobal \clef "treble"
    c4 | ees4. ees8 ees4 ees4. ees8 ees4 | %2
f4. des8 des4 c2 c4 | %3
c4. c8 c4 ees ees ees | ees2.~ees2 ees4 | %5
ees4. ees8 ees4 ees4. ees8 ees4 | %6
f4. des8 des4 c2 ees4 | %7
c4. c8 c4 ees4. des8 des4 | %8
c2.~c2 c4 | f4. f8 f4 f4. f8 f4 | %10
ees4. ees8 ees4 ees2 ees8 [des] | %11
c4. c8 c4 ees ees ees ees2.~ees2
}
BBGGZxBIMusicRH =  \partCombine #'(2 . 20)  \BBGGZxBIMusicRHA \BBGGZxBIMusicRHB
BBGGZxBIMusicLHA = \relative c{ \BBGGZxBIMusicGlobal \clef "bass"
    aes'4 | aes4. aes8 aes4 aes4. g8 aes4 | %2
aes4. aes8 aes4 \pcAO aes2 aes4 | %3
ees4. ees8 ees4 aes g aes | %4
g2.~g2 \pcAO ees4 | %5
aes4. aes8 aes4 aes4. g8 aes4 | %6
des4. aes8 aes4 \pcAO aes2 aes4 | %7
aes4. aes8 aes4 aes4. g8 g4 | %8
aes2.~aes2 \pcAO aes4 | %9
aes4. aes8 aes4 aes4. aes8 aes4 | %10
aes4. aes8 aes4 aes2 aes4 | %11
aes4. aes8 aes4 aes g aes g2.~g2
}
BBGGZxBIMusicLHB = \relative c{ \BBGGZxBIMusicGlobal \clef "bass"
    aes4 | aes4. aes8 aes4 aes4. bes8 c4 | %2
des4. des8 f4 aes2 aes,4 | %3
aes4. aes8 aes4 c bes aes | %4
ees'2.~ees2 ees4 | %5
aes,4. aes8 aes4 aes4. bes8 c4 | %6
des4. des8 f4 aes2 c,4 | %7
ees4. ees8 ees4 ees4. ees8 ees4 | %8
aes,2.~aes2 aes'4 | %9
des,4. des8 des4 des4. des8 des4 | %10
aes4. aes8 aes4 aes2 aes4 | %11
aes4. aes8 aes4 c bes aes ees'2.~ees2
}
BBGGZxBIMusicLH =  \partCombine #'(2 . 20)  \BBGGZxBIMusicLHA \BBGGZxBIMusicLHB
BBGGZxBIMusicLyrics = \relative c''''{ \BBGGZxBIMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c4. c8 c4 c4. c8 c4 c4. c8 c4 c2 c4 c4. c8 c4 c4 c4 c4 c2.  s2 c4 c4. c8 c4 c4. c8 c4 c4. c8 c4 c2 c4 c4. c8 c4 c4. c8 c4 c2.  s2 c4 c4. c8 c4 c4. c8 c4 c4. c8 c4 c2 c4 c4. c8 c4 c4 c4 c4 c2.
}

BBGGAxCFEMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 2 = 64
    \time 3/4
    \key g \major
    
}
BBGGAxCFEMusicRHA = \relative c'{ \BBGGAxCFEMusicGlobal \clef "treble"
    b'2 b4 |  \nbp b (a) g | g2 g4 | %3
a (g) e | d2 d4 |  \nbp g2 g4 | %6
b4. (a8) g4 |  \nbp a2. | b2 b4 | %9
\nbp b (a) g | g2 g4 | a (g) e | %12
d2 g4 |  \nbp b (d) c | b2 a4 | %15
\nbp g2. \cbp | d'2 \postCho b4 | %17
\nbp d2 b4 | c2 c4 | c4. (b8) a4 | %20
b2 c4 |  \nbp d2 d4 | e (d) b | %23
\nbp a2. | b2 b4 |  \nbp b (a) g | %26
g2 g4 | a (g) e | d2 g4 | %29
\nbp b (d) c | b2 a4 \nbp g2. \he
}
BBGGAxCFEMusicRHB = \relative c'{ \BBGGAxCFEMusicGlobal \clef "treble"
    d2 d4 | d2 d4 | e2 e4 | e2 c4 | b2 b4 | %5
d2 d4 | d2 cis4 | d2. | g2 g4 | %9
g (d) d | e2 e4 | e2 c4 | b2 d4 | %13
d2 e4 | d2 c4 | b2. | g'2 g4 | g2 d4 | %18
fis2 fis4 | fis4. (g8) fis4 | g2 fis4 | %21
g2 g4 | g2 g4 | fis2. | d2 d4 | d2 d4 | %26
e2 e4 | e2 c4 | b2 d4 | d2 e4 | d2 c4 b2.
}
BBGGAxCFEMusicRH =  \partCombine #'(2 . 20)  \BBGGAxCFEMusicRHA \BBGGAxCFEMusicRHB
BBGGAxCFEMusicLHA = \relative c{ \BBGGAxCFEMusicGlobal \clef "bass"
    g'2 g4 | g (fis) g | g2 c4 | c2 g4 | %4
g2 g4 | b2 b4 \pcAp | %6
g4. (a8) \pcAu a4 | fis2. | d'2 d4 | %9
d (c) b | g2 c4 | c2 g4 | g2 b4 | %13
g2 g4 | g2 fis4 | g2. | b2 d4 | %17
b2 \pcAO g4 | a2 a4 | a2 d4 | d2 d4 | %21
d2 b4 | c (b) d | d2. \pcAO | %24
g,2 \pcAO g4 | g (fis) g | g2 c4 | %27
c2 g4 | g2 b4 | g2 g4 | g2 fis4 g2.
}
BBGGAxCFEMusicLHB = \relative c{ \BBGGAxCFEMusicGlobal \clef "bass"
    g2 g4 | g (a) b | c2 c4 | c2 c4 | %4
g2 g4 | g2 g4 | g'4. (fis8) e4 | d2. | %8
g,2 g4 | g (a) b | c2 c4 | c2 c4 | %12
g2 g4 | g (b) c | d2 d4 | g,2. | %16
g'2 g4 | g2 g4 | d2 d4 | d2 d4 | g2 a4 | %21
b2 g4 | g2 g4 | d2. | g2 g4 | %25
g, (a) b | c2 c4 | c2 c4 | g2 g4 | %29
g (b) c | d2 d4 g,2.
}
BBGGAxCFEMusicLH =  \partCombine #'(2 . 20)  \BBGGAxCFEMusicLHA \BBGGAxCFEMusicLHB
BBGGAxCFEMusicLyrics = \relative c''''{ \BBGGAxCFEMusicGlobal \clef "treble"
    \hideNotes \voiceFour c2 c4 c4  s4 c4 c2 c4 c4  s4 c4 c2 c4 c2 c4 c4.  s8 c4 c2. c2 c4 c4  s4 c4 c2 c4 c4  s4 c4 c2 c4 c4  s4 c4 c2 c4 c2. c2 c4 c2 c4 c2 c4 c4.  s8 c4 c2 c4 c2 c4 c4  s4 c4 c2. c2 c4 c4  s4 c4 c2 c4 c4  s4 c4 c2 c4 c4  s4 c4 c2 c4 c2.
}

BBGGBxCBAMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 86
    \time 4/4
    \key as \major
    
}
BBGGBxCBAMusicRHA = \relative c'{ \BBGGBxCBAMusicGlobal \clef "treble"
    ees4. ees8 f ees c ees |  \nbp f2 (aes) | %2
g4. f8 ees f g bes |  \nbp aes1 | %4
ees4. ees8 f ees c ees |  \nbp f2 (aes) | %6
g4. f8 ees f g bes | %7
\nbp aes1 \postSegnoMark | %8
c4. c8 bes aes aes bes | %9
\nbp aes2 \pcAO f | %10
bes4. c8 bes aes g ees |  \nbp aes1 | %12
ees4. ees8 f ees c ees |  \nbp f2 aes | %14
g4. f8 ees f g bes \nbp aes1 \postDSEtFine \he
}
BBGGBxCBAMusicRHB = \relative c'{ \BBGGBxCBAMusicGlobal \clef "treble"
    c4. c8 des c aes c | des2 (f) | %2
ees4. des8 des des des des | c1 | %4
c4. c8 des c aes c | des2 (f) | %6
ees4. des8 des des des des | c1 | %8
ees4. ees8 ees ees ges ges | f2 f | %10
ees4. ees8 ees ees ees des | c1 | %12
c4. c8 des c aes c | des2 f | %14
ees4. des8 des des des des c1
}
BBGGBxCBAMusicRH =  \partCombine #'(2 . 20)  \BBGGBxCBAMusicRHA \BBGGBxCBAMusicRHB
BBGGBxCBAMusicLHA = \relative c{ \BBGGBxCBAMusicGlobal \clef "bass"
    aes'4. aes8 aes aes ees aes | %1
aes2 (des) | bes4. aes8 g aes bes g | %3
aes1 | aes4. aes8 aes aes ees aes | %5
aes2 (des) | bes4. aes8 g aes bes g | %7
aes1 | c4. c8 des c c c | des2 aes | %10
g4. aes8 g c des g, | aes1 | %12
aes4. aes8 aes aes ees aes | aes2 des | %14
bes4. aes8 g aes bes g aes1
}
BBGGBxCBAMusicLHB = \relative c{ \BBGGBxCBAMusicGlobal \clef "bass"
    aes4. aes8 aes aes aes aes | des2 (des) | %2
ees4. ees8 ees ees ees ees | aes,1 | %4
aes4. aes8 aes aes aes aes | des2 (des) | %6
ees4. ees8 ees ees ees ees | aes,1 | %8
aes'4. aes8 aes aes aes aes | des,2 des | %10
ees4. ees8 ees ees ees ees | aes,1 | %12
aes4. aes8 aes aes aes aes | des2 des | %14
ees4. ees8 ees ees ees ees aes,1
}
BBGGBxCBAMusicLH =  \partCombine #'(2 . 20)  \BBGGBxCBAMusicLHA \BBGGBxCBAMusicLHB
BBGGBxCBAMusicLyrics = \relative c''''{ \BBGGBxCBAMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4. c8 c8 c8 c8 c8 c2 c2 c4. c8 c8 c8 c8 c8 c1 c4. c8 c8 c8 c8 c8 c2 c2 c4. c8 c8 c8 c8 c8 c1 c4. c8 c8 c8 c8 c8 c2 c2 c4. c8 c8 c8 c8 c8 c1 c4. c8 c8 c8 c8 c8 c2 c2 c4. c8 c8 c8 c8 c8 c1
}

BBGGCxBZDMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 120
    \time 3/4
    \key f \major
    
}
BBGGCxBZDMusicRHA = \relative c'{ \BBGGCxBZDMusicGlobal \clef "treble"
    f4 f f | f (e) f | g (a) g \pcAO | %3
\nbp f2. | a4 a a | a (g) a | %6
c (bes) a |  \nbp g2. | g4 \pcAO g a | %9
bes2 g4 | a2 bes4 |  \nbp c2. | d4 d d | %13
c2 a4 | bes (a) g \pcAO \nbp f2. \he
}
BBGGCxBZDMusicRHB = \relative c'{ \BBGGCxBZDMusicGlobal \clef "treble"
    c4 c c | c2 c4 | e2 e4 | f2. | f4 f f | %5
f (e) f | f (e) f | e2. | e4 g fis | %9
g (d) e | f2 f4 | e2. | d4 f f | %13
f (e) f | f2 e4 f2.
}
BBGGCxBZDMusicRH =  \partCombine #'(2 . 20)  \BBGGCxBZDMusicRHA \BBGGCxBZDMusicRHB
BBGGCxBZDMusicLHA = \relative c{ \BBGGCxBZDMusicGlobal \clef "bass"
    a'4 a a | a (g) a | bes (c) bes | %3
a2. | c4 c c | c2 c4 | c2 c4 | %7
c2. \pcAO | c4 d c | bes2 c4 | c2 bes4 | %11
g2 (a4) | bes bes bes | g2 d'4 | %14
d (c) bes a2.
}
BBGGCxBZDMusicLHB = \relative c{ \BBGGCxBZDMusicGlobal \clef "bass"
    f4 f f | f2 f4 | c2 c4 | f2. | f4 f f | %5
f2 f4 | a (g) f | c2. | c'4 bes a | %9
g2 c,4 | f2 d4 | c2. | bes4 bes bes | %13
c2 d4 | bes (c) c f2.
}
BBGGCxBZDMusicLH =  \partCombine #'(2 . 20)  \BBGGCxBZDMusicLHA \BBGGCxBZDMusicLHB
BBGGCxBZDMusicLyrics = \relative c''''{ \BBGGCxBZDMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c4 c4 c4  s4 c4 c4  s4 c4 c2. c4 c4 c4 c4  s4 c4 c4  s4 c4 c2. c4 c4 c4 c2 c4 c2 c4 c2. c4 c4 c4 c2 c4 c4  s4 c4 c2.
}

BBGGDxCHDMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 8 = 104
    \time 4/4
    \key f \major
}
BBGGDxCHDMusicRHA = \relative c'{ \BBGGDxCHDMusicGlobal \clef "treble"
    \repeat volta 2 {f4 f8 g a4 a8 bes | %1
c4 d8 c a2 | c4 bes8 a g2 | %3
bes4 a8 g \pcAO f2} | %4
c'4 bes8 a g4 \pcAO c,8 \pcAO c | %5
bes'4 a8 g \pcAO f2 | %6
c'4 bes8 a g4 \pcAO c,8 \pcAO c | %7
\nbp bes'4 a8 \lbp g \pcAO f2 | %8
\nbp f4 f8 g a4 a8 bes | %9
\nbp c4 d8 \lbp c a2 | %10
\nbp c4 bes8 a g2 bes4 a8 g \pcAO f2
}
BBGGDxCHDMusicRHB = \relative c'{ \BBGGDxCHDMusicGlobal \clef "treble"
    c4 c8 e f4 f8 f | f4 f8 f f2 | %2
e4 e8 f e2 | e4 f8 e f2 | %4
e4 e8 f e4 c8 c | e4 f8 e f2 | %6
e4 e8 f e4 c8 c | e4 f8 e f2 | %8
c4 c8 e f4 f8 f | f4 f8 f f2 | %10
e4 e8 f e2 e4 e8 e f2
}
BBGGDxCHDMusicRH =  \partCombine #'(2 . 20)  \BBGGDxCHDMusicRHA \BBGGDxCHDMusicRHB
BBGGDxCHDMusicLHA = \relative c{ \BBGGDxCHDMusicGlobal \clef "bass"
    a'4 a8 c c4 \pcAO f,8 g | a4 bes8 a c2 | %2
c4 g8 c c2 | g4 c8 bes a2 | %4
g4 g8 c c4 bes8 bes | c4 c8 bes a2 | %6
g4 g8 c c4 bes8 bes | g4 c8 bes a2 | %8
a4 a8 c c4 \pcAO f,8 g | a4 bes8 a c2 | %10
c4 g8 c c2 g4 c8 bes a2
}
BBGGDxCHDMusicLHB = \relative c{ \BBGGDxCHDMusicGlobal \clef "bass"
    f4 f8 c f4 f8 f | f4 f8 f f2 | %2
c4 c8 c c2 | c4 c8 c f2 | %4
c4 c8 c c4 e8 e | c4 c8 c f2 | %6
c4 c8 c c4 c8 c | c4 c8 c f2 | %8
f4 f8 c f4 f8 f | f4 f8 f f2 | %10
c4 c8 c c2 c4 c8 c \pcCh <f f,> 2
}
BBGGDxCHDMusicLH =  \partCombine #'(2 . 20)  \BBGGDxCHDMusicLHA \BBGGDxCHDMusicLHB
BBGGDxCHDMusicLyrics = \relative c''''{ \BBGGDxCHDMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c8 c8 c4 c8 c8 c4 c8 c8 c2 c4 c8 c8 c2 c4 c8 c8 c2 c4 c8 c8 c4 c8 c8 c4 c8 c8 c2 c4 c8 c8 c4 c8 c8 c4 c8 c8 c2 c4 c8 c8 c4 c8 c8 c4 c8 c8 c2 c4 c8 c8 c2 c4 c8 c8 c2
}

BBGGExAFAMoreSylMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 8 = 100
    \time 6/8
    \key f \major
    
}
BBGGExAFAMoreSylMusicRHA = \relative c'{ \BBGGExAFAMoreSylMusicGlobal \clef "treble"
    a'8. a16 a8 a [bes] a | a g d g4. | %2
g8. g16 g8 g a g | g f \pcAO c f4. | %4
a8. a16 a8 a (bes) c | %5
c bes \pcAO d, a'4 (g8) \breathe | %6
f e f \set Score.tempoHideNote = ##t \tempo 8 = 50  \fpre c' \fpost \set Score.tempoHideNote = ##t \tempo 8 = 100   a f | e [f] g f4. | %8
\cbp c'4  \postCho c8  c bes a | %9
c8. g16 g8 g4. | %10
 bes4  bes16 bes bes8 c d | %11
c4 a16 a a4. | %12
a8.  a16 a8 a bes c | %13
c bes \pcAO d, a'4 (g8) \breathe | %14
f e f \set Score.tempoHideNote = ##t \tempo 8 = 50  \fpre c' \fpost \set Score.tempoHideNote = ##t \tempo 8 = 100   a f e f g f4. \he
}
BBGGExAFAMoreSylMusicRHB = \relative c'{ \BBGGExAFAMoreSylMusicGlobal \clef "treble"
    f8. f16 f8 f4 f8 | d d bes d4. | %2
e8. e16 e8 e f e | c c c c4. | %4
f8. f16 f8 f (f) f | d d d d4. | %6
c8 c c f f c | c4 c8 c4. | a'4 a8 a g f | %9
e8. e16 e8 e4. | g4 g16 g g8 a bes | %11
a4 f16 f f4. | f8. f16 f8 f f f | %13
d d d d4. | c8 c c f f c c c c c4.
}
BBGGExAFAMoreSylMusicRH =  \partCombine #'(2 . 20)  \BBGGExAFAMoreSylMusicRHA \BBGGExAFAMoreSylMusicRHB
BBGGExAFAMoreSylMusicLHA = \relative c{ \BBGGExAFAMoreSylMusicGlobal \clef "bass"
    c'8. c16 c8 c [d] c | bes bes f bes4. | %2
g8. c16 c8 c c c | bes a a a4. | %4
c8. c16 c8 c (d) a | f f f f4 (bes8) | %6
a g a  a  c a | g [a] bes a4. | c4 c8 c c c | %9
c8. c16 c8 c4. | c4 c16 c c8 c c | %11
c4 c16 c c4. | c8. c16 c8 c d a | %13
f f f f4 (bes8) | a g a a  c a g a bes a4.
}
BBGGExAFAMoreSylMusicLHB = \relative c{ \BBGGExAFAMoreSylMusicGlobal \clef "bass"
    f8. f16 f8 f4 f8 | bes, bes bes bes4. | %2
c8. c16 c8 c c c | f f f f4. | %4
f8. f16 f8 f (f) f | bes, bes bes bes4. | %6
c8 c c \fpre f \fpostbelow f f | c4 c8 f4. | f4 f8 f f f | %9
c8. c16 c8 c4. | c4 c16 c c8 c c | %11
f4 f16 f f4. | f8. f16 f8 f f f | %13
bes, bes bes bes4. | c8 c c \fpre f \fpostbelow f f c c c f4.
}
BBGGExAFAMoreSylMusicLH =  \partCombine #'(2 . 20)  \BBGGExAFAMoreSylMusicLHA \BBGGExAFAMoreSylMusicLHB
BBGGExAFAMoreSylMusicLyrics = \relative c''''{ \BBGGExAFAMoreSylMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8. c16 c8 c8 c8 c8 c8 c8 c8 c4. c8. c16 c8 c8 c8 c8 c8 c8 c8 c4. c8. c16 c8 c8 c8 c8 c8 c8 c8 c4  s8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c4. c4 c8 c8 c8 c8 c8. c16 c8 c4. c4 c16 c16 c8 c8 c8 c4 c16 c16 c4. c8. c16 c8 c8 c8 c8 c8 c8 c8 c4  s8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c4.
}

BBGGFxABMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 2 = 68
    \time 3/2
    \key as \major
    \partial 2
    
}
BBGGFxABMusicRHA = \relative c'{ \BBGGFxABMusicGlobal \clef "treble"
    ees2 |  \nbp ees4 aes c2 bes | %2
aes4 f ees2 \breathe \lbp ees | %3
\nbp ees4 aes c2 aes | %4
\nbp bes1 \lbp des2 | %5
\nbp c4 bes aes2 bes | %6
c4 aes f2 \breathe \lbp ees | %7
\nbp ees4 aes c2 bes \nbp aes1 \he
}
BBGGFxABMusicRHB = \relative c'{ \BBGGFxABMusicGlobal \clef "treble"
    c2 | c4 c ees2 des | c4 des c2 c | %3
c4 c c2 c | ees1 ees2 | ees4 des c2 ees | %6
ees4 ees des2 bes | c4 c ees2 des c1
}
BBGGFxABMusicRH =  \partCombine #'(2 . 20)  \BBGGFxABMusicRHA \BBGGFxABMusicRHB
BBGGFxABMusicLHA = \relative c{ \BBGGFxABMusicGlobal \clef "bass"
    aes'2 | aes4 aes aes2 g | %2
aes4 aes aes2 aes | %3
aes4 \pcAO aes aes2 aes | g1 g2 \pcAO | %5
aes4 g aes2 g \pcAO | aes4 aes aes2 g | %7
aes4 aes aes2 g aes1
}
BBGGFxABMusicLHB = \relative c{ \BBGGFxABMusicGlobal \clef "bass"
    aes2 | aes4 aes aes2 ees' | %2
f4 des aes2 aes | aes4 aes' f2 f | %4
ees1 ees2 | aes4 ees f2 ees | %6
aes4 c, des2 ees | aes,4 f' ees2 ees aes,1
}
BBGGFxABMusicLH =  \partCombine #'(2 . 20)  \BBGGFxABMusicLHA \BBGGFxABMusicLHB
BBGGFxABMusicLyrics = \relative c''''{ \BBGGFxABMusicGlobal \clef "treble"
    \hideNotes \voiceFour c2 c4 c4 c2 c2 c4 c4 c2 c2 c4 c4 c2 c2 c1 c2 c4 c4 c2 c2 c4 c4 c2 c2 c4 c4 c2 c2 c1
}

BBGGGxAHAMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 100
    \time 4/4
    \key as \major
    \partial 2
    
}
BBGGGxAHAMusicRHA = \relative c'{ \BBGGGxAHAMusicGlobal \clef "treble"
    c'4 bes |  \nbp bes aes aes g | %2
\nbp bes aes \lbp c, ees | %3
\nbp g f f4. e8 |  \nbp f2 \lbp g4 f | %5
\nbp ees c' des c | c bes a bes | %7
\nbp c1~| c2 \lbp c4 bes | %9
\nbp bes aes aes g | %10
\nbp bes aes \lbp c, ees | %11
\nbp g f f4. e8 |  \nbp f2 \lbp g4 f | %13
\nbp ees c' des c | c bes f g | %15
\nbp aes1~aes2 \he
}
BBGGGxAHAMusicRHB = \relative c'{ \BBGGGxAHAMusicGlobal \clef "treble"
    ees4 ees | ees ees ees des | des c aes c | %3
ees des des4. des8 | des2 des4 des | %5
c ees f ees | ees ees ees ees | ees1~| %8
ees2 ees4 ees | ees ees ees des | %10
des c aes c | ees des des4. des8 | %12
des2 ees4 des | c ees ees ees | %14
f f des des | c1~c2
}
BBGGGxAHAMusicRH =  \partCombine #'(2 . 20)  \BBGGGxAHAMusicRHA \BBGGGxAHAMusicRHB
BBGGGxAHAMusicLHA = \relative c{ \BBGGGxAHAMusicGlobal \clef "bass"
    \pcAO aes'4 des | des c c bes | %2
g aes ees aes | aes aes aes4. g8 | %4
aes2 \pcAO ees4 g | aes aes aes aes | %6
aes g fis g | aes1~| %8
aes2 \pcAO aes4 des | des c c bes | %10
g aes ees aes | aes aes aes4. g8 | %12
aes2 aes4 aes | aes c bes \pcAO aes | %14
aes bes bes bes | aes1~aes2
}
BBGGGxAHAMusicLHB = \relative c{ \BBGGGxAHAMusicGlobal \clef "bass"
    aes'4 g | g aes ees ees | %2
ees aes, aes aes | des des des4. des8 | %4
des2 ees4 ees | aes, aes aes aes | %6
ees' ees ees ees | aes,1~| %8
aes2 aes'4 g | g aes ees ees | %10
ees aes, aes aes | des des des4. des8 | %12
des2 des4 des | aes aes' g aes | %14
des, des ees ees | aes,1~aes2
}
BBGGGxAHAMusicLH =  \partCombine #'(2 . 20)  \BBGGGxAHAMusicLHA \BBGGGxAHAMusicLHB
BBGGGxAHAMusicLyrics = \relative c''''{ \BBGGGxAHAMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4. c8 c2 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c1  s2 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4. c8 c2 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c1
}

BBGGHxBCZMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 72
    \time 6/8
    \key bes \major
    
}
BBGGHxBCZMusicRHA = \relative c'{ \BBGGHxBCZMusicGlobal \clef "treble"
    d8 ees e f [bes] c | d4 c8 bes4. | %2
f8 a g ees4 g8 |  \nbp f4. (d) | %4
d8 ees e f [bes] c | d4 c8 bes4. | %6
f8 a g f4 c'8 |  \nbp bes2. \cbp | %8
bes4. \postCho a4 g8 | g4 f8 f4. | %10
f8 a g ees4. | ees8 g f d4. | %12
f bes4 bes8 | c [bes] c \set Score.tempoHideNote = ##t \tempo 4 = 36  \fpre d4. \fpost \set Score.tempoHideNote = ##t \tempo 4 = 72   | %14
c8 bes g f [bes]  a \nbp bes2. \he
}
BBGGHxBCZMusicRHB = \relative c'{ \BBGGHxBCZMusicGlobal \clef "treble"
    bes8 c cis d [f] f | f4 ees8 d4. | %2
ees8 ees ees c4 ees8 | d4. (bes) | %4
bes8 c cis d [f] f | f4 ees8 d4. | %6
ees8 ees ees ees4 ees8 | d2. | %8
g4. f4 ees8 | ees4 d8 d4. | d8 f ees c4. | %11
c8 ees d bes4. | d f4 f8 | g4 g8 fis4. | %14
g8 g ees d4 c8 d2.
}
BBGGHxBCZMusicRH =  \partCombine #'(2 . 20)  \BBGGHxBCZMusicRHA \BBGGHxBCZMusicRHB
BBGGHxBCZMusicLHA = \relative c{ \BBGGHxBCZMusicGlobal \clef "bass"
    f8 f bes bes4 a8 \pcAO | bes4 a8 f4. | %2
a8 c bes a4 a8 | bes4. (f) | %4
f8 f bes bes4 a8 \pcAO | bes4 a8 bes4. | %6
a8 c bes a4 a8 | bes2. | bes4. bes4 bes8 | %9
bes4 bes8 bes4. \pcAO | %10
f8 \pcAO f \pcAO f a4. | %11
a8 \pcAO f \pcAO f f4. | bes bes4 bes8 | %13
bes4 g8  a4.  | %14
g8 bes bes \pcAO f4 \pcAO f8 f2.
}
BBGGHxBCZMusicLHB = \relative c{ \BBGGHxBCZMusicGlobal \clef "bass"
    bes8 bes bes bes d f | bes4 f8 bes,4. | %2
f'8 f f f4 f8 | bes,4. (bes) | %4
bes8 bes bes bes [d] f | bes4 f8 bes,4. | %6
f'8 f f f4 f8 | bes,2. | ees4. ees4 ees8 | %9
bes4 bes8 bes4. | f'8 f f f4. | %11
f8 f f bes,4. | bes d4 d8 | %13
ees4 ees8 \fpre d4. \fpostbelow | ees8 ees ees f4 f8 bes,2.
}
BBGGHxBCZMusicLH =  \partCombine #'(2 . 20)  \BBGGHxBCZMusicLHA \BBGGHxBCZMusicLHB
BBGGHxBCZMusicLyrics = \relative c''''{ \BBGGHxBCZMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8 c8 c8 c8  s8 c8 c4 c8 c4. c8 c8 c8 c4 c8 c4.  s4. c8 c8 c8 c8  s8 c8 c4 c8 c4. c8 c8 c8 c4 c8 c2. c4. c4 c8 c4 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c4. c4 c8 c8  s8 c8 c4. c8 c8 c8 c8  s8 c8 c2.
}

BBGGIxDFMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 94
    \time 4/4
    \key g \major
    
}
BBGGIxDFMusicRHA = \relative c'{ \BBGGIxDFMusicGlobal \clef "treble"
    \repeat volta 2 {b'2 b4 b | c2. b4 | %2
b a \pcAO g a |  \nbp b2. \lbp g4 | %4
\nbp a2 fis |  \nbp g1} | a2 a4 b | %7
c2 a | d4 c b a |  \nbp b2. \lbp d4 | %10
\nbp e2 d |  \nbp c2. \lbp b4 | %12
\nbp d c b a \pcAO g1 \he
}
BBGGIxDFMusicRHB = \relative c'{ \BBGGIxDFMusicGlobal \clef "treble"
    g'2 g4 g | g2. g4 | fis fis g fis | %3
g2. e4 | e2 d | d1 | fis2 fis4 g | %7
fis2 fis | fis4 fis g fis | g2. g4 | %10
g2 g | fis2. g4 | a a g fis g1
}
BBGGIxDFMusicRH =  \partCombine #'(2 . 20)  \BBGGIxDFMusicRHA \BBGGIxDFMusicRHB
BBGGIxDFMusicLHA = \relative c{ \BBGGIxDFMusicGlobal \clef "bass"
    d'2 d4 d | e2. d4 | d c b a \pcAO | %3
g2. b4 | c2 c | b1 | d2 c4 b | a2 d | %8
d4 d d d | d2. d4 \pcAO | c2 d | %11
d2. d4 | e e d c b1
}
BBGGIxDFMusicLHB = \relative c{ \BBGGIxDFMusicGlobal \clef "bass"
    g'2 g4 g | g2. g4 | d d d d | g2. e4 | %4
c2 d | g1 | d2 d4 d | d2 d | b'4 a g d | %9
g2. b4 | c2 b | a2. g4 | c, c d d g1
}
BBGGIxDFMusicLH =  \partCombine #'(2 . 20)  \BBGGIxDFMusicLHA \BBGGIxDFMusicLHB
BBGGIxDFMusicLyrics = \relative c''''{ \BBGGIxDFMusicGlobal \clef "treble"
    \hideNotes \voiceFour c2 c4 c4 c2. c4 c4 c4 c4 c4 c2. c4 c2 c2 c1 c2 c4 c4 c2 c2 c4 c4 c4 c4 c2. c4 c2 c2 c2. c4 c4 c4 c4 c4 c1
}

BBGHZxDZBMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 2 = 62
    \time 3/4
    \key as \major
    
}
BBGHZxDZBMusicRHA = \relative c'{ \BBGHZxDZBMusicGlobal \clef "treble"
    c'4 bes c | des2 aes4 | %2
\nbp c2 \pcAO \lbp ees,4 | %3
\nbp bes'2 aes4 |  \nbp aes2. | %5
c4 bes c | des2 aes4 | %7
\nbp c2 \pcAO \lbp ees,4 | %8
\nbp bes'2 aes4 |  \nbp aes2. | %10
aes4 aes aes | g2 f4 |  \nbp ees2. | %13
c'4 c c | c2 bes4 |  \nbp bes2. | %16
des4 des des | c2 g4 | %18
\nbp aes2 \lbp bes4 |  \nbp aes2 g4 \nbp aes2. \he
}
BBGHZxDZBMusicRHB = \relative c'{ \BBGHZxDZBMusicGlobal \clef "treble"
    aes'4 g ges | f2 fes4 | ees2 ees4 | %3
des2 c4 | c2. | aes'4 g ges | f2 fes4 | %7
ees2 ees4 | des2 c4 | c2. | f4 f f | %11
ees2 des4 | c2. | ees4 ees ees | d2 d4 | %15
ees2. | f4 f f | e2 e4 | f2 f4 | %19
ees2 des4 c2.
}
BBGHZxDZBMusicRH =  \partCombine #'(2 . 20)  \BBGHZxDZBMusicRHA \BBGHZxDZBMusicRHB
BBGHZxDZBMusicLHA = \relative c{ \BBGHZxDZBMusicGlobal \clef "bass"
    ees'4 ees ees | des2 des4 | aes2 ees'4 | %3
g,2 aes4 | aes2. | ees'4 ees ees | %6
des2 des4 | aes2 ees'4 | g,2 aes4 | %9
aes2. | aes4 aes aes | aes2 aes4 | %12
aes2. \pcAO | aes4 \pcAO aes \pcAO aes | %14
aes2 aes4 | g2. | bes4 bes aes | g2 c4 | %18
c2 des4 | c2 bes4 aes2.
}
BBGHZxDZBMusicLHB = \relative c{ \BBGHZxDZBMusicGlobal \clef "bass"
    aes4 aes aes | aes2 aes4 | aes2 ees'4 | %3
ees2 aes,4 | aes2. | aes4 aes aes | %6
aes2 aes4 | aes2 ees'4 | ees2 aes,4 | %9
aes2. | des4 des des | des2 des4 | %12
aes2. | aes'4 aes aes | f2 bes,4 | %15
ees2. | bes4 bes bes | c2 c4 | f2 des4 | %19
ees2 ees4 aes,2.
}
BBGHZxDZBMusicLH =  \partCombine #'(2 . 20)  \BBGHZxDZBMusicLHA \BBGHZxDZBMusicLHB
BBGHZxDZBMusicLyrics = \relative c''''{ \BBGHZxDZBMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c4 c4 c2 c4 c2 c4 c2 c4 c2. c4 c4 c4 c2 c4 c2 c4 c2 c4 c2. c4 c4 c4 c2 c4 c2. c4 c4 c4 c2 c4 c2. c4 c4 c4 c2 c4 c2 c4 c2 c4 c2.
}

BBGHAxCIAMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 88
    \time 4/4
    \key f \major
    
}
BBGHAxCIAMusicRHA = \relative c'{ \BBGHAxCIAMusicGlobal \clef "treble"
    a'4. a8 bes a g f | a c4.~c4 r | %2
c4. d8 c g c bes | %3
\nbp a2. r4 \postSegnoMark | %4
a4. a8 bes a g f | a c4.~c4 r | %6
d4. d8 c4 a | g4. f8 f2 \postFine \cbp | %8
g4. \postCho a8 bes2 | %9
c4. bes8 a2 \pcAO | %10
f4. \pcAp f8 f f \pcAu bes a \nbp g2. r4 \postDS \he
}
BBGHAxCIAMusicRHB = \relative c'{ \BBGHAxCIAMusicGlobal \clef "treble"
    f4. f8 f f c c | f f4.~f4 r | %2
e4. e8 e e e g | f2. r4 | f4. f8 f f c c | %5
f f4.~f4 r | f4. f8 f4 f | e4. c8 c2 | %8
e4. f8 e2 | g4. g8 f2 | f4. f8 f f e f e2. r4
}
BBGHAxCIAMusicRH =  \partCombine #'(2 . 20)  \BBGHAxCIAMusicRHA \BBGHAxCIAMusicRHB
BBGHAxCIAMusicLHA = \relative c{ \BBGHAxCIAMusicGlobal \clef "bass"
    c'4. c8 d c bes a | c a4.~a4 r | %2
g4. g8 g g g c | c2. r4 | %4
c4. c8 d c bes a | c a4.~a4 r | %6
bes4. bes8 a4 c | bes4. a8 a2 | %8
c4. c8 c2 | c4. c8 c2 | %10
c4. c8  d c c c c2. r4
}
BBGHAxCIAMusicLHB = \relative c{ \BBGHAxCIAMusicGlobal \clef "bass"
    f4. f8 f f f f | f f4.~f4 r | %2
c4. c8 c c c e | f2. r4 | f4. f8 f f f f | %5
f f4.~f4 r | bes,4. d8 f4 f | %7
c4. f8 f2 | c4. c8 c2 | e4. e8 f2 | %10
a4. a8 bes a g f c2. r4
}
BBGHAxCIAMusicLH =  \partCombine #'(2 . 20)  \BBGHAxCIAMusicLHA \BBGHAxCIAMusicLHB
BBGHAxCIAMusicLyrics = \relative c''''{ \BBGHAxCIAMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4. c8 c8 c8 c8 c8 c8 c4. s4 s4 c4. c8 c8 c8 c8 c8 c2.  s4 c4. c8 c8 c8 c8 c8 c8 c4. s4 s4 c4. c8 c4 c4 c4. c8 c2 c4. c8 c2 c4. c8 c2 c4. c8 c8 c8 c8 c8 c2.
}

BBGHBxCGZMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 112
    \time 4/4
    \key es \major
    
}
BBGHBxCGZMusicRHA = \relative c'{ \BBGHBxCGZMusicGlobal \clef "treble"
    g'2 aes4 g | g f f2 | aes bes4 aes | %3
aes g g2 | bes c4 bes | %5
bes aes ees \lbp f | %6
\nbp g \pcAO ees g4. f8 \pcAO \nbp ees2. \he
}
BBGHBxCGZMusicRHB = \relative c'{ \BBGHBxCGZMusicGlobal \clef "treble"
    ees2 ees4 ees | ees d d2 | d d4 d | %3
ees ees ees2 | ees ees4 des | c c c ees | %6
ees ees d4. d8 ees2.
}
BBGHBxCGZMusicRH =  \partCombine #'(2 . 20)  \BBGHBxCGZMusicRHA \BBGHBxCGZMusicRHB
BBGHBxCGZMusicLHA = \relative c{ \BBGHBxCGZMusicGlobal \clef "bass"
    bes'2 c4 bes | bes aes aes2 | bes bes4 c | %3
c bes bes2 | g aes4 g | aes aes aes c | %6
bes g bes4. aes8 g2.
}
BBGHBxCGZMusicLHB = \relative c{ \BBGHBxCGZMusicGlobal \clef "bass"
    ees2 ees4 ees | bes bes bes2 | %2
bes bes4 bes | ees ees ees2 | %4
ees ees4 ees | aes, aes aes aes | %6
bes bes bes4. bes8 ees2.
}
BBGHBxCGZMusicLH =  \partCombine #'(2 . 20)  \BBGHBxCGZMusicLHA \BBGHBxCGZMusicLHB
BBGHBxCGZMusicLyrics = \relative c''''{ \BBGHBxCGZMusicGlobal \clef "treble"
    \hideNotes \voiceFour c2 c4 c4 c4 c4 c2 c2 c4 c4 c4 c4 c2 c2 c4 c4 c4 c4 c4 c4 c4 c4 c4. c8 c2.
}

BBGHCxBBEMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 80
    \time 2/4
    \key c \major
    \partial 4
    
}
BBGHCxBBEMusicRHA = \relative c'{ \BBGHCxBBEMusicGlobal \clef "treble"
    g'4 \pcAO |  \nbp g g | c b | a a | %4
\nbp g \lbp a |  \nbp f g \pcAO | %6
e c' | b a \pcAO | %8
\nbp \set Score.tempoHideNote = ##t \tempo 4 = 40  \fpre g \fpost \set Score.tempoHideNote = ##t \tempo 4 = 80   \lbp g |  \nbp g g | %10
c b | a a |  \nbp g \lbp g |  \nbp a b | %14
c e8 [d] | c4 b \nbp \set Score.tempoHideNote = ##t \tempo 4 = 40  \fpre c \fpost \set Score.tempoHideNote = ##t \tempo 4 = 80   \he
}
BBGHCxBBEMusicRHB = \relative c'{ \BBGHCxBBEMusicGlobal \clef "treble"
    e4 | g d | e g | f f | e e | d d | %6
e a | g fis | g d | e f | e g | f f | %12
e e | f f | e f | e d e
}
BBGHCxBBEMusicRH =  \partCombine #'(2 . 20)  \BBGHCxBBEMusicRHA \BBGHCxBBEMusicRHB
BBGHCxBBEMusicLHA = \relative c{ \BBGHCxBBEMusicGlobal \clef "bass"
    g'4 | e' d | c c | c a8 [b] | c4 cis | %5
a g | g e' | d c | b b | c b | c c | %11
c a8 [b] | c4 c | c d | c a \pcAO | %15
g g g
}
BBGHCxBBEMusicLHB = \relative c{ \BBGHCxBBEMusicGlobal \clef "bass"
    c4 | c' b | a e | f f | c a | d b | %6
c a | d d | \fpre g, \fpostbelow f' | e d | %10
c e | f f | c c | f8 [e] d4 | a' f | %15
g g, \fpre c \fpostbelow
}
BBGHCxBBEMusicLH =  \partCombine #'(2 . 20)  \BBGHCxBBEMusicLHA \BBGHCxBBEMusicLHB
BBGHCxBBEMusicLyrics = \relative c''''{ \BBGHCxBBEMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c8  s8 c4 c4 c4
}

BBGHDxBIIMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 2 = 68
    \time 4/4
    \key f \major
    
}
BBGHDxBIIMusicRHA = \relative c'{ \BBGHDxBIIMusicGlobal \clef "treble"
    \pcAO f2 g4 a | bes2 a | g4 f f e | %3
\nbp f1 | a2 bes4 c | d2 c | %6
bes4 a g f |  \nbp g1 | c2 c4 bes | %9
a2 g | a4 c c b |  \nbp c1 | a2 g4 f | %13
e f g bes | a2 g \nbp f1 \he
}
BBGHDxBIIMusicRHB = \relative c'{ \BBGHDxBIIMusicGlobal \clef "treble"
    f2 e4 f | f2 f | d4 c d c | c1 | %4
f2 f4 f | f2 f | e4 f d d | e1 | %8
f2 f4 e | f2 e | f4 f d8 [e] f4 | e1 | %12
f2 e4 d | cis d d d | f2 e c1
}
BBGHDxBIIMusicRH =  \partCombine #'(2 . 20)  \BBGHDxBIIMusicRHA \BBGHDxBIIMusicRHB
BBGHDxBIIMusicLHA = \relative c{ \BBGHDxBIIMusicGlobal \clef "bass"
    a'2 c4 c | d2 c | bes4 a g g | a1 | %4
c2 bes4 a | bes2 a | bes4 c g g | g1 | %8
a2 c4 c | c2 c | c4 c \pcAO g g | g1 | %12
c2 bes4 a | a a bes bes | c2 bes a1
}
BBGHDxBIIMusicLHB = \relative c{ \BBGHDxBIIMusicGlobal \clef "bass"
    f2 c4 f | bes,2 f | g4 a bes c | f,1 | %4
f'2 d4 c | bes2 f | g4 a bes b | c1 | %8
f2 a4 g | f2 c | f4 a g g, | c1 | %12
f2 c4 d | a d bes g | c2 c f,1
}
BBGHDxBIIMusicLH =  \partCombine #'(2 . 20)  \BBGHDxBIIMusicLHA \BBGHDxBIIMusicLHB
BBGHDxBIIMusicLyrics = \relative c''''{ \BBGHDxBIIMusicGlobal \clef "treble"
    \hideNotes \voiceFour c2 c4 c4 c2 c2 c4 c4 c4 c4 c1 c2 c4 c4 c2 c2 c4 c4 c4 c4 c1 c2 c4 c4 c2 c2 c4 c4 c4 c4 c1 c2 c4 c4 c4 c4 c4 c4 c2 c2 c1
}

BBGHExCZCMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 68
    \time 3/4
    \key g \major
    \partial 4
    \accidentalStyle Score.modern
}
BBGHExCZCMusicRHA = \relative c'{ \BBGHExCZCMusicGlobal \clef "treble"
    \pcAO d8. g16 |  \nbp b4. g8 fis8. a16 | %2
\nbp g4 \pcAO d \lbp g8. b16 | %3
\nbp d4. b8 \pcAO g8. b16 | %4
\nbp a2 \pcAO \lbp d,8. g16 | %5
\nbp b4. b8 b8. d16 | %6
\nbp d4 c \lbp b8. a16 | %7
\nbp g4. b8 b8. a16 | %8
\nbp g2 \lbp fis8. g16 | %9
\nbp a2 c8. fis,16 | %10
\nbp g2 \lbp b8. c16 |  \nbp d2 d8. b16 | %12
\nbp a2 \pcAO \lbp d,8. g16 | %13
\nbp b4. b8 b8. d16 | %14
\nbp d4 c \lbp b8. a16 | %15
\nbp g4. b8 b8. a16 \nbp g2 \he
}
BBGHExCZCMusicRHB = \relative c'{ \BBGHExCZCMusicGlobal \clef "treble"
    d8. d16 | g4. d8 d8. d16 | d4 d d8. d16 | %3
g4. g8 g8. g16 | fis2 d8. d16 | %5
g4. g8 g8. f16 | e4 e fis8. fis16 | %7
e4. cis8 d8. c16 | b2 d8. d16 | %9
fis2 fis8. d16 | d2 g8. a16 | b2 b8. g16 | %12
fis2 d8. d16 | g4. g8 g8. f16 | %14
e4 e fis8. fis16 | e4. cis8 d8. c16 b2
}
BBGHExCZCMusicRH =  \partCombine #'(2 . 20)  \BBGHExCZCMusicRHA \BBGHExCZCMusicRHB
BBGHExCZCMusicLHA = \relative c{ \BBGHExCZCMusicGlobal \clef "bass"
    b'8. b16 | d4. b8 a8. c16 | b4 b b8. b16 | %3
b4. d8  d8. d16 | d2 b8. b16 | %5
d4. d8 d8. g,16 | g4 g b8. b16 | %7
b4. g8 fis8. fis16 | g2 a8. b16 | %9
c2 a8. c16 | b2 d8. d16 | d2 d8. d16 | %12
d2 b8. b16 | d4. d8 d8. g,16 | %14
g4 g b8. b16 | b4. g8 fis8. fis16 g2
}
BBGHExCZCMusicLHB = \relative c{ \BBGHExCZCMusicGlobal \clef "bass"
    g'8. g16 | g4. g8 d8. d16 | g4 g g8. g16 | %3
g4. g8 b8. g16 | d2 g8. g16 | %5
g4. g8 g8. b,16 | c4 c dis8. dis16 | %7
e4. a,8 d8. d16 | g,2 d'8. d16 | %9
d2 d8. d16 | g2 g8. g16 | g2 g8. g16 | %12
d2 g8. g16 | g4. g8 g8. b,16 | %14
c4 c dis8. b16 | e4. a,8 d8. d16 g,2
}
BBGHExCZCMusicLH =  \partCombine #'(2 . 20)  \BBGHExCZCMusicLHA \BBGHExCZCMusicLHB
BBGHExCZCMusicLyrics = \relative c''''{ \BBGHExCZCMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8. c16 c4. c8 c8. c16 c4 c4 c8. c16 c4. c8 c8. c16 c2 c8. c16 c4. c8 c8. c16 c4 c4 c8. c16 c4. c8 c8. c16 c2 c8. c16 c2 c8. c16 c2 c8. c16 c2 c8. c16 c2 c8. c16 c4. c8 c8. c16 c4 c4 c8. c16 c4. c8 c8. c16 c2
}

BBGHFxBBGMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 62
    \time 3/4
    \key es \major
    \partial 4.
    
}
BBGHFxBBGMusicRHA = \relative c'{ \BBGHFxBBGMusicGlobal \clef "treble"
    bes'8 bes aes | g4. aes8 bes c | %2
\nbp bes4. \pcAO \lbp ees,8 g bes | %3
bes4. g8 g f |  \nbp f4. \lbp g8 aes bes | %5
c4. ees8 d c | %6
\nbp bes4. \lbp ees8 ees g, | %7
bes4. \pcAO ees,8 g f \pcAO | %8
\nbp ees4. \cbp g8 \postCho f aes | %9
aes4. f8 aes g | %10
\nbp g4. \lbp bes8 bes g | %11
g4. \pcAO ees8 g f | %12
\nbp f4. \lbp g8 aes bes | c4. ees8 d c | %14
\nbp bes4. \lbp ees8 ees g, | %15
bes4. \pcAO ees,8 g f \pcAO \nbp ees4. \he
}
BBGHFxBBGMusicRHB = \relative c'{ \BBGHFxBBGMusicGlobal \clef "treble"
    g'8 g f | ees4. f8 g aes | %2
g4. ees8 ees g | f4. ees8 ees d | %4
d4. ees8 d ees | ees4. ees8 ees ees | %6
g4. g8 g ees | ees4. ees8 ees d | %8
ees4. ees8 d f | f4. d8 f ees | %10
ees4. g8 g ees | ees4. ees8 ees d | %12
d4. ees8 d ees | ees4. ees8 f aes | %14
g4. g8 g ees | g4. ees8 ees d ees4.
}
BBGHFxBBGMusicRH =  \partCombine #'(2 . 20)  \BBGHFxBBGMusicRHA \BBGHFxBBGMusicRHB
BBGHFxBBGMusicLHA = \relative c{ \BBGHFxBBGMusicGlobal \clef "bass"
    bes'8 bes bes | bes4. bes8 bes bes | %2
ees4. g,8 bes ees | d4. bes8 bes bes | %4
bes4. bes8 bes bes \pcAO | %5
aes4. c8 bes c | ees4. bes8 bes bes | %7
g4. g8 bes aes | g4. r4 bes8 | %9
bes bes bes r4 bes8 | %10
bes bes bes ees ees bes | %11
bes bes bes r4 bes8 | %12
bes bes bes bes bes bes \pcAO | %13
aes \pcAO aes \pcAO aes r4 ees'8 | %14
ees ees ees r4 ees8 | %15
ees bes bes g bes aes g4.
}
BBGHFxBBGMusicLHB = \relative c{ \BBGHFxBBGMusicGlobal \clef "bass"
    ees8 ees ees | ees4. ees8 ees ees | %2
ees4. ees8 ees ees | bes4. bes8 bes bes | %4
bes4. ees8 f g | aes4. aes8 aes aes | %6
ees4. ees8 ees ees | ees4. ees8 bes bes | %8
ees4. r4 bes8 | bes bes bes r4 ees8 | %10
ees ees ees ees ees ees | %11
ees ees ees r4 bes8 | bes bes bes ees f g | %13
aes aes aes r4 aes8 | ees ees ees r4 ees8 | %15
ees ees ees ees bes bes ees4.
}
BBGHFxBBGMusicLH =  \partCombine #'(2 . 20)  \BBGHFxBBGMusicLHA \BBGHFxBBGMusicLHB
BBGHFxBBGMusicLyrics = \relative c''''{ \BBGHFxBBGMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4.
}

BBGHGxGHMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 2 = 68
    \time 6/4
    \key f \major
    
}
BBGHGxGHMusicRHA = \relative c'{ \BBGHGxGHMusicGlobal \clef "treble"
    \pcAO f2 a4 c2 a4 | a2 g4 g \pcAO f r | %2
bes2 bes4 a2 a4 | %3
g2 \pcAO f4 g2. \pcAO | f2 a4 c2 a4 | %5
a2 g4 g \pcAO f r | %6
bes2 bes4 a2 \pcAO f4 | %7
a2 g4 \pcAO f2. \cbp | %8
d'2 \postCho d4 c2 a4 | c2 c4 a2. | %10
bes2 bes4 a2 a4 | g2 b4 c2. \pcAO | %12
f,2 a4 c2 a4 a2 g4 \pcAO f2. \he
}
BBGHGxGHMusicRHB = \relative c'{ \BBGHGxGHMusicGlobal \clef "treble"
    f2 f4 a2 f4 | f2 e4 e f r | f2 f4 f2 f4 | %3
c2 f4 e2. | f2 f4 a2 f4 | f2 e4 e f r | %6
f2 f4 f2 f4 | f2 e4 f2. | f2 f4 f2 f4 | %9
e2 e4 f2. | g2 g4 f2 f4 | %11
e2 d8 [f] e2. | f2 f4 a2 f4 e2 e4 f2.
}
BBGHGxGHMusicRH =  \partCombine #'(2 . 20)  \BBGHGxGHMusicRHA \BBGHGxGHMusicRHB
BBGHGxGHMusicLHA = \relative c{ \BBGHGxGHMusicGlobal \clef "bass"
    a'2 c4 c2 c4 | c2 bes4 bes a r | %2
d2 d4 c2 c4 | c2 b4 c2. | a2 c4 c2 c4 | %5
c2 bes4 bes a r | d2 d4 c2 a4 | %7
c2 bes4 a2. | bes2 bes4 a2 \pcAO f4 | %9
g2 c4 c2. | c2 c4 c2 c4 | %11
c2 \pcAO g4 g2. | a2 c4 c2 c4 c2 bes4 a2.
}
BBGHGxGHMusicLHB = \relative c{ \BBGHGxGHMusicGlobal \clef "bass"
    f2 f4 f2 f4 | c2 c4 f f r | f2 f4 f2 f4 | %3
e2 d4 c2. | f2 f4 f2 f4 | c2 c4 f f r | %6
bes,2 bes4 c2 c4 | c2 c4 f2. | %8
bes,2 bes4 f'2 f4 | c2 c4 f2. | %10
e2 e4 f2 f4 | g2 g4 c,2. | f2 f4 f2 f4 c2 c4 f2.
}
BBGHGxGHMusicLH =  \partCombine #'(2 . 20)  \BBGHGxGHMusicLHA \BBGHGxGHMusicLHB
BBGHGxGHMusicLyrics = \relative c''''{ \BBGHGxGHMusicGlobal \clef "treble"
    \hideNotes \voiceFour c2 c4 c2 c4 c2 c4 c4 c4  s4 c2 c4 c2 c4 c2 c4 c2. c2 c4 c2 c4 c2 c4 c4 c4  s4 c2 c4 c2 c4 c2 c4 c2. c2 c4 c2 c4 c2 c4 c2. c2 c4 c2 c4 c2 c4 c2. c2 c4 c2 c4 c2 c4 c2.
}

BBGHHxCCFMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 92
    \time 4/4
    \key des \major
    
}
BBGHHxCCFMusicRHA = \relative c'{ \BBGHHxCCFMusicGlobal \clef "treble"
    aes'4. aes8 aes aes bes aes | %1
aes f4.~f4 r | ges4. f8 ees f ges aes | %3
f2. r4 | des'4. des8 des des ees des | %5
c bes4.~bes4 r | %6
c4. bes8 aes f ges8. ees16 \pcAp | %7
\nbp des2. \pcAu r4 \cbp | %8
aes'4. \postCho aes8 aes aes bes aes \nbp | %9
des2. r4 | c4. bes8 aes bes aes8. ges16 | %11
\nbp f2. r4 | %12
des'4. des8 des des ees des | %13
\nbp bes2. r4 | c4. bes8 aes bes c ees \nbp des2. \he
}
BBGHHxCCFMusicRHB = \relative c'{ \BBGHHxCCFMusicGlobal \clef "treble"
    f4. f8 f f ges f | f des4.~des4 r | %2
ees4. des8 c des ees c | des2. r4 | %4
f4. f8 aes aes aes aes | %5
aes ges4.~ges4 r | %6
ges4. ges8 f des ees8. c16 | des2. r4 | %8
f4. f8 f f ges f | f2. r4 | %10
ees4. des8 c des c8. ees16 | des2. r4 | %12
f4. f8 aes aes aes aes | ges2. r4 | %14
ees4. des8 c des ees ges f2.
}
BBGHHxCCFMusicRH =  \partCombine #'(2 . 20)  \BBGHHxCCFMusicRHA \BBGHHxCCFMusicRHB
BBGHHxCCFMusicLHA = \relative c{ \BBGHHxCCFMusicGlobal \clef "bass"
    des'4. des8 des des des des | %1
des aes4.~aes4 r | %2
aes4. aes8 aes aes aes aes | aes2. r4 | %4
aes4. aes8 aes aes aes des | %5
des des4.~des4 r \pcAp | %6
aes4. \pcAu c8 des \pcAO aes aes8. ges16 | %7
f2. r4 | des'4. des8 des des des des | %9
aes2. r4 | aes4. aes8 aes aes aes8. aes16 | %11
aes2. r4 | aes4. aes8 aes aes aes des | %13
des2. r4 \pcAp | %14
aes4. aes8 aes aes aes aes \pcAu aes2.
}
BBGHHxCCFMusicLHB = \relative c{ \BBGHHxCCFMusicGlobal \clef "bass"
    des4. des8 des des des des | %1
des des4.~des4 r | %2
aes4. aes8 aes aes aes aes | des2. r4 | %4
des4. des8 f f f f | ges ges4.~ges4 r | %6
aes4. aes8 aes aes aes,8. aes16 | %7
des2. r4 | des4. des8 des des des des | %9
des2. r4 | aes4. aes8 aes aes aes8. aes16 | %11
des2. r4 | des4. des8 f f f f | ges2. r4 | %14
aes4. aes8 aes aes aes aes des,2.
}
BBGHHxCCFMusicLH =  \partCombine #'(2 . 20)  \BBGHHxCCFMusicLHA \BBGHHxCCFMusicLHB
BBGHHxCCFMusicLyrics = \relative c''''{ \BBGHHxCCFMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4. c8 c8 c8 c8 c8 c8 c4. s4 s4 c4. c8 c8 c8 c8 c8 c4. s4. s4 c4. c8 c8 c8 c8 c8 c8 c4. s4 s4 c4. c8 c8 c8 c8. c16 c2.  s4 c4. c8 c8 c8 c8 c8 c2 s4 s4 c4. c8 c8 c8 c8. c16 c2.  s4 c4. c8 c8 c8 c8 c8 c2.  s4 c4. c8 c8 c8 c8 c8 c2.
}

BBGHIxBZGMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 74
    \time 3/4
    \key as \major
    \partial 4
    
}
BBGHIxBZGMusicRHA = \relative c'{ \BBGHIxBZGMusicGlobal \clef "treble"
    c8. des16 |  \nbp ees4. ees8 c'8. bes16 | %2
\nbp aes4 \pcAO c, \lbp g'8. f16 | %3
ees2 \pcAO des4 | %4
\nbp c2 \lbp c8. des16 | %5
\nbp ees4. ees8 c'8. bes16 | %6
\nbp aes4 \pcAO c, \lbp g'8. f16 | %7
ees2 bes'4 | %8
\nbp aes2 \cbp c8. \postCho des16 | %9
\nbp ees4. c8 des8. c16 | %10
\nbp c4 bes \lbp bes8. c16 | %11
\nbp des4. bes8 c8. des16 | %12
\nbp c4 (aes) \lbp ees8. ees16 | %13
\nbp f4. aes8 g8. f16 | %14
\nbp ees4 aes \lbp aes8. bes16 | %15
c2 bes4 \nbp aes2 \he
}
BBGHIxBZGMusicRHB = \relative c'{ \BBGHIxBZGMusicGlobal \clef "treble"
    aes8. bes16 | c4. c8 ees8. des16 | %2
c4 c des8. des16 | des2 des4 | %4
aes2 aes8. bes16 | c4. c8 ees8. des16 | %6
c4 c des8. des16 | des2 des4 | %8
c2 ees8. ees16 | ees4. ees8 f8. ees16 | %10
ees4 ees ees8. ees16 | %11
ees4. ees8 ees8. ees16 | %12
ees4 (c) c8. c16 | des4. f8 ees8. des16 | %14
c4 c ees8. f16 | ees2 des4 c2
}
BBGHIxBZGMusicRH =  \partCombine #'(2 . 20)  \BBGHIxBZGMusicRHA \BBGHIxBZGMusicRHB
BBGHIxBZGMusicLHA = \relative c{ \BBGHIxBZGMusicGlobal \clef "bass"
    ees8. ees16 | aes4. aes8 aes8. g16 | %2
aes4 aes bes8. aes16 | g2 bes4 | %4
ees,2 ees8. ees16 | aes4. aes8 aes8. g16 | %6
aes4 aes bes8. aes16 | g2 g4 | %8
aes2 \pcAO aes8. bes16 | %9
c4. aes8 aes8. aes16 | aes4 g g8. aes16 | %11
bes4. g8 aes8. bes16 | %12
aes4 ees aes8. aes16 | %13
aes4. aes8 aes8. aes16 | %14
aes4 ees aes8. aes16 | aes2 g4 aes2
}
BBGHIxBZGMusicLHB = \relative c{ \BBGHIxBZGMusicGlobal \clef "bass"
    aes8. aes16 | aes4. aes8 ees'8. ees16 | %2
aes,4 aes ees'8. ees16 | ees2 ees4 | %4
aes,2 aes8. aes16 | %5
aes4. aes8 ees'8. ees16 | %6
aes,4 aes ees'8. ees16 | ees2 ees4 | %8
aes,2 aes'8. aes16 | %9
aes4. aes,8 aes8. aes16 | %10
ees'4 ees ees8. ees16 | %11
ees4. ees8 ees8. ees16 | %12
aes,4 aes aes8. aes16 | %13
des4. des8 des8. des16 | %14
aes4 aes c8. des16 | ees2 ees4 aes,2
}
BBGHIxBZGMusicLH =  \partCombine #'(2 . 20)  \BBGHIxBZGMusicLHA \BBGHIxBZGMusicLHB
BBGHIxBZGMusicLyrics = \relative c''''{ \BBGHIxBZGMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8. c16 c4. c8 c8. c16 c4 c4 c8. c16 c2 c4 c2 c8. c16 c4. c8 c8. c16 c4 c4 c8. c16 c2 c4 c2 c8. c16 c4. c8 c8. c16 c4 c4 c8. c16 c4. c8 c8. c16 c4  s4 c8. c16 c4. c8 c8. c16 c4 c4 c8. c16 c2 c4 c2
}

BBGIZxCBBMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 84
    \time 4/4
    \key bes \major
    
}
BBGIZxCBBMusicRHA = \relative c'{ \BBGIZxCBBMusicGlobal \clef "treble"
    f4. f8 g f d bes' | bes2 a4. r8 | %2
c4. bes8 a g f g |  \nbp f2. r4 | %4
f4. f8 g f d bes' | %5
\nbp c2 g4 \lbp g8 g | %6
\nbp f4 d' d4. c8 |  \nbp bes2. r4 \cbp | %8
c4. \postCho c8 d c bes a |  \nbp bes2 d | %10
c4. d8 c bes a g \pcAO |  \nbp f2. r4 | %12
d'4. d8 ees d c bes | %13
\nbp c2 \set Score.tempoHideNote = ##t \tempo 4 = 42  \fpre ees4 \fpost \set Score.tempoHideNote = ##t \tempo 4 = 84   \lbp g,8 g | %14
\nbp f4 d' d4. c8 \nbp bes2. r4  \he
}
BBGIZxCBBMusicRHB = \relative c'{ \BBGIZxCBBMusicGlobal \clef "treble"
    d4. d8 ees d bes d | ees2 ees4. r8 | %2
ees4. ees8 ees ees ees ees | d2. r4 | %4
d4. d8 ees d bes d | ees2 ees4 cis8 cis | %6
d4 f f4. ees8 | d2. r4 | %8
ees4. ees8 f ees d c | d2 f | %10
f4. f8 f e e e | f4 (d ees) r | %12
f4. f8 g f ees d | ees2 g4 cis,8 cis | %14
d4 f f4. ees8 d2. r4
}
BBGIZxCBBMusicRH =  \partCombine #'(2 . 20)  \BBGIZxCBBMusicRHA \BBGIZxCBBMusicRHB
BBGIZxCBBMusicLHA = \relative c{ \BBGIZxCBBMusicGlobal \clef "bass"
    bes'4. bes8 bes bes f f |\pcAp f4 (g f4.) \pcAu r8 | %5
a4. c8 c c a a |bes2. r4 |bes4. bes8 bes bes f f | g2 bes4 bes8 bes | bes4
bes bes4. a8 | bes2. r4 |a4. a8 bes a \pcAO f \pcAO f | f2 bes | a4. bes8 a g c bes | a4 (
bes c) r |bes4. bes8 bes bes f f| g2  bes4  bes8 bes | bes4 bes bes4. a8 | \pcCh bes2. r4
}
BBGIZxCBBMusicLHB = \relative c{ \BBGIZxCBBMusicGlobal \clef "bass"
    bes4. bes8 bes bes bes bes | c2 f4. r8 | %2
f4. f8 f f f f | bes,2. r4 | %4
bes4. bes8 bes bes bes bes | %5
ees2 ees4 e8 e | f4 f f4. f8 | bes,2. r4 | %8
f'4. f8 f f f f | bes,2 bes | %10
c4. c8 c c c c | f2. r4 | %12
bes,4. bes8 bes bes bes bes | %13
ees2 \fpre ees4 \fpostbelow e8 e | f4 f f4. f8 <f bes,> 2. r4
}
BBGIZxCBBMusicLH =  \partCombine #'(2 . 20)  \BBGIZxCBBMusicLHA \BBGIZxCBBMusicLHB
BBGIZxCBBMusicLyrics = \relative c''''{ \BBGIZxCBBMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4. c8 c8 c8 c8 c8 c2 c4.  s8 c4. c8 c8 c8 c8 c8 c2.  s4 c4. c8 c8 c8 c8 c8 c2 c4 c8 c8 c4 c4 c4. c8 c2.  s4 c4. c8 c8 c8 c8 c8 c2 c2 c4. c8 c8 c8 c8 c8 c2.  s4 c4. c8 c8 c8 c8 c8 c2 c4 c8 c8 c4 c4 c4. c8 c2.
}

BBGIAxAIFMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 80
    \time 4/4
    \key f \major
    \partial 4
    
}
BBGIAxAIFMusicRHA = \relative c'{ \BBGIAxAIFMusicGlobal \clef "treble"
    a'4 |  \nbp c4. \pcAO c,8 d4 bes' | %2
a4. g8 f4 \breathe \lbp c' |  \nbp d4. c8 e,4 f | %4
bes a g4. \lbp g8 |  \nbp g4 g c4. bes8 | %6
a4 d c \breathe \lbp c | %7
\nbp c4. \pcAO c,8 d4 bes' | %8
a4. g8 \set Score.tempoHideNote = ##t \tempo 4 = 40  \fpre f4 \fpost \set Score.tempoHideNote = ##t \tempo 4 = 80   \cbp a \postCho | %9
\nbp a4. a8 g f e f | %10
\nbp c'2. \lbp bes4 | %11
\nbp bes4. bes8 a g fis g | %12
\nbp a4.~a4 \lbp c8 bes a | %13
d4. bes8 a4 g | %14
\nbp c4.~c \pcAO \lbp f,4 | %15
\nbp d8 e f [bes] a4. \pcAO c,8 g'4. \pcAO c,8 \set Score.tempoHideNote = ##t \tempo 4 = 40  \fpre f4 \fpost \set Score.tempoHideNote = ##t \tempo 4 = 80   \he
}
BBGIAxAIFMusicRHB = \relative c'{ \BBGIAxAIFMusicGlobal \clef "treble"
    c4 | c4. c8 bes4 f' | f4. e8 c4 f | %3
f4. f8 c4 c | g' f e4. e8 | d4 f e4. e8 | %6
f4 f f e | f4. c8 bes4 d | e4. e8 c4 f | %9
cis4. cis8 cis cis cis cis | e2. e4 | %11
e4. e8 e e e e | f4.~f4 f8 e f | %13
f4. f8 e4 e | f4.~f f4 | %15
bes,8 c d [f] f4. c8 e4. c8 c4
}
BBGIAxAIFMusicRH =  \partCombine #'(2 . 20)  \BBGIAxAIFMusicRHA \BBGIAxAIFMusicRHB
BBGIAxAIFMusicLHA = \relative c{ \BBGIAxAIFMusicGlobal \clef "bass"
    a'4 | a4. a8 f4 d' | c4. bes8 a4 a | %3
bes4. a8 bes4 a | c c c4. c8 | %5
b4 b c4. c8 | c4 \pcAO bes c bes | %7
a4. f8 f4 bes | c4. bes8 a4 c | %9
a4. a8 a a a a | bes2. g4 | %11
c4. c8 c bes a bes | c4.~c4 c8 c c | %13
bes4. d8 c4 c | c4.~c c4 | %15
f, bes8 [d] c4. a8 bes4. bes8 a4
}
BBGIAxAIFMusicLHB = \relative c{ \BBGIAxAIFMusicGlobal \clef "bass"
    f4 | f4. f8 bes,4 bes | c4. c8 f4 f | %3
bes,4. f'8 g4 f | e f c4. g'8 | %5
g4 g g4. c,8 | f4 bes a g | %7
f4. a,8 bes4 g | c4. c8 \fpre f4 \fpostbelow f | %9
a,4. a8 a a a a | g2. c4 | %11
c4. c8 c c c c | f4.~f4 a8 g f | %13
bes,4. bes8 c4 bes | a4.~a a4 | %15
bes bes8 [bes] c4. c8 c4. c8 \fpre f,4 \fpostbelow
}
BBGIAxAIFMusicLH =  \partCombine #'(2 . 20)  \BBGIAxAIFMusicLHA \BBGIAxAIFMusicLHB
BBGIAxAIFMusicLyrics = \relative c''''{ \BBGIAxAIFMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c4. c8 c4 c4 c4. c8 c4 c4 c4. c8 c4 c4 c4 c4 c4. c8 c4 c4 c4. c8 c4 c4 c4 c4 c4. c8 c4 c4 c4. c8 c4 c4 c4. c8 c8 c8 c8 c8 c2. c4 c4. c8 c8 c8 c8 c8 c4.  s4 c8 c8 c8 c4. c8 c4 c4 c4.  s4. c4 c8  s8 c8  s8 c4. c8 c4. c8 c4
}

BBGIBxCAZMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 96
    \time 3/4
    \key bes \major
    
}
BBGIBxCAZMusicRHA = \relative c'{ \BBGIBxCAZMusicGlobal \clef "treble"
    f4 d bes' | a4. g8 a4 | c g a | %3
\nbp g2 (f4) \breathe \pcAO | f g a | %5
bes4. a8 bes4 | d g, c |  \nbp c2 (f,4) \breathe | %8
f d bes' | a4. g8 a4 | ees' g, a | %11
\nbp g2 (f4) \breathe | bes c d | g,4. a8 bes4 | %14
c f, c' |  \nbp bes2. \cbp | %16
d4 \postCho d d | ees4. a,8 a4 | c c c | %19
\nbp bes2. | bes4 a bes \pcAO | %21
f4. bes8 d4 | d g, c |  \nbp c2. | %24
d4 d d | ees4. a,8 a4 | c c d | %27
\nbp bes2. | bes4 a bes | f4. bes8 d4 | %30
d f, c' \nbp bes2. \he
}
BBGIBxCAZMusicRHB = \relative c'{ \BBGIBxCAZMusicGlobal \clef "treble"
    d4 bes d | ees4. ees8 ees4 | ees ees ees | %3
e2 (d4) | f ees ees | d4. ees8 f4 | %6
e e e | ees2. | d4 bes f' | %9
ees4. ees8 ees4 | ees ees ees | e2 (f4) | %12
f f f | ees4. ees8 ees4 | ees ees ees | %15
d2. | f4 g bes | a4. f8 f4 | a a a | %19
g2. | g4 ges g | f4. f8 f4 | e e e | %23
ees2. | f4 g bes | a4. f8 f4 | a a a | %27
g2. | g4 g g | d4. f8 f4 | f d ees d2.
}
BBGIBxCAZMusicRH =  \partCombine #'(2 . 20)  \BBGIBxCAZMusicRHA \BBGIBxCAZMusicRHB
BBGIBxCAZMusicLHA = \relative c{ \BBGIBxCAZMusicGlobal \clef "bass"
    bes'4 f f | f4. f8 f4 | a bes c | %3
des2 r4 | bes bes f | f4. f8 bes4 | %6
bes bes bes | a2. | bes4 f d' | %9
c4. bes8 c4 | a bes c | cis2 (d4) | %12
bes a bes | bes4. bes8 bes4 | a a a | %15
bes2. \pcAO | bes4 d d | c4. ees8 ees4 | %18
ees ees d | d2. | ees4 c bes | %21
bes4. bes8 bes4 | bes bes bes | %23
a2. \pcAO | bes4 d d | c4. ees8 ees4 | %26
ees ees d | d2. | des4 des des \pcAO | %29
f,4. bes8 bes4 | bes bes a bes2.
}
BBGIBxCAZMusicLHB = \relative c{ \BBGIBxCAZMusicGlobal \clef "bass"
    bes4 bes bes | c4. c8 c4 | f f f | %3
bes,2. | d4 ees c | bes4. c8 d4 | g g g | %7
f2 (f,4) | bes bes bes | f'4. f8 f4 | %10
f f f | bes,2. | d4 c bes | ees4. f8 g4 | %14
f f f | bes,2. | bes'4 bes bes | %17
f4. f8 f4 | f f ges | g2. | %20
ees4 ees ees | d4. d8 bes4 | c c c | %23
f2. | bes4 bes bes | f4. f8 f4 | %26
f f ges | g2. | e4 e e | f4. d8 bes4 | %30
f' f f bes,2.
}
BBGIBxCAZMusicLH =  \partCombine #'(2 . 20)  \BBGIBxCAZMusicLHA \BBGIBxCAZMusicLHB
BBGIBxCAZMusicLyrics = \relative c''''{ \BBGIBxCAZMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c4 c4 c4. c8 c4 c4 c4 c4 c2  s4 c4 c4 c4 c4. c8 c4 c4 c4 c4 c2  s4 c4 c4 c4 c4. c8 c4 c4 c4 c4 c2  s4 c4 c4 c4 c4. c8 c4 c4 c4 c4 c2. c4 c4 c4 c4. c8 c4 c4 c4 c4 c2. c4 c4 c4 c4. c8 c4 c4 c4 c4 c2. c4 c4 c4 c4. c8 c4 c4 c4 c4 c2. c4 c4 c4 c4. c8 c4 c4 c4 c4 c2.
}

BBGICxGHMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 2 = 68
    \time 6/4
    \key f \major
    
}
BBGICxGHMusicRHA = \relative c'{ \BBGICxGHMusicGlobal \clef "treble"
    \pcAO f2 a4 c2 a4 | a2 g4 g \pcAO f r | %2
bes2 bes4 a2 a4 | %3
g2 \pcAO f4 g2. \pcAO | f2 a4 c2 a4 | %5
a2 g4 g \pcAO f r | %6
bes2 bes4 a2 \pcAO f4 | %7
a2 g4 \pcAO f2. \cbp | %8
d'2 \postCho d4 c2 a4 | c2 c4 a2. | %10
bes2 bes4 a2 a4 | g2 b4 c2. \pcAO | %12
f,2 a4 c2 a4 a2 g4 \pcAO f2. \he
}
BBGICxGHMusicRHB = \relative c'{ \BBGICxGHMusicGlobal \clef "treble"
    f2 f4 a2 f4 | f2 e4 e f r | f2 f4 f2 f4 | %3
c2 f4 e2. | f2 f4 a2 f4 | f2 e4 e f r | %6
f2 f4 f2 f4 | f2 e4 f2. | f2 f4 f2 f4 | %9
e2 e4 f2. | g2 g4 f2 f4 | %11
e2 d8 [f] e2. | f2 f4 a2 f4 e2 e4 f2.
}
BBGICxGHMusicRH =  \partCombine #'(2 . 20)  \BBGICxGHMusicRHA \BBGICxGHMusicRHB
BBGICxGHMusicLHA = \relative c{ \BBGICxGHMusicGlobal \clef "bass"
    a'2 c4 c2 c4 | c2 bes4 bes a r | %2
d2 d4 c2 c4 | c2 b4 c2. | a2 c4 c2 c4 | %5
c2 bes4 bes a r | d2 d4 c2 a4 | %7
c2 bes4 a2. | bes2 bes4 a2 \pcAO f4 | %9
g2 c4 c2. | c2 c4 c2 c4 | %11
c2 \pcAO g4 g2. | a2 c4 c2 c4 c2 bes4 a2.
}
BBGICxGHMusicLHB = \relative c{ \BBGICxGHMusicGlobal \clef "bass"
    f2 f4 f2 f4 | c2 c4 f f r | f2 f4 f2 f4 | %3
e2 d4 c2. | f2 f4 f2 f4 | c2 c4 f f r | %6
bes,2 bes4 c2 c4 | c2 c4 f2. | %8
bes,2 bes4 f'2 f4 | c2 c4 f2. | %10
e2 e4 f2 f4 | g2 g4 c,2. | f2 f4 f2 f4 c2 c4 f2.
}
BBGICxGHMusicLH =  \partCombine #'(2 . 20)  \BBGICxGHMusicLHA \BBGICxGHMusicLHB
BBGICxGHMusicLyrics = \relative c''''{ \BBGICxGHMusicGlobal \clef "treble"
    \hideNotes \voiceFour c2 c4 c2 c4 c2 c4 c4 c4  s4 c2 c4 c2 c4 c2 c4 c2. c2 c4 c2 c4 c2 c4 c4 c4  s4 c2 c4 c2 c4 c2 c4 c2. c2 c4 c2 c4 c2 c4 c2. c2 c4 c2 c4 c2 c4 c2. c2 c4 c2 c4 c2 c4 c2.
}

BBGIDxACIMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 84
    \time 4/4
    \key bes \major
    
}
BBGIDxACIMusicRHA = \relative c'{ \BBGIDxACIMusicGlobal \clef "treble"
    f4. g8 f bes a8. g16 | g2 f4 r | %2
ees4. d8 ees f g8. f16 | %3
\nbp f2 (d4) r | f4. g8 f bes a8. g16 | %5
g2 f4 r | ees4. d8 ees f g8. a16 | %7
\nbp bes2. r4 \cbp | %8
c4. \postCho c8 c c d8. c16 | bes2 f4 r | %10
g4. g8 g g a bes |  \nbp c2. r4 | %12
d4. d8 ees d bes8. g16 | f2 d4 r | %14
ees4. g8 f bes a8. a16 \nbp bes2. \he
}
BBGIDxACIMusicRHB = \relative c'{ \BBGIDxACIMusicGlobal \clef "treble"
    d4. ees8 d d f8. ees16 | ees2 d4 r | %2
c4. b8 c d ees8. d16 | d2 (bes4) r | %4
d4. ees8 d d f8. ees16 | ees2 d4 r | %6
c4. b8 c d ees8. ees16 | d2. r4 | %8
ees4. ees8 ees ees f8. ees16 | d2 d4 r | %10
d4. d8 d d d d | ees2. r4 | %12
f4. f8 g f d8. ees16 | d2 bes4 r | %14
bes4. ees8 d f f8. ees16 d2.
}
BBGIDxACIMusicRH =  \partCombine #'(2 . 20)  \BBGIDxACIMusicRHA \BBGIDxACIMusicRHB
BBGIDxACIMusicLHA = \relative c{ \BBGIDxACIMusicGlobal \clef "bass"
    bes'4. bes8 bes bes bes8. bes16 | %1
bes2 bes4 r | a4. a8 a a a8. a16 | %3
bes2 (f4) r | %4
bes4. bes8 bes bes bes8. bes16 | %5
bes2 bes4 r | a4. a8 f f c'8. \pcAO f,16 | %7
f2. r4 | a4. a8 a a bes8. \pcAO f16 | %9
f2 bes4 r | bes4. bes8 bes bes c bes | %11
a2. r4 | bes4. bes8 bes bes f8. bes16 | %13
bes2 f4 r | g4. bes8 bes d c8. c16 bes2.
}
BBGIDxACIMusicLHB = \relative c{ \BBGIDxACIMusicGlobal \clef "bass"
    bes4. bes8 bes bes bes8. bes16 | %1
bes2 bes4 r | f'4. f8 f f f8. f16 | %3
bes,2 (bes4) r4 | bes4. bes8 bes bes d8. ees16 | %5
bes2 bes4 r | f'4. f8 f, f f'8. f16 | %7
bes,2. r4 | f'4. f8 f f f8. f16 | %9
bes,2 bes4 r | g'4. g8 g g fis g | %11
f2. r4 | bes,4. bes8 bes bes bes8. bes16 | %13
bes2 bes4 r | ees4. ees8 f f f8. f16 bes,2.
}
BBGIDxACIMusicLH =  \partCombine #'(2 . 20)  \BBGIDxACIMusicLHA \BBGIDxACIMusicLHB
BBGIDxACIMusicLyrics = \relative c''''{ \BBGIDxACIMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4. c8 c8 c8 c8. c16 c2 c4  s4 c4. c8 c8 c8 c8. c16 c2 s4 s4 c4. c8 c8 c8 c8. c16 c2 c4  s4 c4. c8 c8 c8 c8. c16 c2.  s4 c4. c8 c8 c8 c8. c16 c2 c4  s4 c4. c8 c8 c8 c8 c8 c2.  s4 c4. c8 c8 c8 c8. c16 c2 c4  s4 c4. c8 c8 c8 c8. c16 c2.
}

BBGIExAGBMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 92
    \time 4/4
    \key f \major
    \partial 4.
    
}
BBGIExAGBMusicRHA = \relative c'{ \BBGIExAGBMusicGlobal \clef "treble"
    f8 f8. g16 | a2~a8 f bes8. f16 | %2
\nbp a2. \lbp a4 | %3
\nbp c2~c8 bes g gis | %4
\nbp a2~a8 \lbp f f8. g16 | %5
a2~a8 c c8. f,16 | f2. \lbp bes4 | %7
\nbp a4. \pcAO c,8 g'4. c,8 | %8
\nbp f2. \cbp f4 \postCho | %9
\nbp bes2. f4  | a2. a4 | %11
g4. \pcAO d8 g4 a |  \nbp g2. \lbp bes4 | %13
\nbp a4. a8 bes bes c c | %14
\nbp d2. \lbp f,4 | %15
\nbp f16 \set Score.tempoHideNote = ##t \tempo 4 = 46  \fpre a8. \fcont bes8 \fpost \set Score.tempoHideNote = ##t \tempo 4 = 92   a \set Score.tempoHideNote = ##t \tempo 4 = 46  \fpre g \fpost \set Score.tempoHideNote = ##t \tempo 4 = 92   d \set Score.tempoHideNote = ##t \tempo 4 = 46  \fpre g  \fpost \set Score.tempoHideNote = ##t \tempo 4 = 92   c, f2~f8 \he
}
BBGIExAGBMusicRHB = \relative c'{ \BBGIExAGBMusicGlobal \clef "treble"
    c8 c8. c16 | f2~f8 ees d8. des16 | %2
c2. c4 | e2~e8 e e e | %4
f2~f8 c c8. c16 | %5
f2~f8 ees ees8. ees16 | d2. f4 | %7
f4. c8 bes4. bes8 | a2. ees'4 | d2. des4 | %10
c2. f4 | f4. d8 f4 f | e2. e4 | %13
f4. f8 e e ees ees | d4 (f2) d4 | %15
c16 f8. e8 f f b, bes bes a2~a8
}
BBGIExAGBMusicRH =  \partCombine #'(2 . 20)  \BBGIExAGBMusicRHA \BBGIExAGBMusicRHB
BBGIExAGBMusicLHA = \relative c{ \BBGIExAGBMusicGlobal \clef "bass"
    a'8 a8. bes16 | c2~c8 a bes8. bes16 | %2
c2. \pcAO f,4 | g2~g8 g c c | %4
c2~c8 a a8. bes16 | c2~c8 a a8. c16 | %6
bes2. d4 | c4. a8 e4. g8 | f2. a4 | %9
f2. f4 \pcAO | f2. c'4 | b4. b8 b4 b | %12
c2. c4 | c4. c8 c c a a | bes2. gis4 | %15
a16 c8. d8 c b g e g f2~f8
}
BBGIExAGBMusicLHB = \relative c{ \BBGIExAGBMusicGlobal \clef "bass"
    f8 f8. f16 | f2~f8 f bes,8. bes16 | %2
f'2. f4 | c2~c8 c c c | %4
f2~f8 f f8. f16 | f2~f8 f f8. f16 | %6
bes,2. bes4 | c4. c8 c4. c8 | f,2. f'4 | %9
bes,2. bes4 | f'2. f4 | d4. g8 d4 g, | %12
c2. c4 | f4. f8 g g f f | bes,2. b4 | %15
c16 \fpre c8. \fcontbelow c8 \fpostbelow c \fpre d \fpostbelow d \fpre c \fpostbelow c f,2~f8
}
BBGIExAGBMusicLH =  \partCombine #'(2 . 20)  \BBGIExAGBMusicLHA \BBGIExAGBMusicLHB
BBGIExAGBMusicLyrics = \relative c''''{ \BBGIExAGBMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8 c8. c16 c2  s8 c8 c8. c16 c2. c4 c2  s8 c8 c8 c8 c2  s8 c8 c8. c16 c4  s4. c8 c8. c16 c2  s4 c4 c4. c8 c4. c8 c2. c4 c2. c4 c2. c4 c4. c8 c4 c4 c2. c4 c4. c8 c8 c8 c8 c8 c2. c4 c16 c8. c8 c8 c8 c8 c8 c8 c2
}

BBGIFxAIDMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 94
    \time 4/4
    \key es \major
    
}
BBGIFxAIDMusicRHA = \relative c'{ \BBGIFxAIDMusicGlobal \clef "treble"
    g'4 bes c bes | bes4. aes8 g2 | %2
ees'4 d c bes | g \pcAO ees f2 | %4
g4 bes c bes | bes4. aes8 g2 | %6
g4 aes g f | g4. f8 \pcAO ees2  | %8
ees4  aes g aes | des c bes2 | c4 c d ees | %11
aes, g f2 | g4 bes c bes | bes4. aes8 g2 | %14
g4 aes g f g4. f8 \pcAO ees2 \he
}
BBGIFxAIDMusicRHB = \relative c'{ \BBGIFxAIDMusicGlobal \clef "treble"
    ees4 ees c ees | ees (d8) d ees2 | %2
ees4 ees ees d | ees ees d2 | %4
ees4 ees ees8 [aes] g4 | %5
f (ees8) ees d2 | ees4 ees ees ees | %7
ees4. d8 ees2 | c4 ees ees ees | %9
ees ees g2 | ees4 ees aes g | f ees d2 | %12
ees4 ees ees8 [aes] g4 | %13
f (ees8) ees d2 | ees4 ees ees ees ees4. d8 ees2
}
BBGIFxAIDMusicRH =  \partCombine #'(2 . 20)  \BBGIFxAIDMusicRHA \BBGIFxAIDMusicRHB
BBGIFxAIDMusicLHA = \relative c{ \BBGIFxAIDMusicGlobal \clef "bass"
    bes'4 bes ees bes | c (bes8) bes bes2 | %2
bes4 bes \pcAO aes aes | bes a bes2 | %4
bes4 g aes8 [c] ees4 | d (c8) c b2 | %6
c4 aes bes c | bes4. aes8 g2 | %8
aes4 c bes c | bes c ees2 | %10
c4 bes bes bes | bes bes bes2 | %12
bes4 g aes8 [c] ees4 | d (c8) c b2 | %14
c4 aes bes c bes4. aes8 g2
}
BBGIFxAIDMusicLHB = \relative c{ \BBGIFxAIDMusicGlobal \clef "bass"
    ees4 g aes g | f (bes,8) bes ees2 | %2
g4 g aes f | ees c bes2 | %4
ees4 ees ees ees | f4. f8 g2 | %6
c,4 c bes aes | bes4. bes8 ees2 | %8
ees4 ees ees aes | g aes ees2 | %10
aes4 g f ees | d ees bes2 | %12
ees4 ees ees ees | f4. f8 g2 | %14
c,4 c bes aes bes4. bes8 ees2
}
BBGIFxAIDMusicLH =  \partCombine #'(2 . 20)  \BBGIFxAIDMusicLHA \BBGIFxAIDMusicLHB
BBGIFxAIDMusicLyrics = \relative c''''{ \BBGIFxAIDMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c4 c4 c4 c4. c8 c2 c4 c4 c4 c4 c4 c4 c2 c4 c4 c4 c4 c4. c8 c2 c4 c4 c4 c4 c4. c8 c2 c4 c4 c4 c4 c4 c4 c2 c4 c4 c4 c4 c4 c4 c2 c4 c4 c4 c4 c4. c8 c2 c4 c4 c4 c4 c4. c8 c2
}

BBGIGxBHDMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 62
    \time 3/4
    \key des \major
    \partial 8
    
}
BBGIGxBHDMusicRHA = \relative c'{ \BBGIGxBHDMusicGlobal \clef "treble"
    f8 |  \nbp f8. ges16 aes4. des,8 | %2
c8. des16 ees4. \lbp ges8 | %3
\nbp ges8. ges16 c4. bes8 | %4
bes8. aes16 aes4. \lbp f8 | %5
\nbp f8. ees16 des4. des8 | %6
ges bes aes4. \lbp aes8 | %7
\nbp bes des f,4. \pcAO des8 | %8
f ees \pcAO des4. \cbp des'8 \postCho | %9
\nbp des8. c16 c4. bes8 | %10
bes8. aes16 aes4. \lbp des8 | %11
\nbp des8. c16 c4. bes8 | %12
aes8. g16 aes4. \lbp ges8 | %13
\nbp f8. ees16 \pcAO des4. \pcAO des8 | %14
ges bes des4. \lbp des8 | %15
\nbp c8. bes16 aes4. \pcAO des,8 f8. ees16 \pcAO des4. \he
}
BBGIGxBHDMusicRHB = \relative c'{ \BBGIGxBHDMusicGlobal \clef "treble"
    des8 | des8. ees16 f4. aes,8 | %2
aes8. aes16 c4. ees8 | %3
ees8. ees16 ges4. ges8 | %4
ges8. f16 f4. des8 | des8. c16 bes4. b8 | %6
bes ges' f4. f8 | ges ges des4. des8 | %8
des c des4. f8 | ges8. ges16 ges4. des8 | %10
des8. des16 des4. des8 | %11
des8. ees16 ees4. ees8 | %12
ees8. ees16 ees4. ees8 | %13
des8. des16 des4. des8 | %14
des ges ges4. bes8 | aes8. ges16 f4. des8 des8. c16 des4.
}
BBGIGxBHDMusicRH =  \partCombine #'(2 . 20)  \BBGIGxBHDMusicRHA \BBGIGxBHDMusicRHB
BBGIGxBHDMusicLHA = \relative c{ \BBGIGxBHDMusicGlobal \clef "bass"
    aes'8 | aes8. aes16 des4. f,8 | %2
ees8. f16 aes4. c8 | %3
c8. c16 \pcAO aes4. c8 | %4
des8. des16 des4. aes8 | %5
aes8. ges16 f4. f8 | ges des' des4. des8 | %7
des bes \pcAO aes4. f8 | %8
aes ges f4. aes8 | bes8. aes16 aes4. ges8 | %10
ges8. f16 f4. f8 | bes8. aes16 aes4. des8 | %12
c8. bes16 c4. c8 | aes8. ges16 f4. f8 | %14
ges des' bes4. des8 | %15
des8. des16 des4. f,8 aes8. ges16 f4.
}
BBGIGxBHDMusicLHB = \relative c{ \BBGIGxBHDMusicGlobal \clef "bass"
    des8 | des8. des16 des4. des8 | %2
aes8. aes16 aes4. aes8 | %3
aes'8. aes16 aes4. aes8 | %4
des,8. des16 des4. des8 | %5
aes8. a16 bes4. aes8 | %6
ges ges des'4. des8 | ges ges aes4. aes,8 | %8
aes aes des4. des8 | %9
des8. des16 des4. des8 | %10
des8. des16 des4. des8 | %11
bes8. ees16 ees4. ees8 | %12
ees8. ees16 aes,4. aes8 | %13
des8. des16 des4. b8 | %14
bes ges ges'4. ges8 | %15
ges8. ges16 aes4. aes,8 aes8. aes16 des4.
}
BBGIGxBHDMusicLH =  \partCombine #'(2 . 20)  \BBGIGxBHDMusicLHA \BBGIGxBHDMusicLHB
BBGIGxBHDMusicLyrics = \relative c''''{ \BBGIGxBHDMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8 c8. c16 c4. c8 c8. c16 c4. c8 c8. c16 c4. c8 c8. c16 c4. c8 c8. c16 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8. c16 c4. c8 c8. c16 c4. c8 c8. c16 c4. c8 c8. c16 c4. c8 c8. c16 c4. c8 c8 c8 c4. c8 c8. c16 c4. c8 c8. c16 c4.
}

BBGIHxBDHMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 90
    \time 4/4
    \key as \major
    \partial 4
    
}
BBGIHxBDHMusicRHA = \relative c'{ \BBGIHxBDHMusicGlobal \clef "treble"
    ees4 |  \nbp aes aes aes aes | %2
aes g g ees | bes' bes bes c | \nbp %4
aes2. \lbp  aes8 [g] \nbp | f4 f f aes | %6
f ees aes c | bes aes g f \pcAO \nbp | %8
ees1 \cbp | aes2 \postCho ees4 c' | %10
c2 bes | bes \pcAO ees,4 des' | des2 c | %13
ees c4 aes | aes2 f | ees4 c' c bes aes2. \he
}
BBGIHxBDHMusicRHB = \relative c'{ \BBGIHxBDHMusicGlobal \clef "treble"
    c4 | c c c c | des des des des | %3
des des des ees | c2. ees4 | %5
des des des f | des c c ees | ees d d d | %8
ees (c des2) | c c4 ees | ees2 ees | %11
ees ees4 ees | f2 ees | aes aes4 ges | %14
f2 des | c4 ees ees des c2.
}
BBGIHxBDHMusicRH =  \partCombine #'(2 . 20)  \BBGIHxBDHMusicRHA \BBGIHxBDHMusicRHB
BBGIHxBDHMusicLHA = \relative c{ \BBGIHxBDHMusicGlobal \clef "bass"
    aes'4 | aes aes aes aes | %2
bes bes bes bes | g g g g | aes2. aes4 | %5
aes aes aes aes | aes aes aes aes | %7
g f bes aes | g (aes bes2) | %9
aes aes4 aes | aes2 g | g g4 g | %12
aes2 aes | c ees4 c | des2 aes | %15
aes4 aes g g aes2.
}
BBGIHxBDHMusicLHB = \relative c{ \BBGIHxBDHMusicGlobal \clef "bass"
    aes4 | aes aes aes aes | %2
ees' ees ees ees | ees ees ees ees | %4
aes,2. c4 | des des des des | %6
aes aes aes aes | bes bes bes bes | ees1 | %9
aes,2 aes4 aes | ees'2 ees | %11
ees ees4 ees | aes,2 aes | aes' aes4 aes | %14
des,2 des | ees4 ees ees ees aes,2.
}
BBGIHxBDHMusicLH =  \partCombine #'(2 . 20)  \BBGIHxBDHMusicLHA \BBGIHxBDHMusicLHB
BBGIHxBDHMusicLyrics = \relative c''''{ \BBGIHxBDHMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c2. c8  s8 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c1 c2 c4 c4 c2 c2 c2 c4 c4 c2 c2 c2 c4 c4 c2 c2 c4 c4 c4 c4 c2.
}

BBGIIxCZIMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 62
    \time 3/4
    \key bes \major
    \partial 4.
    
}
BBGIIxCZIMusicRHA = \relative c'{ \BBGIIxCZIMusicGlobal \clef "treble"
    f8 d f | bes4. c8 bes a | %2
\nbp a4. \lbp f8 g f | c'4. a8 g f | %4
\nbp bes4. \lbp f8 d f | bes4. d8 c bes | %6
\nbp g4. \lbp g8 ges g | c4. bes8 a g | %8
\nbp c4. \lbp ees8 d c | bes4. f8 bes a | %10
\nbp g4. \lbp c8 bes g | f4. bes8 a c | %12
\nbp bes4. \cbp bes8 \postCho bes a | %13
a4. g8 g f |  \nbp f4. \lbp bes8 c d | %15
c4. bes8 a g \pcAO | %16
\nbp f4. \lbp f8 d f | bes4. d8 d c | %18
\nbp bes4. \lbp c8 bes g | f bes bes4 a \nbp bes4. \he
}
BBGIIxCZIMusicRHB = \relative c'{ \BBGIIxCZIMusicGlobal \clef "treble"
    d8 bes d | d4. d8 ees ees | %2
ees4. ees8 ees ees | ees4. ees8 ees ees | %4
d4. d8 bes d | d4. f8 f f | %6
ees4. ees8 ees ees | e4. e8 e e | %8
ees4. g8 f ees | d4. d8 f f | %10
ees4. ees8 ees ees | d4. f8 ees ees | %12
d4. d8 d d | ees4. ees8 ees ees | %14
d4. d8 ees f | f4. e8 e e | f4. d8 bes d | %17
d4. f8 ges ges | g4. g8 g des | %19
d f ees4 ees d4.
}
BBGIIxCZIMusicRH =  \partCombine #'(2 . 20)  \BBGIIxCZIMusicRHA \BBGIIxCZIMusicRHB
BBGIIxCZIMusicLHA = \relative c{ \BBGIIxCZIMusicGlobal \clef "bass"
    bes'8 f bes | f4. bes8 c c | %2
c4. a8 bes a | a4. c8 bes a | %4
bes4. bes8 f bes | f4. bes8 bes bes | %6
bes4. bes8 a bes | bes4. g8 c bes | %8
a4. a8 g a | bes4. bes8 bes bes | %10
bes4. g8 g bes | bes4. d8 c a | %12
bes4. f8 f bes | c4. bes8 bes a | %14
bes4. bes8 bes bes | a4. g8 c bes | %16
a4. bes8 f bes | f4. bes8 a d | %18
d4. ees8 ees bes | bes d c4 c bes4.
}
BBGIIxCZIMusicLHB = \relative c{ \BBGIIxCZIMusicGlobal \clef "bass"
    bes8 bes bes | bes4. bes8 f' f | %2
f4. f8 f f | f4. f8 f f | %4
bes,4. bes8 bes bes | bes4. bes8 d d | %6
ees4. ees8 ees ees | c4. c8 c c | %8
f4. f8 f f | bes,4. bes8 d d | %10
ees4. ees8 ees ees | f4. f8 f f | %12
bes,4. bes8 bes bes | f'4. f8 f f | %14
bes,4. bes8 bes bes | c4. c8 c c | %16
f4. bes,8 bes bes | bes4. bes8 d d | %18
g4. ees8 ees e | f f f4 f bes,4.
}
BBGIIxCZIMusicLH =  \partCombine #'(2 . 20)  \BBGIIxCZIMusicLHA \BBGIIxCZIMusicLHB
BBGIIxCZIMusicLyrics = \relative c''''{ \BBGIIxCZIMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c8 c8 c4 c4 c4.
}

BBHZZxBHZMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 62
    \time 3/4
    \key des \major
    \partial 4.
    
}
BBHZZxBHZMusicRHA = \relative c'{ \BBHZZxBHZMusicGlobal \clef "treble"
    f8 ges g | aes4. des8 c bes | %2
\nbp c4. \lbp ges8 ees f | %3
ges4. c8 bes a | %4
\nbp aes4. \pcAO \lbp des,8 ees e | %5
f4. aes8 bes aes | %6
\nbp ges4. \lbp bes8 des bes | %7
aes4. \pcAO des,8 f ees \pcAO | %8
\nbp des4. \cbp ees8 \postCho ees f | %9
ges4. ees8 f ges | %10
\nbp aes4. \lbp f8 aes des | %11
c4. aes8 bes bes \pcAO | %12
\nbp aes4. \pcAO \lbp aes8 bes c | %13
des4. f,8 ges aes | %14
\nbp bes4. \lbp des8 c bes | %15
aes f f4 ees \nbp des4. \he
}
BBHZZxBHZMusicRHB = \relative c'{ \BBHZZxBHZMusicGlobal \clef "treble"
    des8 ees e | f4. f8 f f | %2
ges4. ees8 c des | ees4. ges8 ges ges | %4
f4. des8 des des | des4. f8 f f | %6
des4. ges8 bes ges | f4. des8 des c | %8
des4. c8 c des | ees4. c8 des ees | %10
f4. des8 f f | ees4. ees8 g g | %12
aes4. aes8 g ges | f4. des8 ees f | %14
ges4. bes8 aes ges | f des c4 c aes4.
}
BBHZZxBHZMusicRH =  \partCombine #'(2 . 20)  \BBHZZxBHZMusicRHA \BBHZZxBHZMusicRHB
BBHZZxBHZMusicLHA = \relative c{ \BBHZZxBHZMusicGlobal \clef "bass"
    aes'8 aes des | des4. aes8 aes aes | %2
aes4. aes8 aes aes | aes4. aes8 aes aes | %4
des4. f,8 ges g | aes4. des8 des b | %6
bes4. des8 des des | des4. f,8 aes ges | %8
f4. aes8 aes aes | aes4. aes8 aes aes | %10
aes4. aes8 des aes | aes4. c8 des des | %12
c4. \pcAO aes8 \pcAO aes \pcAO aes | %13
aes4. aes8 aes des | des4. des8 des des | %15
des \pcAO aes aes4 ges f4.
}
BBHZZxBHZMusicLHB = \relative c{ \BBHZZxBHZMusicGlobal \clef "bass"
    des8 des des | des4. des8 des des | %2
ees4. aes,8 aes aes | aes4. aes8 c c | %4
des4. des8 des des | des4. des8 des des | %6
ges4. ges8 ges ges | aes4. aes,8 aes aes | %8
des4. aes8 aes aes | aes4. aes8 aes aes | %10
des4. des8 des des | ees4. ees8 ees ees | %12
aes4. aes8 aes aes | des,4. des8 des des | %14
ges4. ges8 ges ges | aes aes aes,4 aes des4.
}
BBHZZxBHZMusicLH =  \partCombine #'(2 . 20)  \BBHZZxBHZMusicLHA \BBHZZxBHZMusicLHB
BBHZZxBHZMusicLyrics = \relative c''''{ \BBHZZxBHZMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c8 c8 c4 c4 c4.
}

BBHZAxABGMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 104
    \time 4/4
    \key as \major
    
}
BBHZAxABGMusicRHA = \relative c'{ \BBHZAxABGMusicGlobal \clef "treble"
    c'4. bes8 aes8. g16 aes8. f16 | %1
\nbp ees2 aes | bes4. bes8 aes4 bes | %3
\nbp c2. r4 \postSegnoMark | %4
c4. bes8 aes8. g16 aes8. f16 | %5
\nbp ees2 aes | bes4. aes8 c4 bes | %7
\nbp aes2. r4 \postFine \cbp | %8
ees'2 \postCho c | bes4. (aes8) f2 | %10
ees4 aes c aes \nbp bes2. \postDS \he
}
BBHZAxABGMusicRHB = \relative c'{ \BBHZAxABGMusicGlobal \clef "treble"
    ees4. ees8 f8. e16 f8. des16 | c2 ees | %2
ees4. ees8 ees4 ees | ees2. r4 | %4
ees4. ees8 f8. e16 f8. des16 | c2 ees | %6
ees4. ees8 ees4 des | c2. r4 | aes'2 aes | %9
f des | c4 c ees ees ees2.
}
BBHZAxABGMusicRH =  \partCombine #'(2 . 20)  \BBHZAxABGMusicRHA \BBHZAxABGMusicRHB
BBHZAxABGMusicLHA = \relative c{ \BBHZAxABGMusicGlobal \clef "bass"
    aes'4. aes8 aes8. aes16 aes8. aes16 | %1
aes2 c | des4. des8 c4 g | aes2. r4 | %4
aes4. aes8 aes8. aes16 aes8. aes16 | %5
aes2 c | des4. c8 aes4 g | aes2. r4 | %8
c2 ees | des aes | aes4 aes aes aes g2.
}
BBHZAxABGMusicLHB = \relative c{ \BBHZAxABGMusicGlobal \clef "bass"
    aes4. c8 des8. des16 des8. des16 | %1
aes2 aes | ees'4. ees8 ees4 ees | %3
aes,2. r4 | %4
aes4. c8 des8. des16 des8. des16 | %5
aes2 aes | ees'4. ees8 ees4 ees | %7
aes,2. r4 | aes'2 aes | des, des | %10
aes4 aes aes c ees2.
}
BBHZAxABGMusicLH =  \partCombine #'(2 . 20)  \BBHZAxABGMusicLHA \BBHZAxABGMusicLHB
BBHZAxABGMusicLyrics = \relative c''''{ \BBHZAxABGMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4. c8 c8. c16 c8. c16 c2 c2 c4. c8 c4 c4 c2.  s4 c4. c8 c8. c16 c8. c16 c2 c2 c4. c8 c4 c4 c2.  s4 c2 c2 c4.  s8 c2 c4 c4 c4 c4 c2.
}

BBHZBxCFMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 60
    \time 2/4
    \key as \major
    
}
BBHZBxCFMusicRHA = \relative c'{ \BBHZBxCFMusicGlobal \clef "treble"
    ees4 d8 ees | f4. ees8 | ees c' bes aes | %3
\nbp aes4 g | bes g8 aes | %5
bes4 c \pcAO | ees,8 \pcAO ees g8. f16 | %7
\nbp ees2 | ees4 d8 ees | f4. ees8 | %10
aes c ees des |  \nbp c4 bes | %12
ees des8 c | f,4 bes | %14
aes8 g c8. bes16 \pcAO \nbp aes2 \he
}
BBHZBxCFMusicRHB = \relative c'{ \BBHZBxCFMusicGlobal \clef "treble"
    c4 b8 c | des4. c8 | c ees ees ees | %3
ees4 ees | ees ees8 ees | ees4 ees | %6
ees8 ees d8. d16 | ees4 (des) | c b8 c | %9
des4. c8 | ees ees ees f | ees4 ees | %12
ees ees8 ees | des4 f | ees8 ees g8. g16 aes2
}
BBHZBxCFMusicRH =  \partCombine #'(2 . 20)  \BBHZBxCFMusicRHA \BBHZBxCFMusicRHB
BBHZBxCFMusicLHA = \relative c{ \BBHZBxCFMusicGlobal \clef "bass"
    aes'4 aes8 aes | aes4. aes8 | %2
aes aes aes aes | c4 bes | g bes8 c | %5
g4 aes | g8 g bes8. aes16 | g2 | %8
aes4 aes8 aes | aes4. aes8 | %10
aes aes aes aes | aes4 g | aes g8 aes | %13
aes4 des | c8 bes ees8. des16 c2
}
BBHZBxCFMusicLHB = \relative c{ \BBHZBxCFMusicGlobal \clef "bass"
    aes4 aes8 aes | aes4. aes8 | aes aes c c | %3
ees4 ees | ees ees8 ees | ees4 aes, | %6
bes8 bes bes8. bes16 | ees2 | %8
aes,4 aes8 aes | aes4. aes8 | %10
c aes c des | ees4 ees | c bes8 aes | %13
des4 bes | ees8 ees ees8. ees16 aes,2
}
BBHZBxCFMusicLH =  \partCombine #'(2 . 20)  \BBHZBxCFMusicLHA \BBHZBxCFMusicLHB
BBHZBxCFMusicLyrics = \relative c''''{ \BBHZBxCFMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c8 c8 c4. c8 c8 c8 c8 c8 c4 c4 c4 c8 c8 c4 c4 c8 c8 c8. c16 c2 c4 c8 c8 c4. c8 c8 c8 c8 c8 c4 c4 c4 c8 c8 c4 c4 c8 c8 c8. c16 c2
}

BBHZCxCIMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 60
    \time 3/4
    \key es \major
    \partial 4.
    
}
BBHZCxCIMusicRHA = \relative c'{ \BBHZCxCIMusicGlobal \clef "treble"
    g'8 g aes | g4. f8 \pcAO bes, f' | %2
\nbp ees4. \lbp ees8 d ees | %3
aes4. g8 f8. \pcAO c16 | %4
\nbp f4. \fb g8 g aes | %5
g4. f8 \pcAO bes, f' | %6
\nbp ees4. \lbp g8 f g | bes aes g4. f8 | %8
\nbp ees4. \cbp g8 \postCho g bes | %9
bes4. c8 g bes | %10
\nbp bes4. \lbp bes8 bes aes | %11
aes bes d4. c8 | %12
\nbp bes4. \fb g8 g bes | %13
bes4. c8 g bes | %14
\nbp bes4. \lbp bes8 bes ees, | %15
ees aes g4. f8 \pcAO \nbp ees4. \he
}
BBHZCxCIMusicRHB = \relative c'{ \BBHZCxCIMusicGlobal \clef "treble"
    ees8 ees ees | ees4. d8 bes bes | %2
bes4. bes8 bes bes | ees4. ees8 c8. c16 | %4
bes4. ees8 ees ees | ees4. d8 bes bes | %6
bes4. ees8 ees ees | ees ees ees4. d8 | %8
bes4. ees8 ees g | g4. g8 ees g | %10
aes4. g8 g f | f g aes4. aes8 | %12
g4. ees8 ees g | g4. g8 ees ees | %14
d4. d8 des des | c ees ees4. d8 ees4.
}
BBHZCxCIMusicRH =  \partCombine #'(2 . 20)  \BBHZCxCIMusicRHA \BBHZCxCIMusicRHB
BBHZCxCIMusicLHA = \relative c{ \BBHZCxCIMusicGlobal \clef "bass"
    bes'8 bes c | bes4. aes8 aes aes | %2
g4. g8 f g | c4. bes8 a8. a16 | %4
bes4. bes8 bes c | bes4. aes8 aes aes | %6
g4. bes8 aes bes | c ces \pcAO bes4. aes8 | %8
g4. bes8 bes ees | ees4. ees8 bes ees | %10
d4. bes8 bes bes | bes bes bes4. d8 | %12
ees4. bes8 bes ees | ees4. ees8 bes g | %14
aes4. aes8 g bes | aes c bes4. aes8 g4.
}
BBHZCxCIMusicLHB = \relative c{ \BBHZCxCIMusicGlobal \clef "bass"
    ees8 ees ees | ees4. bes8 bes bes | %2
ees4. ees8 ees ees | %3
ees4. ees8 ees8. ees16 | d4. ees8 ees ees | %5
ees4. bes8 bes bes | ees4. ees8 ees ees | %7
aes aes bes4. bes,8 | ees4. ees8 ees ees | %9
ees4. ees8 ees ees | f4. ees8 bes bes | %11
bes bes bes4. bes8 | ees4. ees8 ees ees | %13
ees4. ees8 ees ees | f4. f8 ees g, | %15
aes aes bes4. bes8 ees4.
}
BBHZCxCIMusicLH =  \partCombine #'(2 . 20)  \BBHZCxCIMusicLHA \BBHZCxCIMusicLHB
BBHZCxCIMusicLyrics = \relative c''''{ \BBHZCxCIMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8. c16 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c8 c8 c4. c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c8 c8 c4. c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c8 c8 c4. c8 c4.
}

BBHZDxCZFMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 62
    \time 3/4
    \key d \major
    \partial 4.
    
}
BBHZDxCZFMusicRHA = \relative c'{ \BBHZDxCZFMusicGlobal \clef "treble"
    fis8 f g | %1
fis4. \pcAO d8 \pcAO cis e \pcAO | %2
\nbp d2 \lbp fis4 |  \nbp a4. e8 dis e | %4
g8. fis16 fis4. \lbp fis8 | %5
\nbp b4. b8 a \pcAO d, | %6
g8. g16 fis4. \lbp fis8 | %7
\nbp a g fis d e8. d16 | %8
\nbp d4. \cbp a'8 \postCho a d | %9
cis4. a8 a e' |  \nbp d4. \lbp d8 d d | %11
d4. b8 a fis |  \nbp e4. \lbp e8 fis g | %13
a4. d8 cis d |  \nbp b4. \lbp d8 cis b | %15
\set Score.tempoHideNote = ##t \tempo 4 = 31  \fpre a \fpost \set Score.tempoHideNote = ##t \tempo 4 = 62   d,  fis4 e \pcAO \nbp d4. \he
}
BBHZDxCZFMusicRHB = \relative c'{ \BBHZDxCZFMusicGlobal \clef "treble"
    d8 d d | d4. d8 cis cis | d2 d4 | %3
cis4. cis8 c cis | d8. d16 d4. d8 | %5
d4. d8 d d | cis8. cis16 d4. d8 | %7
d d d a cis8. a16 | a4. fis'8 fis fis | %9
g g g4 g | fis8 g fis4 g8 a | %11
g g g g fis d | cis4. cis8 d e | %13
fis d fis fis g a | g d g b a f | %15
fis d d4 cis d4.
}
BBHZDxCZFMusicRH =  \partCombine #'(2 . 20)  \BBHZDxCZFMusicRHA \BBHZDxCZFMusicRHB
BBHZDxCZFMusicLHA = \relative c{ \BBHZDxCZFMusicGlobal \clef "bass"
    a'8 gis b | a4. a8 a a | a2 a4 | %3
a4. a8 a a | b8. a16 a4. a8 \pcAO | %5
g4. \pcAO g8 a a | a8. a16 a4. c8 | %7
b ais a fis g8. fis16 | fis4. d'8 d a | %9
a a a4 a | a8 b a4 a8 c | b b b d d a | %12
a4. a8 a a | d \pcAO d, d' a a d | %14
d \pcAO g, d' d d d | d a \pcAO a4 g fis4.
}
BBHZDxCZFMusicLHB = \relative c{ \BBHZDxCZFMusicGlobal \clef "bass"
    d8 d d | d4. fis8 e g | fis2 d4 | %3
a4. a8 a a | d8. d16 d4. d8 | %5
g4. g8 fis fis | e8. a,16 d4. d8 | %7
g, g a a a8. d16 | d4. d8 d d | %9
e cis a4 a | d8 d d4 e8 fis | %11
g g g g d d | a4. g'8 fis e | %13
d d d d e fis | g g g g g gis | %15
\fpre a \fpostbelow fis a4 a, d4.
}
BBHZDxCZFMusicLH =  \partCombine #'(2 . 20)  \BBHZDxCZFMusicLHA \BBHZDxCZFMusicLHB
BBHZDxCZFMusicLyrics = \relative c''''{ \BBHZDxCZFMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8 c8 c8 c4. c8 c8 c8 c2 c4 c4. c8 c8 c8 c8. c16 c4. c8 c4. c8 c8 c8 c8. c16 c4. c8 c8 c8 c8 c8 c8. c16 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c8 c8 c4 c4 c4.
}

BBHZExCCEMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 120
    \time 3/4
    \key as \major
    
}
BBHZExCCEMusicRHA = \relative c'{ \BBHZExCCEMusicGlobal \clef "treble"
    aes'4 bes c | ees2 c4 | aes2 des4 | %3
\nbp c2. | f,4 g aes | c2 bes4 | %6
\nbp bes2. | bes4 ees des | c2 aes4 | %9
c2 bes4 |  \nbp aes2 \lbp bes4 | %11
\nbp c2 c4 | des2 g,4 \nbp aes2. \he
}
BBHZExCCEMusicRHB = \relative c'{ \BBHZExCCEMusicGlobal \clef "treble"
    c4 ees ees | ees2 ees4 | des (c) f | %3
ees2. | ees4 ees ees | d2 d4 | ees2. | %7
g4 aes ees | ees2 c4 | e2 e4 | f2 f4 | %11
ees2 fis4 | g2 ees4 ees2.
}
BBHZExCCEMusicRH =  \partCombine #'(2 . 20)  \BBHZExCCEMusicRHA \BBHZExCCEMusicRHB
BBHZExCCEMusicLHA = \relative c{ \BBHZExCCEMusicGlobal \clef "bass"
    ees'4 des c | aes2 aes4 | aes2 aes4 | %3
aes2. | c4 c c | aes2 f4 | g2. | %7
des'4 c bes \pcAO | aes2 aes4 | g2 c4 | %10
aes2 aes4 | aes2 a4 | bes2 des4 c2.
}
BBHZExCCEMusicLHB = \relative c{ \BBHZExCCEMusicGlobal \clef "bass"
    aes'4 aes aes | c,2 ees4 | f (ees) des | %3
aes2. | aes'4 g f | bes,2 bes4 | ees2. | %7
ees4 f g | aes2 f4 | c2 c4 | f2 des4 | %11
ees2 ees4 | ees2 ees4 aes,2.
}
BBHZExCCEMusicLH =  \partCombine #'(2 . 20)  \BBHZExCCEMusicLHA \BBHZExCCEMusicLHB
BBHZExCCEMusicLyrics = \relative c''''{ \BBHZExCCEMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c4 c4 c2 c4 c2 c4 c2. c4 c4 c4 c2 c4 c2. c4 c4 c4 c2 c4 c2 c4 c2 c4 c2 c4 c2 c4 c2.
}

BBHZFxHEMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 66
    \time 3/4
    \key e \major
    \partial 4
    
}
BBHZFxHEMusicRHA = \relative c'{ \BBHZFxHEMusicGlobal \clef "treble"
    gis'8. a16 |  \nbp b4. gis8 e'8. cis16 | %2
\nbp b4 gis \lbp cis8. b16 | %3
\nbp fis4. gis8 b8. a16 | %4
\nbp gis2 \fb gis8. a16 | %5
\nbp b4. gis8 e'8. cis16 | %6
\nbp b4 gis \lbp e'8. e16 | %7
\nbp dis4. cis8 b8. ais16 | %8
\nbp b2 \cfb b8. \postCho b16 | %9
\nbp b4. a8 gis8. fis16 | %10
\nbp gis2 \lbp e'8. dis16 | %11
\nbp cis4. e8 dis8. cis16 | %12
\nbp b2 \lbp b8. b16 | %13
\nbp e4. gis,8 a8. b16 | %14
\nbp dis4 cis \lbp a8. fis16 | %15
\nbp e4 gis \set Score.tempoHideNote = ##t \tempo 4 = 33  \fpre gis8. \fpost \set Score.tempoHideNote = ##t \tempo 4 = 66   fis16 \nbp e2 \he
}
BBHZFxHEMusicRHB = \relative c'{ \BBHZFxHEMusicGlobal \clef "treble"
    e8. fis16 | gis4. e8 gis8. a16 | %2
gis4 e e8. e16 | dis4. e8 dis8. fis16 | %4
e2 e8. fis16 | gis4. e8 a8. a16 | %6
gis4 e gis8. gis16 | fis4. fis8 fis8. e16 | %8
dis2 dis8. dis16 | dis4. fis8 e8. dis16 | %10
e2 gis8. b16 | a4. cis8 b8. a16 | %12
gis2 gis8. gis16 | gis4. e8 dis8. e16 | %14
e4 e e8. cis16 | b4 e dis8. b16 b2
}
BBHZFxHEMusicRH =  \partCombine #'(2 . 20)  \BBHZFxHEMusicRHA \BBHZFxHEMusicRHB
BBHZFxHEMusicLHA = \relative c{ \BBHZFxHEMusicGlobal \clef "bass"
    b'8. b16 | e4. b8 b8. e16 | %2
e4 b a8. gis16 | b4. b8 b8. b16 | %4
b2 b8. b16 | e4. b8 cis8. e16 | %6
e4 b cis8. cis16 | b4. e8 dis8. cis16 | %8
b2 fis8. fis16 | fis4. b8 b8. b16 | %10
b2 b8. e16 | e4. e8 e8. e16 | e2 e8. e16 | %13
b4. b8 b8. b16 \pcAO | %14
a4 \pcAO a cis8. a16 | gis4 b b8. a16 gis2
}
BBHZFxHEMusicLHB = \relative c{ \BBHZFxHEMusicGlobal \clef "bass"
    e8. e16 | e4. e8 e8. e16 | e4 e e8. e16 | %3
b4. b8 b8. dis16 | e2 e8. e16 | %5
e4. e8 e8. e16 | e4 e cis8. cis16 | %7
fis4. fis8 fis8. fis16 | b,2 b8. b16 | %9
b4. b8 b8. b16 | e2 e8. e16 | %11
a4. a8 a8. a16 | e2 e8. e16 | %13
e4. e8 fis8. gis16 | a4 a a,8. a16 | %15
b4 b \fpre b8. \fpostbelow b16 e2
}
BBHZFxHEMusicLH =  \partCombine #'(2 . 20)  \BBHZFxHEMusicLHA \BBHZFxHEMusicLHB
BBHZFxHEMusicLyrics = \relative c''''{ \BBHZFxHEMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8. c16 c4. c8 c8. c16 c4 c4 c8. c16 c4. c8 c8. c16 c2 c8. c16 c4. c8 c8. c16 c4 c4 c8. c16 c4. c8 c8. c16 c2 c8. c16 c4. c8 c8. c16 c2 c8. c16 c4. c8 c8. c16 c2 c8. c16 c4. c8 c8. c16 c4 c4 c8. c16 c4 c4 c8. c16 c2
}

BBHZGxCDAMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 8 = 100
    \time 4/4
    \key bes \major
    \partial 4
    \accidentalStyle modern
}
BBHZGxCDAMusicRHA = \relative c'{ \BBHZGxCDAMusicGlobal \clef "treble"
    d8. ees16 |  \nbp f8 f g a bes bes a g | %2
f f \pcAO d ees f4 \lbp f8 \pcAO f | %3
\nbp g g a bes \pcAO f bes d d | %4
c g bes a \pcAO f4 \lbp f8 f | %5
\nbp f bes a c bes d c bes | %6
a g fis g bes4 \lbp a8 g | %7
\nbp f f bes bes a a g a | %8
\nbp bes2. \cbp bes8. \postCho a16 | %9
\nbp g8 g g bes ees ees \lbp a, g | %10
\nbp g16 f8. e8 f d'4 \lbp d8 d | %11
\nbp d c c bes g g a bes | %12
\nbp c2. \pcAO \lbp d,8 ees | %13
\nbp f f bes8. c16 d8 d \lbp c bes | %14
\nbp a g fis g \set Score.tempoHideNote = ##t \tempo 8 = 50  \fpre bes4 \fpost \set Score.tempoHideNote = ##t \tempo 8 = 100   \lbp a8 g | %15
\nbp f f bes bes a a g a \nbp bes2. \he
}
BBHZGxCDAMusicRHB = \relative c'{ \BBHZGxCDAMusicGlobal \clef "treble"
    bes8. a16 | bes8 d ees ees d f f ees | %2
d d d c d4 d8 f | ees ees ees d f f f f | %4
e e e e f4 ees8 ees | d f f f f f f f | %6
f ees ees ees ees4 ees8 ees | %7
d d f f f f e f | f2. d8. f16 | %9
ees8 ees ees g g g f ees | %10
ees16 d8. cis8 d f4 f8 f | %11
e e e e e e f e | ees2. d8 c | %13
d d f8. f16 f8 f f f | %14
f ees ees ees ees4 ees8 ees | %15
d d f f f f e ees d2.
}
BBHZGxCDAMusicRH =  \partCombine #'(2 . 20)  \BBHZGxCDAMusicRHA \BBHZGxCDAMusicRHB
BBHZGxCDAMusicLHA = \relative c{ \BBHZGxCDAMusicGlobal \clef "bass"
    f8. f16 | f8 bes bes f f bes bes bes | %2
bes bes bes a bes4 bes8 bes | %3
bes c c bes bes bes bes bes | %4
g c c bes a4 a8 a | %5
bes bes c a bes bes a bes | %6
bes bes a bes g4 a8 bes16 [c] \pcAO | %7
bes8 bes d d c c c ees! | d2. bes8. bes16 | %9
bes8 bes bes ees bes bes bes bes | %10
bes16 bes8. g8 f bes4 bes8 aes | %11
g g g c \pcAO c c c c | a2. bes8 a | %13
bes bes bes8. a16 bes8 bes a bes | %14
bes bes a bes g4 a8 bes16 [c] \pcAO | %15
bes8 bes d d c c c c bes2.
}
BBHZGxCDAMusicLHB = \relative c{ \BBHZGxCDAMusicGlobal \clef "bass"
    bes8. c16 | d8 bes ees c bes d ees ees | %2
f f f f bes,4 bes8 d | %3
ees ees f f d d bes bes | c c c c f4 f8 f | %5
bes, d ees ees d bes c d | %6
ees ees ees ees ees4 f8 g16 [a] | %7
bes8 f d bes f' f c f | bes,2. bes8. d16 | %9
ees8 ees ees ees ees ees ees ees | %10
bes16 bes8. bes8 bes bes4 bes8 b | %11
c c c c c' bes a g | f2. f8 f | %13
bes, bes d8. c16 bes8 bes c d | %14
ees ees ees ees \fpre ees4 \fpostbelow f8 g16 [a] | %15
bes8 f d bes f' f g f bes,2.
}
BBHZGxCDAMusicLH =  \partCombine #'(2 . 20)  \BBHZGxCDAMusicLHA \BBHZGxCDAMusicLHB
BBHZGxCDAMusicLyrics = \relative c''''{ \BBHZGxCDAMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8. c16 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c4 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c4 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c4 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c2. c8. c16 c8 c8 c8 c8 c8 c8 c8 c8 c16 c8. c8 c8 c4 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c2. c8 c8 c8 c8 c8. c16 c8 c8 c8 c8 c8 c8 c8 c8 c4 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c2.
}

BBHZHxHCMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 86
    \time 4/4
    \key g \major
    
}
BBHZHxHCMusicRHA = \relative c'{ \BBHZHxHCMusicGlobal \clef "treble"
    d4. g8 fis g a e |  \nbp g2 fis | %2
fis4. e8 d c' e, g |  \nbp b1 | %4
b4. b8 b fis b a |  \nbp a2 g | %6
a4. b8 a e g fis |  \nbp d1 | %8
b'4. a8 a g g  e |  \nbp g2 fis | %10
fis4. c'8 e, g g d |  \nbp b'1 \postSegnoMark | %12
d4. b8 a g fis g |  \nbp d'2 c | %14
b4. b8 a b \set Score.tempoHideNote = ##t \tempo 4 = 43  \fpre c \fpost \set Score.tempoHideNote = ##t \tempo 4 = 86   fis, |  \nbp g1 \postFine \cbp | %16
a4. \postCho b8 c4 fis, | g4. a8 b d4. | %18
cis b8 a b cis e \nbp d1 \postDS \he
}
BBHZHxHCMusicRHB = \relative c'{ \BBHZHxHCMusicGlobal \clef "treble"
    b4. b8 c b c c | c2 c | c4. c8 c d c b | %3
d1 | d4. d8 d d dis dis | e2 e | %6
cis4. cis8 cis cis cis cis | c1 | %8
b4. c8 c b b b | c2 c | c4. c8 c b d b | %11
d1 | d4. d8 d d d d | e2 e | %14
d4. d8 d d d d | d1 | d4. d8 d4 d | %17
d4. d8 d d4. | g g8 g g g g fis1
}
BBHZHxHCMusicRH =  \partCombine #'(2 . 20)  \BBHZHxHCMusicRHA \BBHZHxHCMusicRHB
BBHZHxHCMusicLHA = \relative c{ \BBHZHxHCMusicGlobal \clef "bass"
    g'4. g8 a g fis a | a2 a | %2
a4. g8 fis fis g g | g1 | %4
fis4. fis8 fis fis fis b | b2 b | %6
a4. e8 e e e a | fis1 | d4. g8 g g g b | %9
a2 a | a4. fis8 g g g g \pcAO | g1 | %12
g4. g8 fis g g g | g2 g | %14
g4. g8 fis g fis a | b1 | %16
fis4. g8 fis4 a | g4. fis8 g b4. | %18
e d8 cis d e cis d1
}
BBHZHxHCMusicLHB = \relative c{ \BBHZHxHCMusicGlobal \clef "bass"
    g4. g8 d' d d d | a2 d | d4. d8 d d g, g | %3
g1 | b4. b8 b b b b | e2 e | %6
a,4. a8 a a a a | d1 | g,4. g8 g g g g | %9
a2 d | d4. d8 g, g b d | g1 | %12
b,4. g8 a b b b | c2 c | d4. d8 d d \fpre d \fpostbelow d | %15
g,1 | d'4. d8 d4 c | b4. a8 g g'4. | %18
a a8 a a a a d,2 (c)
}
BBHZHxHCMusicLH =  \partCombine #'(2 . 20)  \BBHZHxHCMusicLHA \BBHZHxHCMusicLHB
BBHZHxHCMusicLyrics = \relative c''''{ \BBHZHxHCMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4. c8 c8 c8 c8 c8 c2 c2 c4. c8 c8 c8 c8 c8 c1 c4. c8 c8 c8 c8 c8 c2 c2 c4. c8 c8 c8 c8 c8 c1 c4. c8 c8 c8 c8 c8 c2 c2 c4. c8 c8 c8 c8 c8 c1 c4. c8 c8 c8 c8 c8 c2 c2 c4. c8 c8 c8 c8 c8 c1 c4. c8 c4 c4 c4. c8 c8 c4. c4. c8 c8 c8 c8 c8 c1
}

BBHZIxACMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 120
    \time 3/4
    \key g \major
    
}
BBHZIxACMusicRHA = \relative c'{ \BBHZIxACMusicGlobal \clef "treble"
    b'4 b b | a2 b4 | c2 fis,4 | %3
\nbp g2. \pcAO | d4 \pcAO d \pcAO d | %5
b'2 a4 |  \nbp a2. | c4 c b | a2 g4 | %9
fis2 e4 \pcAO |  \nbp d2. \pcAO | %11
d4 e g | b2 a4 \nbp g2. \he
}
BBHZIxACMusicRHB = \relative c'{ \BBHZIxACMusicGlobal \clef "treble"
    d4 d d | e2 d4 | c (e) d | d2. | %4
d4 d d | d2 cis4 | d2. | e4 e d | %8
c2 cis4 | d2 cis4 | d2. | d4 d c | %12
b2 c4 b2.
}
BBHZIxACMusicRH =  \partCombine #'(2 . 20)  \BBHZIxACMusicRHA \BBHZIxACMusicRHB
BBHZIxACMusicLHA = \relative c{ \BBHZIxACMusicGlobal \clef "bass"
    b'4 b g | c2 g4 | a2 a4 | b2. | %4
c4 b a \pcAO | g2 g4 | fis2. | %7
e4 fis gis | a2 a4 | a2 g4 | fis2. | %11
g4 g g | g2 fis4 g2.
}
BBHZIxACMusicLHB = \relative c{ \BBHZIxACMusicGlobal \clef "bass"
    g'4 g b, | c2 b4 | a2 d4 | g2. | %4
a4 g fis | g2 e4 | d2. | a4 a a | %8
a2 a4 | d2 d4 | d2 (c4) | b c e | %12
d2 d4 g,2.
}
BBHZIxACMusicLH =  \partCombine #'(2 . 20)  \BBHZIxACMusicLHA \BBHZIxACMusicLHB
BBHZIxACMusicLyrics = \relative c''''{ \BBHZIxACMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c4 c4 c2 c4 c2 c4 c2. c4 c4 c4 c2 c4 c2. c4 c4 c4 c2 c4 c2 c4 c2. c4 c4 c4 c2 c4 c2.
}

BBHAZxAAGMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 64
    \time 3/4
    \key g \major
    \partial 4
    
}
BBHAZxAAGMusicRHA = \relative c'{ \BBHAZxAAGMusicGlobal \clef "treble"
    \pcAO d8 g |  \nbp b4. g8 a g | %2
\nbp g e4. \lbp g8 e |  \nbp d4. d8 e g | %4
\nbp g2 \pcAO \lbp d8 g | %5
\nbp b4. g8 a g |  \nbp g e4. \lbp g8 e | %7
\nbp d4. d8 e g | %8
\nbp g2 \postSegnoMark \fb g8 b | %9
\nbp d4. d8 e d |  \nbp d b4. \lbp g8 b | %11
\nbp d4. d8 e d | %12
\nbp d4 (b) \fb \pcAO d,8 g | %13
\nbp b4. g8 a g |  \nbp g e4. \lbp g8 e | %15
\nbp d4. d8 e g \nbp g2 \postDSEtFine \he
}
BBHAZxAAGMusicRHB = \relative c'{ \BBHAZxAAGMusicGlobal \clef "treble"
    d8 d | g4. d8 d d | e c4. e8 c | %3
b4. b8 c c | b2 d8 d | g4. d8 d d | %6
e c4. e8 c | b4. b8 c c | b2 d8 g | %9
g4. g8 g g | g g4. d8 g | g4. g8 g g | %12
g2 d8 d | g4. d8 d d | e c4. e8 c | %15
b4. b8 c c b2
}
BBHAZxAAGMusicRH =  \partCombine #'(2 . 20)  \BBHAZxAAGMusicRHA \BBHAZxAAGMusicRHB
BBHAZxAAGMusicLHA = \relative c{ \BBHAZxAAGMusicGlobal \clef "bass"
    b'8 b | d4. b8 c b | c g4. g8 g | %3
g4. g8 g e | d2 b'8 b | d4. b8 c b | %6
c g4. g8 g | g4. g8 g e | d2 b'8 d | %9
b4. b8 c b | b d4. b8 d | b4. b8 c b | %12
b4 (d) b8 b | d4. b8 c b | c g4. g8 g | %15
g4. g8 g e d2
}
BBHAZxAAGMusicLHB = \relative c{ \BBHAZxAAGMusicGlobal \clef "bass"
    g'8 g | g4. g8 g g | c, c4. c8 c | %3
g4. g8 c c | g2 g'8 g | g4. g8 g g | %6
c, c4. c8 c | g4. g8 c c | g2 g'8 g | %9
g4. g8 g g | g g4. g8 g | g4. g8 g g | %12
g2 g8 g | g4. g8 g g | c, c4. c8 c | %15
g4. g8 c c g2
}
BBHAZxAAGMusicLH =  \partCombine #'(2 . 20)  \BBHAZxAAGMusicLHA \BBHAZxAAGMusicLHB
BBHAZxAAGMusicLyrics = \relative c''''{ \BBHAZxAAGMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8 c8 c4. c8 c8 c8 c8 c4. c8 c8 c4. c8 c8 c8 c2 c8 c8 c4. c8 c8 c8 c8 c4. c8 c8 c4. c8 c8 c8 c2 c8 c8 c4. c8 c8 c8 c8 c4. c8 c8 c4. c8 c8 c8 c4  s4 c8 c8 c4. c8 c8 c8 c8 c4. c8 c8 c4. c8 c8 c8 c2
}

BBHAAxAGGMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 120
    \time 4/4
    \key g \major
    
}
BBHAAxAGGMusicRHA = \relative c'{ \BBHAAxAGGMusicGlobal \clef "treble"
    b'2 c4 b | a4. \pcAO e8 a2 | %2
g4 (fis) e fis |  \nbp g2 (d) | %4
b' c4 b | a4. \pcAO e8 a2 | %6
g4 (fis) b4. a8 \pcAO |  \nbp g1 | %8
a2 a4 b | c4. b8 a2 | b b4 c | %11
d4. c8 b2 | d c4 b | a4. b8 c2 | %14
g4 (fis) b4. a8 \pcAO \nbp g1 \he
}
BBHAAxAGGMusicRHB = \relative c'{ \BBHAAxAGGMusicGlobal \clef "treble"
    d2 e4 d | e4. e8 e2 | d c4 c | b1 | %4
g'2 g4 g | e4. e8 e2 | d fis4. fis8 | %7
g1 | fis2 fis4 g | a4. g8 fis2 | %10
g g4 fis | g4. fis8 g2 | g fis4 g | %13
e4. e8 e2 | d fis4. fis8 g1
}
BBHAAxAGGMusicRH =  \partCombine #'(2 . 20)  \BBHAAxAGGMusicRHA \BBHAAxAGGMusicRHB
BBHAAxAGGMusicLHA = \relative c{ \BBHAAxAGGMusicGlobal \clef "bass"
    \pcAO g'2 \pcAO g4 \pcAO g | c4. c8 c2 | %2
b4 (a) g a | g1 | d'2 e4 d | %5
c4. c8 c2 | b4 (a) d4. c8 | b1 | %8
d2 d4 d | d4. d8 d2 | d d4 d | %11
d4. d8 d2 | d d4 d | a4. gis8 a2 | %14
b4 (a) d4. c8 b1
}
BBHAAxAGGMusicLHB = \relative c{ \BBHAAxAGGMusicGlobal \clef "bass"
    g'2 g4 g | c,4. c8 c2 | d d4 d | g,1 | %4
g'2 g4 g | c,4. c8 c2 | d d4. d8 | g1 | %8
d2 d4 d | d4. d8 d2 | g g4 a | %11
b4. a8 g2 | b a4 g | c,4. b8 a2 | %14
d d4. d8 g,1
}
BBHAAxAGGMusicLH =  \partCombine #'(2 . 20)  \BBHAAxAGGMusicLHA \BBHAAxAGGMusicLHB
BBHAAxAGGMusicLyrics = \relative c''''{ \BBHAAxAGGMusicGlobal \clef "treble"
    \hideNotes \voiceFour c2 c4 c4 c4. c8 c2 c4  s4 c4 c4 c2  s2 c2 c4 c4 c4. c8 c2 c4  s4 c4. c8 c1 c2 c4 c4 c4. c8 c2 c2 c4 c4 c4. c8 c2 c2 c4 c4 c4. c8 c2 c4  s4 c4. c8 c1
}

BBHABxDGMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 84
    \time 6/8
    \key des \major
    \partial 4.
    
}
BBHABxDGMusicRHA = \relative c'{ \BBHABxDGMusicGlobal \clef "treble"
    f4 ges8 |  \nbp aes4 aes8 aes4 bes8 | %2
\nbp aes f4 \lbp f aes8 | %3
\nbp des4 ees8 des4 bes8 | %4
\nbp aes4. \lbp f4 ges8 | %5
\nbp aes4 des8 des4 bes8 | %6
aes f4 f \pcAO des8 | %7
\nbp ees2. ~ \nbp | ees4. \lbp f4 ges8 | %9
\nbp aes4 aes8 aes4 bes8 | %10
\nbp aes f4 \lbp f aes8 | %11
\nbp des4 ees8 des4 bes8 \nbp | %12

aes4. \pcAO \lbp \pcAO des,4 ees8 | %13
\nbp f aes4 aes bes8 | %14
aes f4 ees f8 \pcAp |  \nbp des2.~ \nbp | %16
des4. \pcAu \cbp aes'4 \postCho f8 | %17
\nbp aes2.~ \nbp | aes4. \lbp des4 ees8 \nbp | %19
\nbp des2.~ \nbp | des4. \lbp bes | %21
\nbp aes8 aes4 aes bes8 | %22
aes f4 f \pcAO des8 |  \nbp ees2.~ \nbp| %24
ees4. \lbp f4 ges8 | %25
\nbp aes4 aes8 aes4 bes8 | %26
\nbp aes4.~aes4 \lbp aes8 | %27
\nbp bes4 des8 des4 bes8 | %28
\nbp aes4. \pcAO \lbp des,4 ees8 | %29
\nbp f4 aes8 des4 bes8 | %30
\nbp aes f4 \lbp ees f8 \pcAp des2.~des4.  \he
}
BBHABxDGMusicRHB = \relative c'{ \BBHABxDGMusicGlobal \clef "treble"
    des4 ees8 | f4 f8 f4 ges8 | %2
f des4 des f8 | f4 f8 ges4 ges8 | %4
f4. des4 ees8 | f4 f8 ges4 ges8 | %6
f des4 des des8 | c2.~| c4. des4 ees8 | %9
f4 f8 f4 ges8 | f des4 des f8 | %11
f4 f8 ges4 ges8 | f4. des4 des8 | %13
des f4 f ges8 | f des4 c c8 | des2.~| %16
des4. f4 des8 | f2.~| f4. f4 f8 | %19
ges2.~| ges4. ges | f8 f4 f ges8 | %22
f des4 des des8 | c2.~| c4. des4 ees8 | %25
f4 f8 f4 ges8 | f4.~f4 f8 | %27
ges4 ges8 ges4 ges8 | f4. des4 des8 | %29
des4 f8 f4 ges8 | f des4 c c8 des2.~des4.
}
BBHABxDGMusicRH =  \partCombine #'(2 . 20)  \BBHABxDGMusicRHA \BBHABxDGMusicRHB
BBHABxDGMusicLHA = \relative c{ \BBHABxDGMusicGlobal \clef "bass"
    aes'4 aes8 | des4 des8 des4 des8 | %2
des aes4 aes des8 | aes4 aes8 bes4 des8 | %4
des4. aes4 aes8 | des4 aes8 bes4 des8 | %6
des aes4 g g8 | aes2.~| %8
aes4. aes4 aes8 | des4 des8 des4 des8 | %10
des aes4 aes des8 | aes4 aes8 bes4 des8 | %12
des4. f,4 ges8 | aes des4 des des8 | %14
des aes4 ges aes8 | f2.~| f4. r4 r8 | %17
r4 r8 des'4 des8 | des4. r4 r2 bes4 bes8 | %20
bes~bes4 des4. | %21
des8 des~des des4 des8 | des aes4 g g8 | %24
aes2.~aes4. aes4 aes8 | %25
des4 des8 des4 des8 | des4.~des4 des8 | %27
des4 bes8 bes4 des8 | des4. f,4 ges8 | %29
aes4 des8 aes4 des8 | des aes4 ges aes8 f2.~f4.
}
BBHABxDGMusicLHB = \relative c{ \BBHABxDGMusicGlobal \clef "bass"
    des4 des8 | des4 des8 des4 des8 | %2
des des4 des des8 | des4 des8 ges4 ges8 | %4
des4. des4 des8 | des4 des8 ges4 ges8 | %6
des des4 bes bes8 | aes2.~| %8
aes4. des4 des8 | des4 des8 des4 des8 | %10
des des4 des des8 | des4 des8 ges4 ges8 | %12
des4. des4 des8 | des des4 des des8 | %14
des des4 aes aes8 | des2.~| %16
des4. r4 r8 | r4 r8 des4 des8 | %19
des4. r4 r2 ges4 ges8 | ges~ges4 ges4. | %21
des8 des~des des4 des8 | %22
des des4 bes bes8 | %24
aes2.~aes4. des4 des8 | %25
des4 des8 des4 des8 | des4.~des4 des8 | %27
ges4 ges8 ges4 ges8 | des4. des4 des8 | %29
des4 des8 des4 des8 | des des4 aes aes8 des2.~des4.
}
BBHABxDGMusicLH =  \partCombine #'(2 . 20)  \BBHABxDGMusicLHA \BBHABxDGMusicLHB
BBHABxDGMusicLyrics = \relative c''''{ \BBHABxDGMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c8 c4 c8 c4 c8 c8 c4 c4 c8 c4 c8 c4 c8 c4. c4 c8 c4 c8 c4 c8 c8 c4 c4 c8 c2.  s4. c4 c8 c4 c8 c4 c8 c8 c4 c4 c8 c4 c8 c4 c8 c4. c4 c8 c8 c4 c4 c8 c8 c4 c4 c8 c2.  s4. c4 c8 c2.  s4. c4 c8 c2.  s4. c4. c8 c4 c4 c8 c8 c4 c4 c8 c2.  s4. c4 c8 c4 c8 c4 c8 c4.  s4 c8 c4 c8 c4 c8 c4. c4 c8 c4 c8 c4 c8 c8 c4 c4 c8 c8 c2.
}

BBHACxHFMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 70
    \time 6/8
    \key f \major
    
}
BBHACxHFMusicRHA = \relative c'{ \BBHACxHFMusicGlobal \clef "treble"
    a'8 gis a bes a g |  \nbp f4. \pcAO c | %2
f8 f f f e f |  \nbp g4.~g4 r8 | %4
a gis a bes a g |  \nbp f4. bes | %6
a8 a a g \pcAO f g \pcAp | %7
\nbp f4.~f4 \pcAu r8 \cbp | %8
a \postCho bes c d d d | %9
\nbp c4. (a4) \lbp a8 | %10
\nbp bes4. (g4) c8 | %11
\nbp c4. (a4) r8 | a bes c d d d | %13
\nbp c4. (a4) \lbp bes8 | %14
\nbp a a a g4 \pcAO f8 \nbp f4.~f4 r8 \he
}
BBHACxHFMusicRHB = \relative c'{ \BBHACxHFMusicGlobal \clef "treble"
    f8 f f f f e | c4. c | d8 d c b b b | %3
c4.~c4 r8 | f f f f f e | d4. f | %6
f8 f f e f e | f4.~f4 r8 | f f f f f f | %9
f4. (f4) f8 | g4. (e4) e8 | %11
f4. (f4) r8 | f f f f f f | %13
f4. (f4) f8 | f f f e4 f8 c4.~c4 r8
}
BBHACxHFMusicRH =  \partCombine #'(2 . 20)  \BBHACxHFMusicRHA \BBHACxHFMusicRHB
BBHACxHFMusicLHA = \relative c{ \BBHACxHFMusicGlobal \clef "bass"
    c'8 b c d c bes | a4. a | a8 a a g g g | %3
e4.~e4 r8 | c' b c d c bes | a4. d | %6
c8 c c bes a bes | a4.~a4 r8 | %8
c g a bes bes bes | a a a c4 c8 | %10
c c c c4 bes8 | a a a c4 r8 | %12
c g a bes bes bes | a4 a8 c4 d8 | %14
c c c bes4 a8 a4.~a4 r8
}
BBHACxHFMusicLHB = \relative c{ \BBHACxHFMusicGlobal \clef "bass"
    f8 f f f f c | f4. f | d8 d d g, g g | %3
c4.~c4 r8 | f f f f f c | d4. bes | %6
c8 c c c c c | f,4.~f4 r8 | %8
f' f f bes, bes d | f f f f4 f8 | %10
c c c c4 c8 | f f f f4 r8 | %12
f f f bes, bes d | f4 f8 f4 bes,8 | %14
c c c c4 \pcCh <f f,>8 <f f,>4.~<f f,>4 r8
}
BBHACxHFMusicLH =  \partCombine #'(2 . 20)  \BBHACxHFMusicLHA \BBHACxHFMusicLHB
BBHACxHFMusicLyrics = \relative c''''{ \BBHACxHFMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8 c8 c8 c8 c8 c8 c4. c4. c8 c8 c8 c8 c8 c8 c4. s4 s8 c8 c8 c8 c8 c8 c8 c4. c4. c8 c8 c8 c8 c8 c8 c4. s4 s8 c8 c8 c8 c8 c8 c8 c4.  s4 c8 c4.  s4 c8 c4. s4 s8 c8 c8 c8 c8 c8 c8 c4.  s4 c8 c8 c8 c8 c4 c8 c4.
}

BBHADxACBMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 86
    \time 4/4
    \key f \major
    \partial 4
    
}
BBHADxACBMusicRHA = \relative c'{ \BBHADxACBMusicGlobal \clef "treble"
    f8. g16 |  \nbp a4 c a f | %2
\nbp e d2 \lbp d'8. d16 | %3
\nbp c4 a g f | %4
\nbp g2. \lbp f8. g16 \pcAO | %5
\nbp a4 c a f | %6
\nbp e d2 \lbp d'8. d16 | %7
\nbp c4 bes d, e | %8
\nbp f2. \lbp f8. e16 | %9
\nbp d4 bes' a4. g8 | %10
g4 f r \pcAO \lbp f8. g16 | %11
\nbp a4 d c a | %12
\nbp g2. \lbp f8. g16 \pcAO | %13
\nbp a4 c a f | %14
\nbp e d2 \lbp d'8. d16 | %15
\nbp c4 bes d, e \nbp f2. \he
}
BBHADxACBMusicRHB = \relative c'{ \BBHADxACBMusicGlobal \clef "treble"
    c8. c16 | c4 f f c | c bes2 f'8. f16 | %3
f4 f c c | e2. c8. c16 | a'4 f f c | %6
c bes2 f'8. f16 | e4 d bes bes | %8
a2. c8. c16 | bes4 d c4. bes8 | %10
bes4 a r f'8. e16 | f4 f f f | %12
e2. c8. c16 | a'4 f f c | %14
c bes2 f'8. f16 | e4 d bes bes a2.
}
BBHADxACBMusicRH =  \partCombine #'(2 . 20)  \BBHADxACBMusicRHA \BBHADxACBMusicRHB
BBHADxACBMusicLHA = \relative c{ \BBHADxACBMusicGlobal \clef "bass"
    a'8. g16 | c4 a c f, | f f2 bes8. bes16 | %3
a4 c bes a | c2. a8. g16 | c4 a c f, | %6
f f2 bes8. bes16 | g4 g g g | %8
f2. f8. f16 | f4 f f4. e8 | %10
e4 f r a8. bes16 | c4 bes a c | %12
c2. a8. g16 | c4 a c f, | %14
f f2 bes8. bes16 | g4 g g g f2.
}
BBHADxACBMusicLHB = \relative c{ \BBHADxACBMusicGlobal \clef "bass"
    f8. e16 | f4 f f a, | %2
bes bes2 bes8. bes16 | f'4 f f f | %4
c2. f8. e16 | f4 f f a, | %6
bes bes2 bes8. bes16 | c4 c c c | %8
f,2. a8. a16 | bes4 bes c4. c8 | %10
c4 f, r f'8. f16 | f4 f f f | %12
c2. f8. e16 | f4 f f a, | %14
bes bes2 bes8. bes16 | c4 c c c f,2.
}
BBHADxACBMusicLH =  \partCombine #'(2 . 20)  \BBHADxACBMusicLHA \BBHADxACBMusicLHB
BBHADxACBMusicLyrics = \relative c''''{ \BBHADxACBMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8. c16 c4 c4 c4 c4 c4 c2 c8. c16 c4 c4 c4 c4 c2. c8. c16 c4 c4 c4 c4 c4 c2 c8. c16 c4 c4 c4 c4 c2. c8. c16 c4 c4 c4. c8 c4 c4  s4 c8. c16 c4 c4 c4 c4 c2. c8. c16 c4 c4 c4 c4 c4 c2 c8. c16 c4 c4 c4 c4 c2.
}

BBHAExIMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 84
    \time 4/4
    \key f \major
    
}
BBHAExIMusicRHA = \relative c'{ \BBHAExIMusicGlobal \clef "treble"
    c'4. c8 d c a f | f2 d4 r \pcAO | %2
c4. f8 a f c' a |  \nbp g2. r4 | %4
c4. c8 d c a f | f2 d4 r | %6
c4. f8 a g f e |  \nbp f2. r4 \cbp | %8
g4. \postCho fis8 g a bes g | a2 c4 r | %10
d4. d8 c a bes a |  \nbp g2. r4 | %12
c4. c8 d c a f | f2 d4 r | %14
c4. f8 a g f e \nbp f2. \he
}
BBHAExIMusicRHB = \relative c'{ \BBHAExIMusicGlobal \clef "treble"
    f4. f8 f f f c | d2 bes4 r | %2
c4. c8 c c f f | e2. r4 | f4. f8 f f f c | %5
d2 bes4 r | a4. c8 f c c c | c2. r4 | %8
e4. dis8 e f g e | f2 f4 r | %10
f4. f8 f f g f | e2. r4 | f4. f8 f f f c | %13
d2 bes4 r | a4. c8 f c c c c2.
}
BBHAExIMusicRH =  \partCombine #'(2 . 20)  \BBHAExIMusicRHA \BBHAExIMusicRHB
BBHAExIMusicLHA = \relative c{ \BBHAExIMusicGlobal \clef "bass"
    a'4. a8 bes a c a | bes2 f4 r | %2
a4. a8 a a a c \pcAO | c2. r4 | %4
a4. a8 bes a c a | bes2 f4 r | %6
f4. a8 c bes a g | a2. r4 | %8
c4. c8 c c c c | c2 a4 r \pcAO | %10
bes4. \pcAO bes8 c c c c | c2. r4 | %12
a4. a8 bes a c a | bes2 f4 r | %14
f4. a8 c bes a g a2.
}
BBHAExIMusicLHB = \relative c{ \BBHAExIMusicGlobal \clef "bass"
    f4. f8 f f f f | bes,2 bes4 r | %2
f'4. f8 f f f a | c2. r4 | %4
f,4. f8 f f f f | bes,2 bes4 r | %6
c4. c8 c c c c | f2. r4 | c4. c8 c c c c | %9
f2 f4 r | bes4. bes8 a f e f | c2. r4 | %12
f4. f8 f f f f | bes,2 bes4 r | %14
c4. c8 c c c c f2.
}
BBHAExIMusicLH =  \partCombine #'(2 . 20)  \BBHAExIMusicLHA \BBHAExIMusicLHB
BBHAExIMusicLyrics = \relative c''''{ \BBHAExIMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4. c8 c8 c8 c8 c8 c2 c4  s4 c4. c8 c8 c8 c8 c8 c2.  s4 c4. c8 c8 c8 c8 c8 c2 c4  s4 c4. c8 c8 c8 c8 c8 c2.  s4 c4. c8 c8 c8 c8 c8 c2 c4  s4 c4. c8 c8 c8 c8 c8 c2.  s4 c4. c8 c8 c8 c8 c8 c2 c4  s4 c4. c8 c8 c8 c8 c8 c2.
}

BBHAFxBEMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 82
    \time 4/4
    \key es \major
    
}
BBHAFxBEMusicRHA = \relative c'{ \BBHAFxBEMusicGlobal \clef "treble"
    g'4 g \pcAO ees8 f g aes |  \nbp bes2 g | %2
g4 g \pcAO ees8 g bes g |  \nbp f2. r4 | %4
g g \pcAO ees8 f g aes | %5
\nbp bes2 c4 \lbp c8 c | %6
\nbp bes4 \pcAO ees,8 [f] g4 f \pcAO | %7
\nbp ees2. \cbp bes'8 \postCho bes | %8
\nbp ees4 ees d c | %9
\nbp bes2 g4 \pcAO \lbp ees8 f | %10
\nbp g4 g bes bes8 [g] | %11
\nbp f2. \lbp bes8 bes | %12
\nbp ees4 ees d c | %13
\nbp bes2 g4 \pcAO \lbp ees8 f | %14
\nbp g4 bes8 aes g4 f \pcAO \nbp ees2. r4 \he
}
BBHAFxBEMusicRHB = \relative c'{ \BBHAFxBEMusicGlobal \clef "treble"
    ees4 ees ees8 d ees ees | ees2 ees | %2
ees4 ees ees8 ees ees ees | d2. r4 | %4
ees ees ees8 d ees ees | %5
ees2 ees4 ees8 ees | ees4 ees ees d | %7
ees2. f8 f | ees4 ees bes' aes | %9
g2 ees4 ees8 d | ees4 ees f g8 [ees] | %11
d2. d8 f | ees4 g ees ees | %13
ees2 ees4 ees8 ees | ees4 ees8 ees ees4 d ees2. r4
}
BBHAFxBEMusicRH =  \partCombine #'(2 . 20)  \BBHAFxBEMusicRHA \BBHAFxBEMusicRHB
BBHAFxBEMusicLHA = \relative c{ \BBHAFxBEMusicGlobal \clef "bass"
    bes'4 bes bes8 bes bes bes | bes2 bes | %2
bes4 bes g8 bes bes bes | bes2. r4 | %4
bes bes bes8 bes bes aes | %5
g2 aes4 aes8 aes | %6
bes4 g8 [aes] bes4 aes | g2. aes8 aes | %8
g4 g aes8 [bes] c [d] | %9
ees2 bes4 bes8 bes | bes4 bes bes bes | %11
bes2. aes8 aes | g4 bes aes aes | %13
bes2 c4 g8 aes | bes4 bes8 c bes4 aes g2. r4
}
BBHAFxBEMusicLHB = \relative c{ \BBHAFxBEMusicGlobal \clef "bass"
    ees4 ees g8 f ees f | g2 ees | %2
ees4 ees ees8 ees g ees | bes2. r4 | %4
ees ees g8 f ees c | bes2 aes4 aes8 aes | %6
g4 c bes bes | ees2. d8 d | %8
ees4 ees ees ees | ees2 ees4 g8 f | %10
ees4 ees d ees | bes2. bes8 d | %12
ees4 ees aes, aes | g2 c4 c8 ces | %14
bes4 g8 aes bes4 bes ees2. r4
}
BBHAFxBEMusicLH =  \partCombine #'(2 . 20)  \BBHAFxBEMusicLHA \BBHAFxBEMusicLHB
BBHAFxBEMusicLyrics = \relative c''''{ \BBHAFxBEMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c4 c8 c8 c8 c8 c2 c2 c4 c4 c8 c8 c8 c8 c2.  s4 c4 c4 c8 c8 c8 c8 c2 c4 c8 c8 c4 c8  s8 c4 c4 c2. c8 c8 c4 c4 c4 c4 c2 c4 c8 c8 c4 c4 c4 c8  s8 c2. c8 c8 c4 c4 c4 c4 c2 c4 c8 c8 c4 c8 c8 c4 c4 c2.
}

BBHAGxCCDMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 86
    \time 4/4
    \key d \major
    
}
BBHAGxCCDMusicRHA = \relative c'{ \BBHAGxCCDMusicGlobal \clef "treble"
    a'4. fis8 b4 d | cis b a fis \pcAO | %2
d \pcAO d e fis | a b a2 | %4
a4. fis8 b4 d | cis b a a | a d d fis, a e \pcAO d2 \he
}
BBHAGxCCDMusicRHB = \relative c'{ \BBHAGxCCDMusicGlobal \clef "treble"
    d4. d8 d4 d | d d d d | d d cis d | %3
cis d cis2 | d4. d8 d4 fis | f f cis cis | %6
d d d d d cis d2
}
BBHAGxCCDMusicRH =  \partCombine #'(2 . 20)  \BBHAGxCCDMusicRHA \BBHAGxCCDMusicRHB
BBHAGxCCDMusicLHA = \relative c{ \BBHAGxCCDMusicGlobal \clef "bass"
    fis4. a8 g4 b | a g fis a | b a a a | %3
a gis a2 | fis4. a8 b4 a | gis gis a g | %6
fis g fis a e8 [fis] g4 fis2
}
BBHAGxCCDMusicLHB = \relative c{ \BBHAGxCCDMusicGlobal \clef "bass"
    d4. d8 d4 d | d d d d | g fis e d | %3
e e a,2 | d4. d8 b4 b | cis cis fis e | %6
d b a a a a d2
}
BBHAGxCCDMusicLH =  \partCombine #'(2 . 20)  \BBHAGxCCDMusicLHA \BBHAGxCCDMusicLHB
BBHAGxCCDMusicLyrics = \relative c''''{ \BBHAGxCCDMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4. c8 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c2 c4. c8 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c2
}

BBHAHxHAMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 66
    \time 3/4
    \key g \major
    \partial 4
    \accidentalStyle Score.modern
}
BBHAHxHAMusicRHA = \relative c'{ \BBHAHxHAMusicGlobal \clef "treble"
    \pcAO d8 \pcAO d | %1
\nbp g4. fis8 a \pcAO g | %2
\nbp b4 b \lbp b8 c | %3
\nbp a4. \pcAO d,8 a' b | %4
\nbp g4. r8 \fb \pcAO d \pcAO d | %5
\nbp g4. fis8 a g | %6
\nbp b4 b \lbp b8 b | %7
\nbp a4. a8 b cis | %8
\nbp d4. r8 \cbp d \postCho d | %9
\nbp e4. d8 c b | c4 c8 r \lbp c c | %11
\nbp d4. c8 b a | b4 b8 r \lbp d4~| %13
\nbp d8 c b a g fis | %14
e4 d8 r \pcAO \lbp d g | g4. fis8 a g | %16
\nbp b2 r4 \fb | d c2 | c4 b2 | %19
b8 a gis a \set Score.tempoHideNote = ##t \tempo 4 = 33  \fpre c \fpost \set Score.tempoHideNote = ##t \tempo 4 = 66   b \nbp g2 \he
}
BBHAHxHAMusicRHB = \relative c'{ \BBHAHxHAMusicGlobal \clef "treble"
    d8 d | d4. d8 fis g | g4 g g8 g | %3
fis4. d8 fis fis | d4. r8 d d | %5
d4. d8 d d | g4 g f8 f | fis4. fis8 g g | %8
fis4. r8 g g | fis4. g8 fis g | %10
fis4 fis8 r fis fis | g4. fis8 g fis | %12
g4 g8 r b4~| b8 a g fis d d | %14
c4 b8 r d d | d4. d8 c b | d2 r4 | f e2 | %18
e4 d2 | fis8 fis eis fis fis fis d2
}
BBHAHxHAMusicRH =  \partCombine #'(2 . 20)  \BBHAHxHAMusicRHA \BBHAHxHAMusicRHB
BBHAHxHAMusicLHA = \relative c{ \BBHAHxHAMusicGlobal \clef "bass"
    d'8 d | b4. a8 c b | d4 d d8 e | %3
c4. c8 c d | b4. r8 d d | b4. a8 c b | %6
d4 d d8 d | d4. d8 d e | d4. r8 b b | %9
c4. b8 a d | a4 a8 r d d | b4. a8 b d | %12
d4 d8 r d4~| d8 d d d d g, | %14
g4 g8 r b b | b4. a8 fis g | g2 r4 | %17
g g2 | g4 g2 | d'8 c b c e d b2
}
BBHAHxHAMusicLHB = \relative c{ \BBHAHxHAMusicGlobal \clef "bass"
    d8 d | g,4. d'8 d g | g4 g g8 g | %3
d4. d8 d d | g,4. r8 d' d | g,4. d'8 d g | %6
g4 g gis8 gis | a4. a8 a, a | d4. r8 d d | %9
d4. d8 d d | d4 d8 r d d | d4. d8 d d | %12
g4 g8 r g,4~| g8 g g a b b | %14
c4 g8 r g' g | d4. d8 d d | g,2 r4 | %17
b c2 | c4 d2 | d8 d d d \fpre d \fpostbelow d \pcCh <g g,>2
}
BBHAHxHAMusicLH =  \partCombine #'(2 . 20)  \BBHAHxHAMusicLHA \BBHAHxHAMusicLHB
BBHAHxHAMusicLyrics = \relative c''''{ \BBHAHxHAMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8 c8 c4. c8 c8 c8 c4 c4 c8 c8 c4. c8 c8 c8 c4.  s8 c8 c8 c4. c8 c8 c8 c4 c4 c8 c8 c4. c8 c8 c8 c4.  s8 c8 c8 c4. c8 c8 c8 c4 c8  s8 c8 c8 c4. c8 c8 c8 c4 c8  s8 c4  s8 c8 c8 c8 c8 c8 c4 c8  s8 c8 c8 c4  s8 c8 c8 c8 c2  s4 c4 c4  s4 c4 c2 c8 c8 c8 c8 c8 c8 c2
}

BBHAIxACMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 120
    \time 3/4
    \key g \major
    
}
BBHAIxACMusicRHA = \relative c'{ \BBHAIxACMusicGlobal \clef "treble"
    b'4 b b | a2 b4 | c2 fis,4 | %3
\nbp g2. \pcAO | d4 \pcAO d \pcAO d | %5
b'2 a4 |  \nbp a2. | c4 c b | a2 g4 | %9
fis2 e4 \pcAO |  \nbp d2. \pcAO | %11
d4 e g | b2 a4 \nbp g2. \he
}
BBHAIxACMusicRHB = \relative c'{ \BBHAIxACMusicGlobal \clef "treble"
    d4 d d | e2 d4 | c (e) d | d2. | %4
d4 d d | d2 cis4 | d2. | e4 e d | %8
c2 cis4 | d2 cis4 | d2. | d4 d c | %12
b2 c4 b2.
}
BBHAIxACMusicRH =  \partCombine #'(2 . 20)  \BBHAIxACMusicRHA \BBHAIxACMusicRHB
BBHAIxACMusicLHA = \relative c{ \BBHAIxACMusicGlobal \clef "bass"
    b'4 b g | c2 g4 | a2 a4 | b2. | %4
c4 b a \pcAO | g2 g4 | fis2. | %7
e4 fis gis | a2 a4 | a2 g4 | fis2. | %11
g4 g g | g2 fis4 g2.
}
BBHAIxACMusicLHB = \relative c{ \BBHAIxACMusicGlobal \clef "bass"
    g'4 g b, | c2 b4 | a2 d4 | g2. | %4
a4 g fis | g2 e4 | d2. | a4 a a | %8
a2 a4 | d2 d4 | d2 (c4) | b c e | %12
d2 d4 g,2.
}
BBHAIxACMusicLH =  \partCombine #'(2 . 20)  \BBHAIxACMusicLHA \BBHAIxACMusicLHB
BBHAIxACMusicLyrics = \relative c''''{ \BBHAIxACMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c4 c4 c2 c4 c2 c4 c2. c4 c4 c4 c2 c4 c2. c4 c4 c4 c2 c4 c2 c4 c2. c4 c4 c4 c2 c4 c2.
}

BBHBZxCZDMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 2 = 72
    \time 3/2
    \key g \major
    \partial 2
    
}
BBHBZxCZDMusicRHA = \relative c'{ \BBHBZxCZDMusicGlobal \clef "treble"
    d2 |  \nbp b'2. a4 g fis | %2
fis (e) d2 \lbp g |  \nbp c2. b4 a g | %4
\nbp g2 (fis) \lbp d | %5
\nbp b'2. g4 a b | %6
c4. (d8) e2 \lbp c4 (a) | %7
\nbp g2. b4 a d, |  \nbp g1 \lbp a2 | %9
\nbp a2. a4 a a | a (b) c2 \lbp b | %11
\nbp b2. b4 b cis |  \nbp d1 \lbp d,2 | %13
\nbp b'2. g4 a b | %14
c4. (d8) e2 \lbp c4 (a) | %15
\nbp g2. b4 a d, \nbp g1 \he
}
BBHBZxCZDMusicRHB = \relative c'{ \BBHBZxCZDMusicGlobal \clef "treble"
    b2 | d2. c4 b d | d (c) b2 b | %3
e2. e4 e e | d1 c2 | b2. d4 d g | %6
g2 g e | d2. d4 d c | b1 d2 | %9
fis2. fis4 fis d | fis (g) fis2 d | %11
d2. d4 d g | fis1 c2 | b2. d4 d g | %14
g2 g e | d2. d4 d c b1
}
BBHBZxCZDMusicRH =  \partCombine #'(2 . 20)  \BBHBZxCZDMusicRHA \BBHBZxCZDMusicRHB
BBHBZxCZDMusicLHA = \relative c{ \BBHBZxCZDMusicGlobal \clef "bass"
    g'2 \pcAO | g2. fis4 g g | g2 b g | %3
a2. d4 c b | b2 (a) a | d2. b4 c d | %6
c4. b8 c2 g4 (a) | b2. g4 fis fis | %8
g1 fis2 | a2. d4 a fis | %10
c' (b) a2 \pcAO g \pcAO | %11
g2. b4 \pcAO g g | a1 a2 | d2. b4 c d | %14
c4. (b8) c2 g4 (a) | b2. g4 fis fis g1
}
BBHBZxCZDMusicLHB = \relative c{ \BBHBZxCZDMusicGlobal \clef "bass"
    g2 | g'2. d4 e b | c (e) g2 e | %3
a,2. b4 c cis | d1 fis2 | g2. g4 fis f | %6
e4. (d8) c2 c | d2. d4 d d | g,1 d'2 | %9
d2. d4 d d | d2 d g | g2. g4 g e | %12
d1 fis2 | g2. g4 fis f | e4. (d8) c2 c | %15
d2. d4 d d g,1
}
BBHBZxCZDMusicLH =  \partCombine #'(2 . 20)  \BBHBZxCZDMusicLHA \BBHBZxCZDMusicLHB
BBHBZxCZDMusicLyrics = \relative c''''{ \BBHBZxCZDMusicGlobal \clef "treble"
    \hideNotes \voiceFour c2 c2. c4 c4 c4 c4  s4 c2 c2 c2. c4 c4 c4 c2  s2 c2 c2. c4 c4 c4 c4.  s8 c2 c4  s4 c2. c4 c4 c4 c1 c2 c2. c4 c4 c4 c4  s4 c2 c2 c2. c4 c4 c4 c1 c2 c2. c4 c4 c4 c4.  s8 c2 c4  s4 c2. c4 c4 c4 c1
}

BBHBAxAGZMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 2 = 64
    \time 4/4
    \key e \major
    
}
BBHBAxAGZMusicRHA = \relative c'{ \BBHBAxAGZMusicGlobal \clef "treble"
    gis'2 gis4 fis \pcAO | e2 b' | %2
cis4 b b a |  \nbp gis1 | gis2 a4 b | %5
cis2 b | a4 \pcAO fis gis ais | %7
\nbp b1 | gis2 gis4 fis \pcAO | e2 b' | %10
b4 a a gis \pcAO |  \nbp fis1 | %12
fis2 gis4 a | gis fis \pcAO e a | %14
gis2 fis \pcAO \nbp e1 \he
}
BBHBAxAGZMusicRHB = \relative c'{ \BBHBAxAGZMusicGlobal \clef "treble"
    e2 dis4 dis | e2 e | e4 dis e fis | e1 | %4
e2 e4 e | e2 e | e4 fis e e | dis1 | %8
e2 dis4 dis | e2 e | e4 e eis eis | fis1 | %12
dis2 e4 dis | e dis e fis | e2 dis e1
}
BBHBAxAGZMusicRH =  \partCombine #'(2 . 20)  \BBHBAxAGZMusicRHA \BBHBAxAGZMusicRHB
BBHBAxAGZMusicLHA = \relative c{ \BBHBAxAGZMusicGlobal \clef "bass"
    b'2 b4 a | gis2 e | e4 b' b b | b1 | %4
b2 a4 gis | a2 gis | cis4 b b e, | fis1 | %8
gis4 (a) b a | gis2 e'4 (dis) | %10
cis cis cis b | a1 | b2 b4 b | %13
b a gis cis | b2 b4 (a) gis1
}
BBHBAxAGZMusicLHB = \relative c{ \BBHBAxAGZMusicGlobal \clef "bass"
    e2 b4 b | cis2 gis | a4 b cis dis | e1 | %4
e4 (dis) cis b | a2 e' | %6
fis4 dis e cis | b1 | e2 b4 b | %9
cis2 gis | a4 a8 [b] cis4 cis | fis1 | %12
a2 gis4 fis | e b cis a | b2 b e1
}
BBHBAxAGZMusicLH =  \partCombine #'(2 . 20)  \BBHBAxAGZMusicLHA \BBHBAxAGZMusicLHB
BBHBAxAGZMusicLyrics = \relative c''''{ \BBHBAxAGZMusicGlobal \clef "treble"
    \hideNotes \voiceFour c2 c4 c4 c2 c2 c4 c4 c4 c4 c1 c2 c4 c4 c2 c2 c4 c4 c4 c4 c1 c2 c4 c4 c2 c2 c4 c4 c4 c4 c1 c2 c4 c4 c4 c4 c4 c4 c2 c2 c1
}

BBHBBxBGMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 98
    \time 4/4
    \key es \major
    \partial 4
    
}
BBHBBxBGMusicRHA = \relative c'{ \BBHBBxBGMusicGlobal \clef "treble"
    g'4 |  \nbp g g aes g | %2
\nbp g2 f4 \pcAO \lbp ees | %3
\nbp ees c' bes aes | %4
\nbp g2. \lbp aes4 | %5
\nbp bes ees ees d | %6
\nbp d2 c4 \lbp bes | %7
\nbp aes bes g \pcAO ees | %8
\nbp f2. \lbp f4 |  \nbp g aes bes c | %10
\nbp c2 bes4 \lbp ees | %11
\nbp ees4. d8 c4 \pcAO g | %12
\nbp aes2. \pcAO \lbp f4 | %13
\nbp g g aes g |  \nbp g2 f4 \lbp ees | %15
\nbp ees f ees d \nbp ees2. \he
}
BBHBBxBGMusicRHB = \relative c'{ \BBHBBxBGMusicGlobal \clef "treble"
    ees4 | ees ees ees ees | ees2 d4 ees | %3
c ees ees d | ees2. d4 | ees ees ees f | %6
f2 ees4 g | ees f ees ees | d2. d4 | %9
ees d ees ees | ees2 ees4 g | %11
g4. g8 g4 g | f2. f4 | ees ees ees ees | %14
c2 c4 c | c c c bes bes2.
}
BBHBBxBGMusicRH =  \partCombine #'(2 . 20)  \BBHBBxBGMusicRHA \BBHBBxBGMusicRHB
BBHBBxBGMusicLHA = \relative c{ \BBHBBxBGMusicGlobal \clef "bass"
    bes'4 | bes bes c bes | bes2 bes4 bes | %3
f f g bes | bes2. bes4 | bes bes b b | %6
b2 c4 d | ees d bes a | bes2. bes4 | %9
bes bes bes \pcAO aes \pcAO | %10
aes2 bes4 c | c4. b8 c4 c | c2. bes4 | %13
bes bes c bes | bes2 aes4 aes | %15
aes aes f aes g2.
}
BBHBBxBGMusicLHB = \relative c{ \BBHBBxBGMusicGlobal \clef "bass"
    ees4 | ees ees ees ees | bes2 aes4 g | %3
aes aes bes bes | ees2. f4 | g g g g, | %6
aes2 aes4 bes | c d ees c | bes2. bes4 | %9
ees f g aes | aes2 g4 c, | %11
g'4. f8 ees4 e | f2. d4 | %13
ees ees ees ees | aes,2 aes4 aes | %15
f f bes bes ees2.
}
BBHBBxBGMusicLH =  \partCombine #'(2 . 20)  \BBHBBxBGMusicLHA \BBHBBxBGMusicLHB
BBHBBxBGMusicLyrics = \relative c''''{ \BBHBBxBGMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c4 c4 c4 c4 c2 c4 c4 c4 c4 c4 c4 c2. c4 c4 c4 c4 c4 c2 c4 c4 c4 c4 c4 c4 c2. c4 c4 c4 c4 c4 c2 c4 c4 c4. c8 c4 c4 c2. c4 c4 c4 c4 c4 c2 c4 c4 c4 c4 c4 c4 c2.
}

BBHBCxEIMoreSylCMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 98
    \time 6/8
    \key es \major
    
}
BBHBCxEIMoreSylCMusicRHA = \relative c'{ \BBHBCxEIMoreSylCMusicGlobal \clef "treble"
    g'4. ees4 f8 | g4.~g4 g8 | %2
aes4 aes8 aes4 aes8 |  \nbp g4.~g4 r8 | %4
bes4. c4 bes8 | g4. ees | %6
ees4 ees8 f4 \pcAO c8 | %7
\nbp f4.~f4 r8 | g4. ees4 f8 | %9
g4.~g4 g8 | aes4 aes8 bes4 aes8 | %11
\nbp g4.~g4 r8 | bes4. aes4 g8 | %13
c4 ees,8 \pcAO ees4 f8 | g4. f \pcAp | %15
\nbp ees~ees4 \pcAu r8 \cbp | %16
g4. \postCho g8 [f] g | %17
bes4.~bes4 r8 | bes4. bes8 [c] bes | %19
\nbp ees4.~ees4 r8 | %20
ees4. ees8 [d] c | bes4. g | %22
aes4 aes8 aes4 aes8 |  \nbp aes4. (g) | %24
bes4 bes8 bes [c] bes | g2. | %26
g4 g8 g [aes] g ees4. (\set Score.tempoHideNote = ##t \tempo 4 = 49  \fpre ees) \fpost \set Score.tempoHideNote = ##t \tempo 4 = 98   \he
}
BBHBCxEIMoreSylCMusicRHB = \relative c'{ \BBHBCxEIMoreSylCMusicGlobal \clef "treble"
    ees4. bes4 bes8 | ees4.~ees4 ees8 | %2
ees4 ees8 ees4 ees8 | ees4.~ees4 r8 | %4
ees4. ees4 ees8 | ees4. bes | %6
c4 c8 c4 c8 | d4.~d4 r8 | %8
ees4. bes4 bes8 | ees4.~ees4 ees8 | %10
ees4 ees8 ees4 ees8 | ees4.~ees4 r8 | %12
ees4. d4 ees8 | ees4 c8 ees4 ees8 | %14
ees4. d | ees~ees4 r8 | %16
ees4. ees4 ees8 | ees4.~ees4 r8 | %18
ees4. d4 d8 | ees4.~ees4 r8 | %20
ees4. ees4 ees8 | ees4. ees | %22
f4 f8 f4 ees8 | ees2. | %24
ees4 ees8 ees4 ees8 | ees2. | %26
ees4 ees8 ees4 ees8 bes4 (c8 bes4.)
}
BBHBCxEIMoreSylCMusicRH =  \partCombine #'(2 . 20)  \BBHBCxEIMoreSylCMusicRHA \BBHBCxEIMoreSylCMusicRHB
BBHBCxEIMoreSylCMusicLHA = \relative c{ \BBHBCxEIMoreSylCMusicGlobal \clef "bass"
    bes'4. g4 aes8 | bes4.~bes4 bes8 | %2
c4 c8 c4 c8 | bes4.~bes4 r8 | %4
g4. aes4 g8 | bes4. g | g4 g8 a4 a8 | %7
bes4.~bes4 r8 | bes4. g4 aes8 | %9
bes4.~bes4 bes8 | c4 c8 d4 c8 | %11
bes4.~bes4 r8 | bes4. bes4 bes8 | %13
aes4 aes8 c4 ces8 | bes4. aes | g~g4 r8 | %16
bes4. bes8 [aes] bes | g4.~g4 r8 | %18
aes4. aes4 aes8 | bes4.~bes4 r8 | %20
c4. c8 [bes] \pcAO aes | g4. bes | %22
bes4 ees8 d4 c8 | c4. (bes) | %24
g4 g8 g [aes] g | bes4 (c8 bes4.) | %26
bes4 bes8 bes [c] bes g4 (c8  g4.)
}
BBHBCxEIMoreSylCMusicLHB = \relative c{ \BBHBCxEIMoreSylCMusicGlobal \clef "bass"
    ees4. ees4 ees8 | ees4.~ees4 ees8 | %2
ees4 ees8 ees4 ees8 | ees4.~ees4 r8 | %4
ees4. ees4 ees8 | ees4. ees | %6
c4 c8 f4 f8 | bes,4.~bes4 r8 | %8
ees4. ees4 ees8 | ees4.~ees4 ees8 | %10
ees4 ees8 ees4 ees8 | ees4.~ees4 r8 | %12
g4. f4 ees8 | aes,4 aes8 aes4 aes8 | %14
bes4. bes | ees~ees4 r8 | %16
ees4. ees4 ees8 | ees4.~ees4 r8 | %18
f4. f4 f8 | g4.~g4 r8 | %20
aes4. aes4 aes8 | ees4. ees | %22
bes4 bes8 bes4 bes8 | ees2. | %24
ees4 ees8 ees4 ees8 | ees2. | %26
ees4 ees8 ees4 ees8 ees4. ( \fpre ees) \fpostbelow
}
BBHBCxEIMoreSylCMusicLH =  \partCombine #'(2 . 20)  \BBHBCxEIMoreSylCMusicLHA \BBHBCxEIMoreSylCMusicLHB
BBHBCxEIMoreSylCMusicLyrics = \relative c''''{ \BBHBCxEIMoreSylCMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4. c4 c8 c4.  s4 c8 c4 c8 c4 c8 c4. s4 s8 c4. c4 c8 c4. c4. c4 c8 c4 c8 c4. s4 s8 c4. c4 c8 c4.  s4 c8 c4 c8 c4 c8 c4. s4 s8 c4. c4 c8 c4 c8 c4 c8 c4. c4. c4. s4 s8 c4. c8  s8 c8 c4. s4 s8 c4. c8  s8 c8 c4. s4 s8 c4. c8  s8 c8 c4. c4. c4 c8 c4 c8 c4. c4. c4 c8 c8  s8 c8 c2. c4 c8 c8  s8 c8 c2.
}

BBHBDxACFMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 86
    \time 4/4
    \key g \major
    
}
BBHBDxACFMusicRHA = \relative c'{ \BBHBDxACFMusicGlobal \clef "treble"
    b'4 a g4. fis8 | e4 g e d | g b d4. b8 | %3
a4 g a2 | b4 a g4. fis8 | e4 g e d | %6
g b e,4. a8 | g4 fis g2 \cbp | %8
b4 \postCho d d b | a g b a | %10
b d d4. b8 | a4 g a2 | b4 a g d | %13
c'4. e,8 e4 d | g b e,4. a8 g4 fis g2 \he
}
BBHBDxACFMusicRHB = \relative c'{ \BBHBDxACFMusicGlobal \clef "treble"
    d4 c b4. d8 | c4 c c b | d g g4. g8 | %3
d4 cis d2 | d4 c b4. d8 | c4 c c b | %6
b d c4. e8 | d4 d d2 | g4 g g g | %9
fis e g fis | g g g4. g8 | d4 cis d2 | %12
d4 c b b | e4. c8 c4 b | b d c4. e8 d4 d d2
}
BBHBDxACFMusicRH =  \partCombine #'(2 . 20)  \BBHBDxACFMusicRHA \BBHBDxACFMusicRHB
BBHBDxACFMusicLHA = \relative c{ \BBHBDxACFMusicGlobal \clef "bass"
    g'4 d d4. g8 | g4 g \pcAO g \pcAO g | %2
b d b4. d8 \pcAO | fis,4 a fis2 | %4
g4 d d4. g8 | g4 g \pcAO g \pcAO g | %6
d g g4. c8 | b4 a b2 | d4 b b d | %9
c b d d | d b b4. d8 \pcAO | %11
fis,4 a fis2 | g4 d d g | g4. g8 g4 g | %14
d g g4. c8 b4 a b2
}
BBHBDxACFMusicLHB = \relative c{ \BBHBDxACFMusicGlobal \clef "bass"
    g4 g g4. b8 | c4 e g g | g g g4. g8 | %3
fis4 e d2 | g,4 g g4. b8 | c4 e g g | %6
g, g c4. c8 | d4 d g,2 | g'4 g g g | %9
d e d d | g g g4. g8 | fis4 e d2 | %12
g,4 g g g | c4. c8 g4 g | g g c4. a8 d4 d g,2
}
BBHBDxACFMusicLH =  \partCombine #'(2 . 20)  \BBHBDxACFMusicLHA \BBHBDxACFMusicLHB
BBHBDxACFMusicLyrics = \relative c''''{ \BBHBDxACFMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c4 c4. c8 c4 c4 c4 c4 c4 c4 c4. c8 c4 c4 c2 c4 c4 c4. c8 c4 c4 c4 c4 c4 c4 c4. c8 c4 c4 c2 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4. c8 c4 c4 c2 c4 c4 c4 c4 c4. c8 c4 c4 c4 c4 c4. c8 c4 c4 c2
}

BBHBExAHEMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 98
    \time 4/4
    \key as \major
    \partial 4
    
}
BBHBExAHEMusicRHA = \relative c'{ \BBHBExAHEMusicGlobal \clef "treble"
    aes'4 |  \nbp g aes f aes | %2
\nbp ees2. \lbp c'4 | %3
\nbp bes aes g aes | %4
\nbp bes2. \lbp ees,4 | %5
\nbp aes bes c c | des c \set Score.tempoHideNote = ##t \tempo 4 = 49  \fpre bes \fpost \set Score.tempoHideNote = ##t \tempo 4 = 98   \lbp c | %7
\nbp bes aes g bes \pcAO | %8
\nbp aes2. \cfb aes4 \postCho | %9
\nbp des4. des8 aes4 bes | %10
\nbp c2. \lbp bes4 | %11
\nbp bes4. bes8 aes4 bes | %12
\nbp c2. \lbp c4 | %13
\nbp c4. ees8 ees4 aes, | %14
bes c \set Score.tempoHideNote = ##t \tempo 4 = 49  \fpre des \fpost \set Score.tempoHideNote = ##t \tempo 4 = 98   \lbp des |  \nbp c aes g bes \nbp aes2. \he
}
BBHBExAHEMusicRHB = \relative c'{ \BBHBExAHEMusicGlobal \clef "treble"
    c4 | des ees des des | c2. ees4 | %3
ees ees ees d | ees2. des4 | %5
c ees ees ees | ees ees ees ees | %7
g ees ees g | aes2. ges4 | f4. f8 f4 fes | %10
ees2. ees4 | ees4. ees8 ees4 g | %12
aes2. aes4 | aes4. aes8 aes4 ees | %14
ees aes aes aes | aes ees ees des c2.
}
BBHBExAHEMusicRH =  \partCombine #'(2 . 20)  \BBHBExAHEMusicRHA \BBHBExAHEMusicRHB
BBHBExAHEMusicLHA = \relative c{ \BBHBExAHEMusicGlobal \clef "bass"
    ees4 | ees aes aes f | aes2. aes4 | %3
g aes bes bes | bes2. bes4 | %5
aes g aes \pcAO aes | %6
bes \pcAO aes g aes | des c bes des | %8
c2. c4 | aes4. aes8 aes4 aes | aes2. g4 | %11
g4. g8 c4 ees | ees2. ees4 | %13
ees4. c8 c4 c | des ees des f | %15
ees c bes g aes2.
}
BBHBExAHEMusicLHB = \relative c{ \BBHBExAHEMusicGlobal \clef "bass"
    aes4 | bes c des des | aes2. aes4 | %3
bes c ees f | g2. g4 | f ees aes, aes' | %6
g aes \fpre ees \fpostbelow ees | ees ees ees ees | %8
aes,2. aes'4 | des,4. des8 des4 des | %10
aes2. ees'4 | ees4. ees8 ees4 ees | %12
aes2. aes4 | aes4. aes8 aes4 aes | %14
g ges \fpre f \fpostbelow des | ees ees ees ees aes,2.
}
BBHBExAHEMusicLH =  \partCombine #'(2 . 20)  \BBHBExAHEMusicLHA \BBHBExAHEMusicLHB
BBHBExAHEMusicLyrics = \relative c''''{ \BBHBExAHEMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c4 c4 c4 c4 c2. c4 c4 c4 c4 c4 c2. c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c2. c4 c4. c8 c4 c4 c2. c4 c4. c8 c4 c4 c2. c4 c4. c8 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c2.
}

BBHBFxIDMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 86
    \time 4/4
    \key as \major
    
}
BBHBFxIDMusicRHA = \relative c'{ \BBHBFxIDMusicGlobal \clef "treble"
    ees4 ees aes aes | bes aes c aes | %2
aes aes8 [f] ees4 aes | c bes bes2 | %4
ees,4 ees aes aes | bes aes c aes | %6
aes aes8 [f] ees4 aes | %7
c bes aes2 \cbp | %8
aes4 \postCho c ees ees | %9
c aes8 [c] bes4  aes | %10
aes c ees ees | c aes bes2 | %12
ees,4 ees aes aes | bes aes c aes | %14
aes aes8 [f] ees4 aes c bes aes2 \he
}
BBHBFxIDMusicRHB = \relative c'{ \BBHBFxIDMusicGlobal \clef "treble"
    c4 c c ees | des c ees ees | %2
f f8 [des] c4 ees | ees d des2 | %4
c4 c c ees | des c ees ees | %6
f f8 [des] c4 ees | ees des c2 | %8
c4 ees aes ees | ees ees des c | %10
c ees ees aes | ees ees ees (des) | %12
c c c ees | des c ees ees | %14
f f8 [des] c4 c ees des c2
}
BBHBFxIDMusicRH =  \partCombine #'(2 . 20)  \BBHBFxIDMusicRHA \BBHBFxIDMusicRHB
BBHBFxIDMusicLHA = \relative c{ \BBHBFxIDMusicGlobal \clef "bass"
    aes'4 aes ees aes | g aes aes aes | %2
des des8 [aes] aes4 aes | aes aes g2 | %4
aes4 aes ees aes | g aes aes aes | %6
des des8 [aes] aes4 aes | %7
aes g aes2 \pcAO | %8
aes4 \pcAO aes c c \pcAO | aes aes g \pcAO aes | %10
\pcAO  aes c bes  c | aes aes g2 | %12
aes4 aes ees aes | g aes aes aes | %14
des des8 [aes] aes4 aes aes g aes2
}
BBHBFxIDMusicLHB = \relative c{ \BBHBFxIDMusicGlobal \clef "bass"
    aes4 aes aes c | ees ees aes, c | %2
des des aes c | ees f ees2 | %4
aes,4 aes aes c | ees ees aes, c | %6
des des aes c | ees ees aes,2 | %8
aes'4 aes aes aes | aes c, ees aes | %10
aes aes g aes | aes, c ees2 | %12
aes,4 aes aes c | ees ees aes, c | %14
des des aes f' ees ees aes,2
}
BBHBFxIDMusicLH =  \partCombine #'(2 . 20)  \BBHBFxIDMusicLHA \BBHBFxIDMusicLHB
BBHBFxIDMusicLyrics = \relative c''''{ \BBHBFxIDMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c2 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c2 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c2 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c2
}

BBHBGxBAMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 2 = 66
    \time 4/2
    \key g \major
    \partial 2.
    
}
BBHBGxBAMusicRHA = \relative c'{ \BBHBGxBAMusicGlobal \clef "treble"
    d4 e g | fis2. e4 d fis a c | %2
\nbp b1 r4 \lbp b cis b | %3
\pcAO a2. d4 a g fis g | %4
\nbp a1 r4 \lbp a b c | b2. c4 d b a g | %6
\nbp c1 r4 \lbp e, fis g | %7
b2. g4 fis2. g4 \nbp g1 r4 \he
}
BBHBGxBAMusicRHB = \relative c'{ \BBHBGxBAMusicGlobal \clef "treble"
    b4 b b | c2. c4 c c c e | d1 r4 g g g | %3
a2. fis4 e e d e | fis1 r4 fis g fis | %5
g2. fis4 f f f f | e1 r4 c e e | %7
d2. d4 d2. d4 d1 r4
}
BBHBGxBAMusicRH =  \partCombine #'(2 . 20)  \BBHBGxBAMusicRHA \BBHBGxBAMusicRHB
BBHBGxBAMusicLHA = \relative c{ \BBHBGxBAMusicGlobal \clef "bass"
    g'4 g g | a2. g4 fis a fis fis | %2
g1 r4 d' e d  | d2. a4 a a a a | %4
a1 r4 c b a \pcAO | g2. a4 b d g, g | %6
g1 r4 g a ais | g2. b4 c2. c4 b1 r4
}
BBHBGxBAMusicLHB = \relative c{ \BBHBGxBAMusicGlobal \clef "bass"
    g4 g g | d'2. d4 d d d d | g,1 r4 g' g g | %3
fis2. d4 cis cis a a | d1 r4 d d d | %5
g2. g4 g g b, b | c1 r4 c c cis | %7
d2. d4 d2. d4 g,1 r4
}
BBHBGxBAMusicLH =  \partCombine #'(2 . 20)  \BBHBGxBAMusicLHA \BBHBGxBAMusicLHB
BBHBGxBAMusicLyrics = \relative c''''{ \BBHBGxBAMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c4 c4 c2. c4 c4 c4 c4 c4 c1  s4 c4 c4 c4 c2. c4 c4 c4 c4 c4 c1  s4 c4 c4 c4 c2. c4 c4 c4 c4 c4 c1  s4 c4 c4 c4 c2. c4 c2. c4 c1
}

BBHBHxGCMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 66
    \time 3/4
    \key f \major
    \partial 4
    
}
BBHBHxGCMusicRHA = \relative c'{ \BBHBHxGCMusicGlobal \clef "treble"
    c'8. d16 |  \nbp c4. bes8 bes c | %2
\nbp bes4 a \lbp c8 c | %3
\nbp c4. g8 g a |  \nbp f2 \lbp a8 bes | %5
\nbp a4. g8 g a |  \nbp g4 f \lbp a8 a | %7
\nbp g4. f8 e d |  \nbp e2 r4 \pcAO | %9
c8 d e f g8. f16 | f4 e r | %11
e8 f g a bes b |  \nbp c2 \lbp c8. d16 | %13
\nbp c4. bes8 bes c | %14
\nbp bes4 a \lbp c8 c | %15
\nbp d4 (f) e8 d | %16
\nbp c2 \lbp a8 bes |  \nbp a4. g8 g a | %18
\nbp g4 f \lbp bes8 g | %19
\nbp f4 (a) g8. f16 \nbp f2 \he
}
BBHBHxGCMusicRHB = \relative c'{ \BBHBHxGCMusicGlobal \clef "treble"
    a'8. bes16 | a4. g8 g a | g4 f f8 f | %3
e4. e8 e e | c2 f8 f | e4. e8 e e | %6
e4 d f8 f | e4. d8 c b | c2 r4 | %9
c8 b bes c c8. c16 | c4 c r | %11
c8 d e f g gis | a2 a8. bes16 | %13
a4. g8 g a | g4 f f8 f | %15
bes4 (d) c8 bes | a2 f8 f | e4. e8 e e | %18
e4 d d8 d | c4 (f) e8. c16 c2
}
BBHBHxGCMusicRH =  \partCombine #'(2 . 20)  \BBHBHxGCMusicRHA \BBHBHxGCMusicRHB
BBHBHxGCMusicLHA = \relative c{ \BBHBHxGCMusicGlobal \clef "bass"
    c'8. c16 | c4. c8 c c | c4 c a8 a | %3
g4. bes8 bes c | a2 c8 d | %5
c4. bes8 bes c | bes4 a d8 c | %7
b4. g8 g g | g2 r4 | e8 f g a bes8. a16 | %10
a4 g r | g8 g c c c d | c2 c8. c16 | %13
c4. c8 c c | c4 c a8 a | %15
bes2 bes8 bes \pcAO | f2 c'8 d | %17
c4. bes8 bes c | bes4 a bes8 bes | %19
a4 (c) bes8. a16 a2
}
BBHBHxGCMusicLHB = \relative c{ \BBHBHxGCMusicGlobal \clef "bass"
    f8. f16 | c4. c8 e c | f4 f f8 f | %3
c4. c8 c c | f2 f8 f | c4. c8 c c | %6
c4 d d8 d | g4. g,8 g g | c2 r4 | %9
c8 c c c c8. c16 | c4 c r | c8 c c c e e | %12
f2 f8. f16 | c4. c8 e c | f4 f f8 f | %15
bes,2 bes8 bes | f'2 f8 f | c4. c8 c c | %18
cis4 d bes8 bes | c2 c8. f16 f2
}
BBHBHxGCMusicLH =  \partCombine #'(2 . 20)  \BBHBHxGCMusicLHA \BBHBHxGCMusicLHB
BBHBHxGCMusicLyrics = \relative c''''{ \BBHBHxGCMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8. c16 c4. c8 c8 c8 c4 c4 c8 c8 c4. c8 c8 c8 c2 c8 c8 c4. c8 c8 c8 c4 c4 c8 c8 c4. c8 c8 c8 c2  s4 c8 c8 c8 c8 c8. c16 c4 c4  s4 c8 c8 c8 c8 c8 c8 c2 c8. c16 c4. c8 c8 c8 c4 c4 c8 c8 c4  s4 c8 c8 c2 c8 c8 c4. c8 c8 c8 c4 c4 c8 c8 c4  s4 c8. c16 c2
}

BBHBIxCZEMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 96
    \time 4/4
    \key f \major
    \partial 4
    
}
BBHBIxCZEMusicRHA = \relative c'{ \BBHBIxCZEMusicGlobal \clef "treble"
    a'4 |  \nbp a a g4. g8 | %2
\nbp f2 f4 \pcAO \lbp f | %3
\nbp bes4. bes8 a4 bes | %4
\nbp g2. \lbp g4 | %5
\nbp c4. c8 bes4 bes | %6
\nbp a2 g4 \lbp g | %7
\nbp f f e8 [f] g [e] | %8
\nbp f2. \lbp f4 |  \nbp f4. f8 f4 g | %10
\nbp a2 a4 \lbp f |  \nbp f4. f8 f4 g | %12
\nbp a2. \lbp a8 [bes] | %13
\nbp c4 c d4. c8 | %14
\nbp c2 bes4 \lbp bes | %15
\nbp a a g4. \pcAO f8 \pcAO \nbp f2 \he
}
BBHBIxCZEMusicRHB = \relative c'{ \BBHBIxCZEMusicGlobal \clef "treble"
    f4 | f f e4. e8 | d2 d4 f | f4. f8 f4 f | %4
e2. e4 | f4. f8 e4 e | f2 d4 d | %7
c c c c | c2. c4 | d4. d8 des4 e | %10
f2 f4 c | d4. d8 des4 e | f2. f8 [e] | %13
f4 f f4. f8 | f2 e4 e | f f e4. f8 f2
}
BBHBIxCZEMusicRH =  \partCombine #'(2 . 20)  \BBHBIxCZEMusicRHA \BBHBIxCZEMusicRHB
BBHBIxCZEMusicLHA = \relative c{ \BBHBIxCZEMusicGlobal \clef "bass"
    c'4 | c c bes4. bes8 | a2 a4 a | %3
d4. d8 c4 d | c2. c4 | c4. c8 c4 c | %6
c2 bes4 bes | a a g8 [a] bes [g] | %8
a2. a4 \pcAO | %9
bes4. \pcAO bes8 \pcAO bes4 des | %10
c2 c4 a \pcAO | %11
bes4. \pcAO bes8 \pcAO bes4 des | %12
c2. c4 | c c \pcAO bes4. c8 | c2 c4 c | %15
c c bes4. a8 a2
}
BBHBIxCZEMusicLHB = \relative c{ \BBHBIxCZEMusicGlobal \clef "bass"
    f4 | f f c4. c8 | d2 d4 d | %3
bes4. bes8 f'4 bes, | c2. bes4 | %5
a4. a8 c4 c | f2 bes,4 bes | c c c c | %8
f2. f4 | bes4. bes8 bes4 bes | f2 f4 f | %11
bes4. bes8 bes4 bes | f2. f8 [g] | %13
a4 a bes4. a8 | a2 g4 g | c, c c4. f8 f2
}
BBHBIxCZEMusicLH =  \partCombine #'(2 . 20)  \BBHBIxCZEMusicLHA \BBHBIxCZEMusicLHB
BBHBIxCZEMusicLyrics = \relative c''''{ \BBHBIxCZEMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c4 c4 c4. c8 c2 c4 c4 c4. c8 c4 c4 c2. c4 c4. c8 c4 c4 c2 c4 c4 c4 c4 c8  s8 c8  s8 c2. c4 c4. c8 c4 c4 c2 c4 c4 c4. c8 c4 c4 c2. c8  s8 c4 c4 c4. c8 c2 c4 c4 c4 c4 c4. c8 c2
}

BBHCZxEGMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 2 = 86
    \time 9/4
    \key f \major
    \partial 4*3
    
}
BBHCZxEGMusicRHA = \relative c'{ \BBHCZxEGMusicGlobal \clef "treble"
    a'4 g a | bes2. a f4 e f | %2
\nbp g1. \lbp g4 ges g | a2. g g4 f e | %4
\nbp f1. \lbp a4 g a | bes2. a c4 b c | %6
\nbp d1. \lbp d4 e d | c2. a g4 f g \nbp f1. \he
}
BBHCZxEGMusicRHB = \relative c'{ \BBHCZxEGMusicGlobal \clef "treble"
    f4 f f | f2. f c4 c c | e1. e4 e e | %3
f2. e c4 c c | c1. f4 f f | %5
f2. f ees4 d ees | f1. f4 f f | %7
f2. f e4 c c c1.
}
BBHCZxEGMusicRH =  \partCombine #'(2 . 20)  \BBHCZxEGMusicRHA \BBHCZxEGMusicRHB
BBHCZxEGMusicLHA = \relative c{ \BBHCZxEGMusicGlobal \clef "bass"
    c'4 bes c | d2. c a4 g a | %2
bes1. bes4 a bes | c2. bes bes4 a g | %4
a1. c4 bes c | d2. c a4 a a | %6
bes1. bes4 c bes | a2. c bes4 a bes a1.
}
BBHCZxEGMusicLHB = \relative c{ \BBHCZxEGMusicGlobal \clef "bass"
    f4 f f | f2. f c4 c c | c1. c4 c c | %3
c2. c c4 c c | f1. f4 f f | f2. f f4 f f | %6
bes,1. bes4 bes bes | c2. c c4 c c f1.
}
BBHCZxEGMusicLH =  \partCombine #'(2 . 20)  \BBHCZxEGMusicLHA \BBHCZxEGMusicLHB
BBHCZxEGMusicLyrics = \relative c''''{ \BBHCZxEGMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c4 c4 c2. c2. c4 c4 c4 c1. c4 c4 c4 c2. c2. c4 c4 c4 c1. c4 c4 c4 c2. c2. c4 c4 c4 c1. c4 c4 c4 c2. c2. c4 c4 c4 c1.
}

BBHCAxCDCMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 74
    \time 6/8
    \key a \major
    
}
BBHCAxCDCMusicRHA = \relative c'{ \BBHCAxCDCMusicGlobal \clef "treble"
    e4 e8 e [cis] e | a4 b8 cis4 a8 | %2
fis4 a8 gis4 fis8 |  \nbp e2. | %4
e4 e8 e [cis] e | a4 b8 cis4 a8 | %6
b4 b8 b [cis] b |  \nbp b2. | %8
d4 d8 d [cis] b | cis4 cis8 cis [b] a | %10
fis4 a8 gis4 fis8 \pcAO |  \nbp e2. | %12
e4 e8 e [cis] e | a4 b8 cis4 a8 | %14
b4 b8 a4 gis8 |  \nbp a2. \cbp | %16
cis4 \postCho cis8 cis [b] a | %17
a4 a8 b [a] fis | e4 a8 a [b] cis | %19
\nbp b2. | cis4 cis8 cis [b] a | %21
a4 a8 b [a] fis | e4 d'8 cis4 b8 \nbp a2. \he
}
BBHCAxCDCMusicRHB = \relative c'{ \BBHCAxCDCMusicGlobal \clef "treble"
    cis4 cis8 cis [a] cis | cis4 d8 e4 cis8 | %2
d4 fis8 e4 d8 | cis2. | %4
cis4 cis8 cis [a] cis | e4 e8 e4 e8 | %6
e4 e8 e4 e8 | e2. | e4 e8 e4 e8 | %9
e4 e8 e [d] cis | d4 fis8 e4 dis8 | %11
e2. | cis4 cis8 cis [a] cis | %13
cis4 d8 e4 e8 | fis4 fis8 e4 d8 | cis2. | %16
e4 e8 e [d] cis | fis4 fis8 fis4 d8 | %18
cis4 cis8 cis [d] e | e2. | %20
e4 e8 e4 e8 | fis4 fis8 fis4 d8 | %22
cis4 e8 e4 d8 cis2.
}
BBHCAxCDCMusicRH =  \partCombine #'(2 . 20)  \BBHCAxCDCMusicRHA \BBHCAxCDCMusicRHB
BBHCAxCDCMusicLHA = \relative c{ \BBHCAxCDCMusicGlobal \clef "bass"
    a'4 a8 a4 a8 | e4 e8 a4 a8 | a4 a8 a4 a8 | %3
a2. | a4 a8 a4 a8 | a4 gis8 \pcAO a4 a8 | %6
gis4 gis8 gis [a] gis | gis2. | %8
gis4 gis8 gis [a] gis | a4 a8 a4 a8 | %10
a4 a8 b4 a8 | gis2. | a4 a8 a4 a8 | %13
a4 a8 a4 a8 | a4 d8 cis4 b8 | a2. | %16
a4 a8 a4 a8 | a4 a8 a4 a8 | a4 e8 e4 a8 | %19
gis2. | a4 a8 a [gis] a | a4 d8 d4 a8 | %22
a4 gis8 a4 gis8 a2.
}
BBHCAxCDCMusicLHB = \relative c{ \BBHCAxCDCMusicGlobal \clef "bass"
    a4 a8 a4 a8 | a4 a8 a4 a8 | d4 d8 d4 d8 | %3
a2. | a4 a8 a4 a8 | cis4 e8 a4 cis,8 | %6
e4 e8 e4 e8 | e2. | e4 e8 e4 e8 | %9
a,4 a8 a4 a8 | d4 d8 b4 b8 | e2. | %12
a,4 a8 a4 a8 | a4 a8 a4 cis8 | %14
d4 b8 e4 e8 | a,2. | a4 a8 a4 a8 | %17
d4 d8 d4 d8 | a4 a8 a4 a8 | e'2. | %20
a,4 a8 a [b] cis | d4 d8 d4 d8 | %22
e4 e8 e4 e8 a,2.
}
BBHCAxCDCMusicLH =  \partCombine #'(2 . 20)  \BBHCAxCDCMusicLHA \BBHCAxCDCMusicLHB
BBHCAxCDCMusicLyrics = \relative c''''{ \BBHCAxCDCMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c8 c8  s8 c8 c4 c8 c4 c8 c4 c8 c4 c8 c2. c4 c8 c8  s8 c8 c4 c8 c4 c8 c4 c8 c8  s8 c8 c2. c4 c8 c8  s8 c8 c4 c8 c8  s8 c8 c4 c8 c4 c8 c2. c4 c8 c8  s8 c8 c4 c8 c4 c8 c4 c8 c4 c8 c2. c4 c8 c8  s8 c8 c4 c8 c8  s8 c8 c4 c8 c8  s8 c8 c2. c4 c8 c8  s8 c8 c4 c8 c8  s8 c8 c4 c8 c4 c8 c2.
}

BBHCBxCFDLessSylMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 90
    \time 6/8
    \key f \major
    \partial 8
    
}
BBHCBxCFDLessSylMusicRHA = \relative c'{ \BBHCBxCFDLessSylMusicGlobal \clef "treble"
    \pcAO c8 \pcAO | %1
\nbp c4 \pcAO d8 f4 d8 | %2
\nbp f4. e4 \lbp e8 | %3
\nbp f4 f8 bes4 a8 | %4
\nbp g4.~g4 \lbp g8 | %5
\nbp g4 g8 a4 bes8 | c4 a8 f4 \lbp e8 | %7
\nbp d4 e8 f4 d8 | %8
\nbp g4.~g4 \cbp c8 \postCho | %9
\nbp a4 g8 f4 g8 |  \nbp f4. e4 \lbp e8 | %11
\nbp e4 bes'8 a4 g8 | %12
\nbp c4.~c4 \lbp c8 | %13
\nbp d4 c8 f,4 f8 | %14
c'4 bes8 d,4 \lbp d8 | %15
\nbp c [bes'] a a4 g8 \nbp f4.~f4 \he
}
BBHCBxCFDLessSylMusicRHB = \relative c'{ \BBHCBxCFDLessSylMusicGlobal \clef "treble"
    c8 | c4 d8 c4 c8 | d4. c4 c8 | %3
c4 c8 ges'4 ges8 | d4.~d4 d8 | %5
e4 e8 e4 e8 | f4 c8 d4 c8 | b4 b8 b4 b8 | %8
bes4.~bes4 c8 | c4 c8 c4 c8 | %10
c4. c4 c8 | c4 e8 e4 e8 | f4.~f4 f8 | %13
ees4 ees8 ees4 ees8 | d4 d8 bes4 bes8 | %15
a [c] f e4 e8 c4.~c4
}
BBHCBxCFDLessSylMusicRH =  \partCombine #'(2 . 20)  \BBHCBxCFDLessSylMusicRHA \BBHCBxCFDLessSylMusicRHB
BBHCBxCFDLessSylMusicLHA = \relative c{ \BBHCBxCFDLessSylMusicGlobal \clef "bass"
    \pcAO c8 | a'4 a8 a4 a8 | %2
bes4. bes4 bes8 | f4 f8 d'4 c8 | %4
bes4.~bes4 bes8 | bes4 bes8 a4 g8 | %6
a4 a8 a4 e8 | f4 e8 d4 f8 | f4. e4 a8 | %9
a4 bes8 a4 bes8 | a4. g4 g8 | %11
g4 g8 c4 bes8 | a4.~a4 a8 | %13
a4 a8 c4 a8 | f4 f8 f4 f8 | %15
f e c' c4 bes8 a4.~a4
}
BBHCBxCFDLessSylMusicLHB = \relative c{ \BBHCBxCFDLessSylMusicGlobal \clef "bass"
    c8 | f,4 f8 f4 f8 | g4. g4 g8 | %3
a4 a8 d4 d8 | g4.~g4 g8 | c,4 c8 c4 c8 | %6
f4 f8 d4 g,8 | g4 g8 g4 g8 | c4.~c4 f8 | %9
f4 f8 f4 f8 | c4. c4 c8 | c4 c8 c4 c8 | %12
f4.~f4 f8 | f4 f8 a4 f8 | %14
bes,4 bes8 bes4 g8 | c c c c4 c8 f4.~f4
}
BBHCBxCFDLessSylMusicLH =  \partCombine #'(2 . 20)  \BBHCBxCFDLessSylMusicLHA \BBHCBxCFDLessSylMusicLHB
BBHCBxCFDLessSylMusicLyrics = \relative c''''{ \BBHCBxCFDLessSylMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8 c4 c8 c4 c8 c4. c4 c8 c4 c8 c4 c8 c4.  s4 c8 c4 c8 c4 c8 c4 c8 c4 c8 c4 c8 c4 c8 c4.  s4 c8 c4 c8 c4 c8 c4. c4 c8 c4 c8 c4 c8 c4.  s4 c8 c4 c8 c4 c8 c4 c8 c4 c8 c8  s8 c8 c4 c8 c4.
}

BBHCCxIHMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 100
    \time 4/4
    \key as \major
    
}
BBHCCxIHMusicRHA = \relative c'{ \BBHCCxIHMusicGlobal \clef "treble"
    aes'4. bes8 c4. bes8 | %1
aes4 f f  ees | bes'4. aes8 g4 aes | %3
\nbp bes2. r4 | aes4. bes8 c4. bes8 | %5
aes4 f f  ees | bes'4. c8 des4 g, | %7
\nbp aes2. r4 \cbp | %8
c \postCho c bes bes | %9
aes aes g g \pcAO | %10
f4. f8 \pcAO ees4 aes |  \nbp bes2. r4 | %12
aes4. bes8 c4. bes8 | aes4 f f  ees | %14
bes'4. c8 des4 g, \nbp aes2. r4 \he
}
BBHCCxIHMusicRHB = \relative c'{ \BBHCCxIHMusicGlobal \clef "treble"
    c4. des8 ees4. des8 | c4 des des c | %2
ees4. ees8 ees4 ees | des2. r4 | %4
c4. des8 ees4. des8 | c4 des des c | %6
ees4. ees8 g4 ees | ees2. r4 | %8
ees ees ees des | c f f e | %10
f4. des8 ees4 c | ees2. r4 | %12
c4. des8 ees4. des8 | c4 des des c | %14
ees4. ees8 g4 ees ees2. r4
}
BBHCCxIHMusicRH =  \partCombine #'(2 . 20)  \BBHCCxIHMusicRHA \BBHCCxIHMusicRHB
BBHCCxIHMusicLHA = \relative c{ \BBHCCxIHMusicGlobal \clef "bass"
    aes'4. ees8 ees4. g8 | aes4 aes aes \pcAO aes | %2
des4. c8 bes4 c | g2. r4 | %4
aes4. ees8 ees4. g8 | aes4 aes aes \pcAO aes | %6
des4. c8 bes4 des | c2. r4 | %8
aes aes aes g | aes c c bes | %10
aes4. aes8 aes4 aes | g2. r4 | %12
aes4. ees8 ees4. g8 | aes4 aes aes \pcAO aes | %14
des4. c8 bes4 des c2. r4
}
BBHCCxIHMusicLHB = \relative c{ \BBHCCxIHMusicGlobal \clef "bass"
    aes4. aes8 aes4. aes8 | aes4 des des aes' | %2
g4. aes8 ees4 ees | ees2. r4 | %4
aes,4. aes8 aes4. aes8 | %5
aes4 des des aes' | g4. aes8 ees4 ees | %7
aes,2. r4 | aes c ees ees | f f c c | %10
des4. des8 c4 aes | ees'2. r4 | %12
aes,4. aes8 aes4. aes8 | %13
aes4 des des aes' | g4. aes8 ees4 ees aes,2. r4
}
BBHCCxIHMusicLH =  \partCombine #'(2 . 20)  \BBHCCxIHMusicLHA \BBHCCxIHMusicLHB
BBHCCxIHMusicLyrics = \relative c''''{ \BBHCCxIHMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4. c8 c4. c8 c4 c4 c4 c4 c4. c8 c4 c4 c2.  s4 c4. c8 c4. c8 c4 c4 c4 c4 c4. c8 c4 c4 c2.  s4 c4 c4 c4 c4 c4 c4 c4 c4 c4. c8 c4 c4 c2.  s4 c4. c8 c4. c8 c4 c4 c4 c4 c4. c8 c4 c4 c2.
}

BBHCDxAAAMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 98
    \time 4/4
    \key g \major
    
}
BBHCDxAAAMusicRHA = \relative c'{ \BBHCDxAAAMusicGlobal \clef "treble"
    b'4 a8. g16 \pcAO d4 g | b4. (c8) b2 | %2
d4 e8. d16 b4 \pcAO g |  \nbp a2. r4 | %4
b a8. g16 \pcAO d4 g | b4. (c8) d2 | %6
d8 [c] b a g4 fis | %7
\nbp g2. r4 \postFine | a a8. b16 a4 a | %9
\nbp a2 d | cis4 cis8. cis16 b4 a | %11
\nbp a2 (d4) r | a a8. b16 a4 d | %13
\nbp d2 b | a4 cis8. d16 e4 cis \nbp d2 (c) \postDC \he
}
BBHCDxAAAMusicRHB = \relative c'{ \BBHCDxAAAMusicGlobal \clef "treble"
    d4 d8. d16 d4 d | g2 g | g4 g8. g16 g4 g | %3
fis2. r4 | d d8. d16 d4 d | g2 f | %6
e4 e8 e d4 d | d2. r4 | %8
fis fis8. g16 fis4 fis | fis2 fis | %10
e4 g8. g16 g4 g | fis2. r4 | %12
fis fis8. g16 fis4 fis | g2 g | %14
fis4 e8. fis16 g4 e fis (g a2)
}
BBHCDxAAAMusicRH =  \partCombine #'(2 . 20)  \BBHCDxAAAMusicRHA \BBHCDxAAAMusicRHB
BBHCDxAAAMusicLHA = \relative c{ \BBHCDxAAAMusicGlobal \clef "bass"
    d'4 c8. b16 b4 b | d4. (e8) d2 | %2
b4 c8. b16 d4  d | d2. r4  | %4
d c8. b16 b4 b | d2 g, | %6
g8 [a] d c b4 c | b2. r4 | %8
d d8. d16 d4 d | d2 a \pcAO | %10
a4 e'8. e16 d4 cis | d2 (a4) r | %12
d d8. d16 d4 a | b2 d | %14
d4 \pcAO a8. \pcAO a16 a4 a a2 (d)
}
BBHCDxAAAMusicLHB = \relative c{ \BBHCDxAAAMusicGlobal \clef "bass"
    g'4 g8. g16 g4 g | g2 g | %2
g4 g8. g16 g4 b, | d2. r4 | %4
g g8. g16 g4 g | g2 b, | c4 c8 c d4 d | %7
g,2. r4 | d' d8. d16 d4 d | d2 d | %10
a'4 a8. a16 a4 a | d,2. r4 | %12
d d8. d16 d4 d | g2 g | a4 a8. a16 a,4 a d (e fis2)
}
BBHCDxAAAMusicLH =  \partCombine #'(2 . 20)  \BBHCDxAAAMusicLHA \BBHCDxAAAMusicLHB
BBHCDxAAAMusicLyrics = \relative c''''{ \BBHCDxAAAMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c8. c16 c4 c4 c4.  s8 c2 c4 c8. c16 c4 c4 c2.  s4 c4 c8. c16 c4 c4 c4.  s8 c2 c8  s8 c8 c8 c4 c4 c2.  s4 c4 c8. c16 c4 c4 c2 c2 c4 c8. c16 c4 c4 c2 s4 s4 c4 c8. c16 c4 c4 c2 c2 c4 c8. c16 c4 c4 c2
}

BBHCExCBDMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 94
    \time 4/4
    \key bes \major
    
}
BBHCExCBDMusicRHA = \relative c'{ \BBHCExCBDMusicGlobal \clef "treble"
    f4. f8 g f d8. f16 |  \nbp bes2. r4 | %2
bes4. bes8 c bes g8. bes16 |  \nbp f2. r4 | %4
f4. f8 g f d8. f16 |  \nbp bes2. r4 | %6
a4. bes8 c a g8. c16 |  \nbp c2. r4 \cbp | %8
d4. \postCho d8 c bes d,8. g16 | %9
\nbp f2. r4 | g4. a8 bes a bes8. c16 | %11
\nbp d2. r4 | d4. d8 c bes d,8. g16 | %13
\nbp f2. r4 | a4. g8 f c' g8. a16 \nbp bes2. \he
}
BBHCExCBDMusicRHB = \relative c'{ \BBHCExCBDMusicGlobal \clef "treble"
    d4. d8 ees d bes8. d16 | d2. r4 | %2
ees4. ees8 ees ees ees8. ees16 | d2. r4 | %4
d4. d8 ees d bes8. d16 | d2. r4 | %6
c4. e8 f f e8. e16 | f2. r4 | %8
f4. f8 f f bes,8. ees16 | d2. r4 | %10
ees4. f8 f ees d8. g16 | ges2. r4 | %12
f4. f8 f f bes,8. ees16 | d2. r4 | %14
ees4. ees8 ees ees ees8. ees16 d2.
}
BBHCExCBDMusicRH =  \partCombine #'(2 . 20)  \BBHCExCBDMusicRHA \BBHCExCBDMusicRHB
BBHCExCBDMusicLHA = \relative c{ \BBHCExCBDMusicGlobal \clef "bass"
    bes'4. bes8 bes bes f8. f16 | f2. r4 | %2
g4. g8 g g bes8. bes16 \pcAO | bes2. r4 | %4
bes4. bes8 bes bes f8. f16 | f2. r4 | %6
f4. g8 a c bes8. bes16 | a2. r4 \pcAO | %8
bes4. \pcAO bes8 a bes f8. bes16 | %9
bes2. r4 | bes4. ees8 d c bes8. g16 | %11
a2. r4 \pcAO | %12
bes4. \pcAO bes8 a bes f8. bes16 | %13
bes2. r4 | c4. bes8 a a a8. \pcAO f16 f2.
}
BBHCExCBDMusicLHB = \relative c{ \BBHCExCBDMusicGlobal \clef "bass"
    bes4. bes8 bes bes bes8. bes16 | bes2. r4 | %2
ees4. ees8 ees ees ees8. g16 | bes2. r4 | %4
bes,4. bes8 bes bes bes8. bes16 | %5
bes2. r4 | c4. c8 c c c8. c16 | f2. r4 | %8
bes4. bes8 f d bes8. bes16 | bes2. r4 | %10
ees4. c8 bes f' g8. ees16 | d2. r4 | %12
bes'4. bes8 f d bes8. bes16 | bes2. r4 | %14
f'4. f8 f f f8. f16 bes,2.
}
BBHCExCBDMusicLH =  \partCombine #'(2 . 20)  \BBHCExCBDMusicLHA \BBHCExCBDMusicLHB
BBHCExCBDMusicLyrics = \relative c''''{ \BBHCExCBDMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4. c8 c8 c8 c8. c16 c2.  s4 c4. c8 c8 c8 c8. c16 c2.  s4 c4. c8 c8 c8 c8. c16 c2.  s4 c4. c8 c8 c8 c8. c16 c2.  s4 c4. c8 c8 c8 c8. c16 c2.  s4 c4. c8 c8 c8 c8. c16 c2.  s4 c4. c8 c8 c8 c8. c16 c2.  s4 c4. c8 c8 c8 c8. c16 c2.
}

BBHCFxACZMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 80
    \time 4/4
    \key f \major
    \partial 4
    
}
BBHCFxACZMusicRHA = \relative c'{ \BBHCFxACZMusicGlobal \clef "treble"
    \pcAO c4 |  \nbp a'4. a8 bes g d' b | %2
\nbp c2. \lbp a4 | %3
\nbp a4. g8 fis g a8. g16 \pcAO | %4
\nbp f2. \pcAO \lbp c4 | %5
\nbp a'4. a8 bes g d' b | %6
\nbp c2. \lbp a4 |  \nbp g4. c8 d b a g | %8
\nbp c2. \lbp c4 | %9
\nbp d4. c8 bes a bes b | %10
\nbp c2. \lbp c4 | %11
\nbp e4. d8 c bes g bes | %12
\nbp a2. \lbp a4 | %13
\nbp a4. d8 a a bes bes | %14
\nbp a2. \lbp a4 |  \nbp g4. g8 a g a b | %16
\nbp c2. \cbp c4 \postCho | %17
\nbp a4. a8 bes g d' b | %18
\nbp c2. \lbp a4 | %19
\nbp a4. g8 fis g a8. g16 | %20
\nbp f2. \lbp c'4 | %21
\nbp c4. a8 g f \pcAO d f | %22
\nbp d'2. e8 [d] | %23
\nbp c4. a8 g a \set Score.tempoHideNote = ##t \tempo 4 = 40  \fpre bes \fpost \set Score.tempoHideNote = ##t \tempo 4 = 80   e, \nbp f2. \he
}
BBHCFxACZMusicRHB = \relative c'{ \BBHCFxACZMusicGlobal \clef "treble"
    c4 | f4. f8 e e e e | c2. f4 | %3
e4. e8 e e e8. e16 | f2. c4 | %5
f4. f8 e e e e | e2. f4 | e4. e8 f f f f | %8
e2. e4 | e4. f8 e f e d | c2. f4 | %11
e4. e8 f e e e | f2. f4 | e4. f8 e e g f | %14
e2. e4 | e4. e8 f e f f | e2. g4 | %17
f4. f8 e e e e | c2. f4 | %19
e4. e8 e e e8. e16 | c2. c4 | %21
c4. c8 d d d d | f2. f4 | f4. f8 e f e c c2.
}
BBHCFxACZMusicRH =  \partCombine #'(2 . 20)  \BBHCFxACZMusicRHA \BBHCFxACZMusicRHB
BBHCFxACZMusicLHA = \relative c{ \BBHCFxACZMusicGlobal \clef "bass"
    a'4 | c4. c8 c c gis gis | a2. c4 | %3
c4. bes8 a bes c8. bes16 | a2. a4 | %5
c4. c8 c c b d | c2. c4 | c4. c8 b d c b | %8
c2. c4 | c4. c8 c c c gis | a2. a4 | %11
c4. c8 c c c c | c2. c4 | %13
cis4. d8 cis cis d d | des2. des4 | %15
c4. c8 c c b d | c2. c4 | %17
c4. c8 c c gis gis | a2. c4 | %19
c4. bes8 a bes c8. bes16 | a2. a4 | %21
a4. a8 bes bes f bes | bes2. bes4 | %23
a4. c8 c c c bes a2.
}
BBHCFxACZMusicLHB = \relative c{ \BBHCFxACZMusicGlobal \clef "bass"
    f4 | f4. f8 c c e e | f2. f4 | %3
c4. c8 c c c8. c16 | f2. f4 | %5
f4. f8 g g gis gis | a2. f4 | %7
c4. c8 g' g g g | c,2. bes'4 | %9
bes4. a8 g f c e | f2. f4 | %11
c4. bes'8 a g c, c | f2. f4 | %13
a,4. a8 a a g g | a2. a4 | %15
c4. c8 f g g g | c,2. e4 | %17
f4. f8 c c e e | f2. f4 | %19
c4. c8 c c c8. c16 | f2. f4 | %21
f4. f8 bes, bes bes bes | bes2. bes4 | %23
c4. c8 c c \fpre c \fpostbelow c f,2.
}
BBHCFxACZMusicLH =  \partCombine #'(2 . 20)  \BBHCFxACZMusicLHA \BBHCFxACZMusicLHB
BBHCFxACZMusicLyrics = \relative c''''{ \BBHCFxACZMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c4. c8 c8 c8 c8 c8 c2. c4 c4. c8 c8 c8 c8. c16 c2. c4 c4. c8 c8 c8 c8 c8 c2. c4 c4. c8 c8 c8 c8 c8 c2. c4 c4. c8 c8 c8 c8 c8 c2. c4 c4. c8 c8 c8 c8 c8 c2. c4 c4. c8 c8 c8 c8 c8 c2. c4 c4. c8 c8 c8 c8 c8 c2. c4 c4. c8 c8 c8 c8 c8 c2. c4 c4. c8 c8 c8 c8. c16 c2. c4 c4. c8 c8 c8 c8 c8 c2. c4 c4. c8 c8 c8 c8 c8 c2.
}

BBHCGxFZMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 92
    \key f \major
    \time 3/4
}
BBHCGxFZMusicRHA = \relative c'{ \BBHCGxFZMusicGlobal \clef "treble"
    a'4 a a | a4. g8 g4 | g a bes | %3
\nbp a2. | c4 c c | c4. b8 b4 | b c d | %7
\nbp c2 (bes4) \breathe | a bes c | %9
d4. g,8 g4 \breathe | g a bes | %11
c4. f,8 f4 \breathe | f g a | %13
bes4. d,8 d4 \breathe | e f g \nbp f2. \he
}
BBHCGxFZMusicRHB = \relative c'{ \BBHCGxFZMusicGlobal \clef "treble"
    f4 f f | f4. e8 e4 | e f e | f2. | %4
f4 f f | f4. f8 f4 | f e f | e (f g) | %8
f f f | f4. d8 d4 | e e e | e4. d8 d4 | %12
d d d | d4. bes8 bes4 | c c e c2.
}
BBHCGxFZMusicRH =  \partCombine #'(2 . 20)  \BBHCGxFZMusicRHA \BBHCGxFZMusicRHB
BBHCGxFZMusicLHA = \relative c{ \BBHCGxFZMusicGlobal \clef "bass"
    c'4 c c | c4. c8 c4 | c c c | c2. | %4
c4 c c | d4. d8 d4 | d c b | c2. | %8
c4 bes a | bes4. bes8 bes4 | bes a g | %11
a4. a8 a4 | a g fis | g4. g8 g4 | %14
g a bes a2.
}
BBHCGxFZMusicLHB = \relative c{ \BBHCGxFZMusicGlobal \clef "bass"
    f4 f f | c4. c8 c4 | c c c | f2. | %4
a4 a a | g4. g8 g4 | g g g | c, (d e) | %8
f d c | bes4. bes8 bes4 | c c c | %11
a4. d8 d4 | c bes a | g4. g8 g4 | c c c f2.
}
BBHCGxFZMusicLH =  \partCombine #'(2 . 20)  \BBHCGxFZMusicLHA \BBHCGxFZMusicLHB
BBHCGxFZMusicLyrics = \relative c''''{ \BBHCGxFZMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c4 c4 c4. c8 c4 c4 c4 c4 c2. c4 c4 c4 c4. c8 c4 c4 c4 c4 c2  s4 c4 c4 c4 c4. c8 c4 c4 c4 c4 c4. c8 c4 c4 c4 c4 c4. c8 c4 c4 c4 c4 c2.
}

BBHCHxCDMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 64
    \time 6/8
    \key des \major
    
}
BBHCHxCDMusicRHA = \relative c'{ \BBHCHxCDMusicGlobal \clef "treble"
    aes'4 aes8 aes [ges] f | %1
des'4 bes8 aes4 f8 | %2
ges4 ges8 ges [f] ees | aes4 ges8 f4. | %4
aes4 aes8 aes [ges] f | %5
des'4 bes8 aes4 f8 | bes4 bes8 aes4 des8 | %7
f,4 ees8 \pcAO des4. \cbp | %8
des'4 \postCho des8 des [c] bes | %9
aes4 bes8 aes4 f8 | %10
des'4 des8 des [c] bes | c4 bes8 aes4. \breathe | %12
aes4 aes8 aes [ges] f | %13
des'4 bes8 aes4 f8 | bes4 bes8 aes4 des8 f,4 ees8 \pcAO des4. \he
}
BBHCHxCDMusicRHB = \relative c'{ \BBHCHxCDMusicGlobal \clef "treble"
    f4 f8 f [ees] des | f4 ges8 f4 des8 | %2
ees4 ees8 ees [des] c | f4 ees8 des4. | %4
f4 f8 f [ees] des | f4 ges8 f4 des8 | %6
des4 des8 des4 f8 | des4 c8 des4. | %8
f4 f8 f [aes] ges | f4 ges8 f4 des8 | %10
f4 f8 f4 f8 | aes4 g8 aes4 (ges8) | %12
f4 f8 f [ees] des | f4 ges8 f4 des8 | %14
des4 des8 des4 f8 des4 c8 des4.
}
BBHCHxCDMusicRH =  \partCombine #'(2 . 20)  \BBHCHxCDMusicRHA \BBHCHxCDMusicRHB
BBHCHxCDMusicLHA = \relative c{ \BBHCHxCDMusicGlobal \clef "bass"
    des'4 des8 des4 aes8 | %1
aes4 des8 des4 aes8 | aes4 aes8 aes4 aes8 | %3
aes4 aes8 aes4. | des4 des8 des4 aes8 | %5
aes4 des8 des4 aes8 \pcAO | %6
ges4 \pcAO ges8 aes4 aes8 | %7
aes4 ges8 f4. | aes4 aes8 aes4 des8 | %9
des4 des8 des4 aes8 | bes4 bes8 bes [a] bes | %11
aes4 des8 c4. | des4 des8 des4 aes8 | %13
aes4 des8 des4 aes8 \pcAO | %14
ges4 \pcAO ges8 aes4 aes8 aes4 ges8 f4.
}
BBHCHxCDMusicLHB = \relative c{ \BBHCHxCDMusicGlobal \clef "bass"
    des4 des8 des4 des8 | des4 des8 des4 des8 | %2
aes4 aes8 aes4 aes8 | aes4 c8 des4. | %4
des4 des8 des4 des8 | des4 des8 des4 des8 | %6
ges4 ges8 f4 des8 | aes4 aes8 des4. | %8
des4 des8 des4 des8 | des4 des8 des4 des8 | %10
bes4 bes8 bes [c] des | ees4 ees8 aes,4. | %12
des4 des8 des4 des8 | des4 des8 des4 des8 | %14
ges4 ges8 f4 des8 aes4 aes8 des4.
}
BBHCHxCDMusicLH =  \partCombine #'(2 . 20)  \BBHCHxCDMusicLHA \BBHCHxCDMusicLHB
BBHCHxCDMusicLyrics = \relative c''''{ \BBHCHxCDMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c8 c8  s8 c8 c4 c8 c4 c8 c4 c8 c8  s8 c8 c4 c8 c4. c4 c8 c8  s8 c8 c4 c8 c4 c8 c4 c8 c4 c8 c4 c8 c4. c4 c8 c8  s8 c8 c4 c8 c4 c8 c4 c8 c8  s8 c8 c4 c8 c4  s8 c4 c8 c8  s8 c8 c4 c8 c4 c8 c4 c8 c4 c8 c4 c8 c4.
}

BBHCIxBCHMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 98
    \time 4/4
    \key g \major
    \partial 4
    
}
BBHCIxBCHMusicRHA = \relative c'{ \BBHCIxBCHMusicGlobal \clef "treble"
    \pcAO d4 |  \nbp b' b a g | %2
\nbp fis2. \pcAO \lbp d4 | %3
\nbp c' c b a |  \nbp d2. \lbp b8 [c] | %5
\nbp d4 d c b | a e e \lbp g | %7
\nbp g \pcAO e b' a | %8
\nbp a2. \pcAO \lbp d,4 | %9
\nbp b' b a g | %10
\nbp fis2. \pcAO \lbp d4 | %11
\nbp c' c b a |  \nbp d2. \lbp d4 | %13
\nbp d e c c | c a \set Score.tempoHideNote = ##t \tempo 4 = 49  \fpre d \fpost \set Score.tempoHideNote = ##t \tempo 4 = 98   \lbp g, | %15
\nbp g8 [a] b [c] b4 a \pcAO \nbp g2. \he
}
BBHCIxBCHMusicRHB = \relative c'{ \BBHCIxBCHMusicGlobal \clef "treble"
    d4 | d d d cis | d2. d4 | d d d d | %4
d2. g8 [a] | b4 b a g | e c c d | %7
d e e e | d2. d4 | d d d d | d2. d4 | %11
d d d d | d2. g4 | g g fis d | %14
d fis g d | e g g fis g2.
}
BBHCIxBCHMusicRH =  \partCombine #'(2 . 20)  \BBHCIxBCHMusicRHA \BBHCIxBCHMusicRHB
BBHCIxBCHMusicLHA = \relative c{ \BBHCIxBCHMusicGlobal \clef "bass"
    b'4 | b \pcAO g a a | a2. fis4 | %3
fis fis g a | b2. d4 | d d d d | %6
c g g g | g g g g | fis2. fis4 | %9
g g fis g | a2. fis4 | fis fis g fis | %12
g2. b4 | b c c c | a c b b | %15
b e d d8 [c] b2.
}
BBHCIxBCHMusicLHB = \relative c{ \BBHCIxBCHMusicGlobal \clef "bass"
    g'4 | g g fis e | d2. d4 | d d e fis | %4
g2. g8 [fis] | g4 g fis g | c, c c b | %7
b c cis cis | d2. d4 | g, g a b | %10
c2. c4 | a a d c | b2. g'4 | e c d a' | %14
fis d \fpre g \fpostbelow g | e c d d g2.
}
BBHCIxBCHMusicLH =  \partCombine #'(2 . 20)  \BBHCIxBCHMusicLHA \BBHCIxBCHMusicLHB
BBHCIxBCHMusicLyrics = \relative c''''{ \BBHCIxBCHMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c4 c4 c4 c4 c2. c4 c4 c4 c4 c4 c2. c8  s8 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c2. c4 c4 c4 c4 c4 c2. c4 c4 c4 c4 c4 c2. c4 c4 c4 c4 c4 c4 c4 c4 c4 c8  s8 c8  s8 c4 c4 c2.
}

BBHDZxCGIMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 74
    \time 3/4
    \key f \major
    \partial 4
    
}
BBHDZxCGIMusicRHA = \relative c'{ \BBHDZxCGIMusicGlobal \clef "treble"
    a'4 |  \nbp a8 g g4 bes | %2
bes8 a a4 \lbp c | %3
\nbp c4. a8 \pcAO f a | %4
\nbp g2 \lbp a4 |  \nbp bes8 c d4. d8 | %6
d c c4 \lbp c | %7
\nbp c4. c8 bes g \pcAO \nbp f2 \he
}
BBHDZxCGIMusicRHB = \relative c'{ \BBHDZxCGIMusicGlobal \clef "treble"
    f4 | f8 e e4 g | f8 f f4 a | a4. f8 f f | %4
e2 f4 | f8 f f4. f8 | f f f4 f | %7
e4. e8 e e f2
}
BBHDZxCGIMusicRH =  \partCombine #'(2 . 20)  \BBHDZxCGIMusicRHA \BBHDZxCGIMusicRHB
BBHDZxCGIMusicLHA = \relative c{ \BBHDZxCGIMusicGlobal \clef "bass"
    c'4 | c8 c c4 c | d8 c c4 f | %3
f4. c8 a b | c2 c4 | bes8 a bes4. bes8 | %6
bes a a4 a | g4. g8 g bes a2
}
BBHDZxCGIMusicLHB = \relative c{ \BBHDZxCGIMusicGlobal \clef "bass"
    f4 | c8 c c4 e | f8 f f4 f | f4. f8 f d | %4
c2 f4 | d8 c bes4. bes8 | f' f f4 f | %7
c4. c8 c c f2
}
BBHDZxCGIMusicLH =  \partCombine #'(2 . 20)  \BBHDZxCGIMusicLHA \BBHDZxCGIMusicLHB
BBHDZxCGIMusicLyrics = \relative c''''{ \BBHDZxCGIMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c8 c8 c4 c4 c8 c8 c4 c4 c4. c8 c8 c8 c2 c4 c8 c8 c4. c8 c8 c8 c4 c4 c4. c8 c8 c8 c2
}

BBHDAxCCCMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 66
    \time 3/4
    \key e \major
    \partial 4
    
}
BBHDAxCCCMusicRHA = \relative c'{ \BBHDAxCCCMusicGlobal \clef "treble"
    gis'8. a16 |  \nbp b4. gis8 e'8. cis16 | %2
\nbp b4 gis \lbp cis8. b16 | %3
\nbp fis4. gis8 b8. a16 | %4
\nbp gis2 \lbp gis8. a16 | %5
\nbp b4. gis8 e'8. cis16 | %6
\nbp b4 gis \lbp e'8. e16 | %7
\nbp dis4. cis8 b8. ais16 | %8
\nbp b2 \cbp b8. \postCho b16 | %9
\nbp b4. a8 gis8. fis16 | %10
\nbp gis2 \lbp e'8. dis16 | %11
\nbp cis4. e8 dis8. cis16 | %12
\nbp b2 \lbp b8. b16 | %13
\nbp e4. gis,8 a8. b16 | %14
\nbp dis4 cis \lbp a8. fis16 | %15
\nbp e4 gis \set Score.tempoHideNote = ##t \tempo 4 = 33  \fpre gis8. \fpost \set Score.tempoHideNote = ##t \tempo 4 = 66   fis16 \nbp e2 \he
}
BBHDAxCCCMusicRHB = \relative c'{ \BBHDAxCCCMusicGlobal \clef "treble"
    e8. fis16 | gis4. e8 gis8. a16 | %2
gis4 e e8. e16 | dis4. e8 dis8. fis16 | %4
e2 e8. fis16 | gis4. e8 a8. a16 | %6
gis4 e gis8. gis16 | fis4. fis8 fis8. e16 | %8
dis2 dis8. dis16 | dis4. fis8 e8. dis16 | %10
e2 gis8. b16 | a4. cis8 b8. a16 | %12
gis2 gis8. gis16 | gis4. e8 dis8. e16 | %14
e4 e e8. cis16 | b4 e dis8. b16 b2
}
BBHDAxCCCMusicRH =  \partCombine #'(2 . 20)  \BBHDAxCCCMusicRHA \BBHDAxCCCMusicRHB
BBHDAxCCCMusicLHA = \relative c{ \BBHDAxCCCMusicGlobal \clef "bass"
    b'8. b16 | e4. b8 b8. e16 | %2
e4 b a8. gis16 | b4. b8 b8. b16 | %4
b2 b8. b16 | e4. b8 cis8. e16 | %6
e4 b cis8. cis16 | b4. e8 dis8. cis16 | %8
b2 fis8. fis16 | fis4. b8 b8. b16 | %10
b2 b8. e16 | e4. e8 e8. e16 | e2 e8. e16 | %13
b4. b8 b8. b16 \pcAO | %14
a4 \pcAO a cis8. a16 | gis4 b b8. a16 gis2
}
BBHDAxCCCMusicLHB = \relative c{ \BBHDAxCCCMusicGlobal \clef "bass"
    e8. e16 | e4. e8 e8. e16 | e4 e e8. e16 | %3
b4. b8 b8. dis16 | e2 e8. e16 | %5
e4. e8 e8. e16 | e4 e cis8. cis16 | %7
fis4. fis8 fis8. fis16 | b,2 b8. b16 | %9
b4. b8 b8. b16 | e2 e8. e16 | %11
a4. a8 a8. a16 | e2 e8. e16 | %13
e4. e8 fis8. gis16 | a4 a a,8. a16 | %15
b4 b \fpre b8. \fpostbelow b16 e2
}
BBHDAxCCCMusicLH =  \partCombine #'(2 . 20)  \BBHDAxCCCMusicLHA \BBHDAxCCCMusicLHB
BBHDAxCCCMusicLyrics = \relative c''''{ \BBHDAxCCCMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8. c16 c4. c8 c8. c16 c4 c4 c8. c16 c4. c8 c8. c16 c2 c8. c16 c4. c8 c8. c16 c4 c4 c8. c16 c4. c8 c8. c16 c2 c8. c16 c4. c8 c8. c16 c2 c8. c16 c4. c8 c8. c16 c2 c8. c16 c4. c8 c8. c16 c4 c4 c8. c16 c4 c4 c8. c16 c2
}

BBHDBxBAFMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 96
    \time 4/4
    \key g \major
    \partial 4
    
}
BBHDBxBAFMusicRHA = \relative c'{ \BBHDBxBAFMusicGlobal \clef "treble"
    g'8 a |  \nbp b4 a8 [g] e4 d | %2
\nbp g2. \lbp g4 |  \nbp a a a b | %4
\nbp a2. \lbp g8 [a] | %5
\nbp b4 a8 [g] e4 e8 [fis] | %6
g4 fis8 [e] d4 \lbp g | %7
\nbp a4. g8 b4 a \pcAO | %8
\nbp g2. \cbp b8 \postCho [c] | %9
\nbp d4. e8 d4 b \pcAO | %10
\nbp g2. \lbp b8 [c] | %11
\nbp d4. e8 d4 b | %12
\nbp a2. \lbp g8 [a] | %13
\nbp b4 a8 [g] e4 e8 [fis] | %14
g4 fis8 [e] d4 \lbp g | %15
\nbp a4. g8 b4 a \pcAO \nbp g2. \he
}
BBHDBxBAFMusicRHB = \relative c'{ \BBHDBxBAFMusicGlobal \clef "treble"
    d8 d | g4 d c c | b2. d4 | d d d d | %4
d2. d4 | g d c c8 [d] | %6
e4 d8 [c] b4 d | fis4. d8 g4 fis | %8
g2. g8 [a] | b4. c8 b4 g | %10
g2. g8 [a] | b4. c8 b4 g | fis2. d4 | %13
g d c c8 [d] | e4 d8 [c] b4 d | %15
fis4. d8 g4 fis g2.
}
BBHDBxBAFMusicRH =  \partCombine #'(2 . 20)  \BBHDBxBAFMusicRHA \BBHDBxBAFMusicRHB
BBHDBxBAFMusicLHA = \relative c{ \BBHDBxBAFMusicGlobal \clef "bass"
    b'8 c | d4 c8 [b] g4 fis | g2. g4 | %3
fis fis fis \pcAO g | fis2. b8 [c] | %5
d4 b g g | c g g g | c4. b8 d4 c | %8
b2. d4 | d4. d8 d4 d | b2. d4 | %11
d4. d8 d4 d | d2. b8 [c] | d4 b g g | %14
g g g g | c4. b8 d4 c b2.
}
BBHDBxBAFMusicLHB = \relative c{ \BBHDBxBAFMusicGlobal \clef "bass"
    g'8 g | g4 g c, d | g,2. b4 | d d d g | %4
d2. g4 | g g c, c | c c g b | %7
d4. d8 d4 d | g2. g4 | g4. fis8 g4 g | %10
g2. g4 | g4. fis8 g4 g | d2. g4 | %13
g g c, c | c c g b | d4. d8 d4 d g2.
}
BBHDBxBAFMusicLH =  \partCombine #'(2 . 20)  \BBHDBxBAFMusicLHA \BBHDBxBAFMusicLHB
BBHDBxBAFMusicLyrics = \relative c''''{ \BBHDBxBAFMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8 c8 c4 c8  s8 c4 c4 c2. c4 c4 c4 c4 c4 c2. c8  s8 c4 c8  s8 c4 c8  s8 c4 c8  s8 c4 c4 c4. c8 c4 c4 c2. c8  s8 c4. c8 c4 c4 c2. c8  s8 c4. c8 c4 c4 c2. c8  s8 c4 c8  s8 c4 c8  s8 c4 c8  s8 c4 c4 c4. c8 c4 c4 c2.
}

BBHDCxBBZMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 2 = 54
    \time 4/4
    \key as \major
    
}
BBHDCxBBZMusicRHA = \relative c'{ \BBHDCxBBZMusicGlobal \clef "treble"
    ees2 f4 ees | aes4. bes8 c2 | c bes4 aes | %3
\nbp bes2. r4 | ees,2 f4 ees | %5
aes4. bes8 c2 | bes aes4 g | %7
\nbp aes2. r4 | des2 des4 des | %9
des4. c8 c2 \cbp | bes \postCho bes4 bes | %11
bes4. aes8 aes2 | f f4 f | %13
\nbp aes2. r4 | bes2 aes4 g \nbp aes2. r4 \he
}
BBHDCxBBZMusicRHB = \relative c'{ \BBHDCxBBZMusicGlobal \clef "treble"
    c2 des4 c | ees4. ees8 ees2 | ees ees4 d | %3
ees2. r4 | c2 des4 c | ees4. ees8 ees2 | %6
ees ees4 ees | ees2. r4 | aes2 aes4 aes | %9
aes4. aes8 aes2 | g g4 g | g4. ees8 ees2 | %12
des des4 des | ees2. r4 | f2 ees4 ees ees2. r4
}
BBHDCxBBZMusicRH =  \partCombine #'(2 . 20)  \BBHDCxBBZMusicRHA \BBHDCxBBZMusicRHB
BBHDCxBBZMusicLHA = \relative c{ \BBHDCxBBZMusicGlobal \clef "bass"
    aes'2 aes4 aes | %1
aes4. g8 \pcAO aes2 \pcAO | %2
aes bes4 bes | g2. r4 | aes2 aes4 aes | %5
aes4. g8 \pcAO aes2 | des c4 des | %7
c2. r4 | f2 f4 f | f4. ees8 ees2 | %10
des des4 des | des4. c8 c2 | %12
aes aes4 aes | aes2. r4 | des2 c4 bes c2. r4
}
BBHDCxBBZMusicLHB = \relative c{ \BBHDCxBBZMusicGlobal \clef "bass"
    aes2 aes4 aes | c4. ees8 aes2 | aes g4 f | %3
ees2. r4 | aes,2 des4 ees | %5
c4. ees8 aes2 | ees ees4 ees | aes2. r4 | %8
aes2 aes4 aes | aes4. aes8 aes2 | %10
ees ees4 ees | ees4. aes8 aes2 | %12
des, des4 des | c2. r4 | bes2 ees4 ees aes,2. r4
}
BBHDCxBBZMusicLH =  \partCombine #'(2 . 20)  \BBHDCxBBZMusicLHA \BBHDCxBBZMusicLHB
BBHDCxBBZMusicLyrics = \relative c''''{ \BBHDCxBBZMusicGlobal \clef "treble"
    \hideNotes \voiceFour c2 c4 c4 c4. c8 c2 c2 c4 c4 c2.  s4 c2 c4 c4 c4. c8 c2 c2 c4 c4 c2.  s4 c2 c4 c4 c4. c8 c2 c2 c4 c4 c4. c8 c2 c2 c4 c4 c2.  s4 c2 c4 c4 c2.
}

BBHDDxBMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 64
    \time 6/8
    \key as \major
    
}
BBHDDxBMusicRHA = \relative c'{ \BBHDDxBMusicGlobal \clef "treble"
    ees8. ees16 ees8 ees4 f8 | %1
aes4 aes8 aes4. | %2
bes8. bes16 bes8 bes4 des8 | c4 c8 c4. | %4
ees8. ees16 ees8 ees4 des8 | c4 c8 c4. | %6
bes8. c16 des8 c4 bes8 | %7
aes4 g8 aes4. \cbp | %8
c \postCho ees,8. f16 ees8 | %9
\nbp aes4. aes | bes bes8. c16 des8 | %11
\nbp c4. c | ees8. ees16 ees8 ees4 des8 | %13
c4 c8 c4. | bes8. c16 des8 c4 bes8 aes4 g8 aes4. \he
}
BBHDDxBMusicRHB = \relative c'{ \BBHDDxBMusicGlobal \clef "treble"
    c8. c16 c8 c4 des8 | c4 c8 c4. | %2
ees8. ees16 ees8 ees4 ees8 | %3
ees4 ees8 ees4. | %4
ees8. ees16 ees8 ees4 ees8 | %5
ees4 ees8 ees4. | %6
des8. ees16 ees8 ees4 f8 | ees4 des8 c4. | %8
ees c8. des16 c8 | c4. c | %10
ees ees8. ees16 ees8 | ees4. ees | %12
ees8. ees16 ees8 ees4 ees8 | %13
ees4 ees8 ees4. | %14
des8. ees16 ees8 ees4 f8 ees4 des8 c4.
}
BBHDDxBMusicRH =  \partCombine #'(2 . 20)  \BBHDDxBMusicRHA \BBHDDxBMusicRHB
BBHDDxBMusicLHA = \relative c{ \BBHDDxBMusicGlobal \clef "bass"
    aes'8. aes16 aes8 aes4 aes8 | %1
ees4 ees8 ees4. | %2
g8. g16 g8 g4 bes8 \pcAO | %3
aes4 \pcAO aes8 \pcAO aes4. | %4
c8. c16 c8 c4 bes8 \pcAO | %5
aes4 \pcAO aes8 \pcAO aes4. | %6
f8. aes16 g8 aes4 des8 | c4 bes8 aes4. | %8
aes aes8. aes16 aes8 | ees4. ees | %10
g g8. aes16 g8 | aes4. aes | %12
c8. c16 c8 c4 bes8 \pcAO | %13
aes4 \pcAO aes8 \pcAO aes4. | %14
f8. aes16 g8 aes4 des8 c4 bes8 aes4.
}
BBHDDxBMusicLHB = \relative c{ \BBHDDxBMusicGlobal \clef "bass"
    aes8. aes16 aes8 aes4 aes8 | %1
aes4 aes8 aes4. | %2
ees'8. ees16 ees8 ees4 g8 | %3
aes4 aes8 aes4. | %4
aes8. aes16 aes8 aes4 g8 | %5
aes4 aes8 aes4. | des,8. c16 bes8 c4 des8 | %7
ees4 ees8 aes,4. | aes aes8. aes16 aes8 | %9
aes4. aes | ees' ees8. ees16 ees8 | %11
aes,4. aes | aes'8. aes16 aes8 aes4 g8 | %13
aes4 aes8 aes4. | des,8. c16 bes8 c4 des8 ees4 ees8 aes,4.
}
BBHDDxBMusicLH =  \partCombine #'(2 . 20)  \BBHDDxBMusicLHA \BBHDDxBMusicLHB
BBHDDxBMusicLyrics = \relative c''''{ \BBHDDxBMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8. c16 c8 c4 c8 c4 c8 c4. c8. c16 c8 c4 c8 c4 c8 c4. c8. c16 c8 c4 c8 c4 c8 c4. c8. c16 c8 c4 c8 c4 c8 c4. c4. c8. c16 c8 c4. c4. c4. c8. c16 c8 c4. c4. c8. c16 c8 c4 c8 c4 c8 c4. c8. c16 c8 c4 c8 c4 c8 c4.
}

BBHDExBEEMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 2 = 68
    \time 2/2
    \key g \major
    
}
BBHDExBEEMusicRHA = \relative c'{ \BBHDExBEEMusicGlobal \clef "treble"
    \pcAO g'2 a |  \nbp b4 g c b | %2
\nbp b2 a | g4 c b a | g2 fis | %5
\nbp g1 \pcAO | g2 a |  \nbp b4 g c b | %8
\nbp b2 a | g4 c b a | g2 fis | %11
\nbp g1 | d'2 e |  \nbp d b | d e | %15
\nbp d1 | g,4 a b a | g2 fis \nbp g1 \he
}
BBHDExBEEMusicRHB = \relative c'{ \BBHDExBEEMusicGlobal \clef "treble"
    g'2 fis | g4 d d d | g2 fis | e4 e g e | %4
d2 d | d1 | g2 fis | g4 d d d | g2 fis | %9
e4 e g e | d2 d | d1 | g2 g | g g | %14
g g | g1 | e4 d d e | d2 d d1
}
BBHDExBEEMusicRH =  \partCombine #'(2 . 20)  \BBHDExBEEMusicRHA \BBHDExBEEMusicRHB
BBHDExBEEMusicLHA = \relative c{ \BBHDExBEEMusicGlobal \clef "bass"
    b'2 d | d4 \pcAO b a \pcAO g | d'2 d | %3
b4 a d c | b2 a4 (c) | b1 | b2 d | %7
d4 \pcAO b a \pcAO g | d'2 d | %9
b4 a d c | b2 a4 (c) | b1 | b2 c | %13
b \pcAO g | b c | b1 \pcAO | %16
b4 a \pcAO g c | b2 a4 (c) b1
}
BBHDExBEEMusicLHB = \relative c{ \BBHDExBEEMusicGlobal \clef "bass"
    g'2 d | g4 b fis g | d2 d | e4 a, b c | %4
d2 d | g,1 | g'2 d | g4 b fis g | d2 d | %9
e4 a, b c | d2 d | g,1 | g'2 c, | g' g | %14
g c, | g'1 | b4 fis g c, | d2 d g,1
}
BBHDExBEEMusicLH =  \partCombine #'(2 . 20)  \BBHDExBEEMusicLHA \BBHDExBEEMusicLHB
BBHDExBEEMusicLyrics = \relative c''''{ \BBHDExBEEMusicGlobal \clef "treble"
    \hideNotes \voiceFour c2 c2 c4 c4 c4 c4 c2 c2 c4 c4 c4 c4 c2 c2 c1 c2 c2 c4 c4 c4 c4 c2 c2 c4 c4 c4 c4 c2 c2 c1 c2 c2 c2 c2 c2 c2 c1 c4 c4 c4 c4 c2 c2 c1
}

BBHDFxBZCMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 84
    \time 4/4
    \key as \major
    \partial 4
    
}
BBHDFxBZCMusicRHA = \relative c'{ \BBHDFxBZCMusicGlobal \clef "treble"
    ees4 |  \nbp c'4. c8 bes aes g8. aes16 | %2
\nbp bes2. \lbp bes4 | %3
\nbp des4. c8 c bes aes8. bes16 | %4
\nbp c2. \lbp ees,4 | %5
\nbp ees'4. des8 c aes bes8. c16 | %6
\nbp des2. \lbp des4 | %7
\nbp c4. bes8 aes g c8. bes16 | %8
\nbp aes2. \cbp c4 \postCho | %9
\nbp c4. bes8 bes aes aes8. g16 | %10
\nbp g2. \lbp g4 | %11
\nbp des'4. f,8 g aes bes c | %12
\nbp ees,4.~ees4 \lbp f8 g aes | %13
des4.~des4 bes8 c bes | %14
\nbp ees2. \lbp des4 | %15
\nbp des4. c8 bes f g8. aes16 \nbp aes2. \he
}
BBHDFxBZCMusicRHB = \relative c'{ \BBHDFxBZCMusicGlobal \clef "treble"
    c4 | ees4. ees8 ees ees ees8. ees16 | %2
ees2. g4 | g4. aes8 aes ees ees8. g16 | %4
aes2. c,4 | %5
ges'4. ges8 ges ges ges8. ges16 | f2. f4 | %7
ees4. ees8 ees ees g8. g16 | ees2. aes4 | %9
aes4. ees8 ees ees ees8. ees16 | %10
ees2. ees4 | f4. des8 ees ees ees ees | %12
c4.~c4 des8 ees ees | %13
ees4.~ees4 ees8 ees ees | ees2. f4 | %15
ees4. ees8 f des des8. c16 c2.
}
BBHDFxBZCMusicRH =  \partCombine #'(2 . 20)  \BBHDFxBZCMusicRHA \BBHDFxBZCMusicRHB
BBHDFxBZCMusicLHA = \relative c{ \BBHDFxBZCMusicGlobal \clef "bass"
    aes'4 \pcAO | aes4. c8 des c bes8. f16 | %2
g2. ees'4 | bes4. ees8 ees des c8. ees16 | %4
ees2. aes,4 | c4. des8 ees c des8. ees16 | %6
des2. aes4 | aes4. des8 c bes ees8. des16 | %8
c2. ees4 | ees4. des8 des c c8. bes16 | %10
bes2. bes4 | bes4. bes8 bes aes g aes | %12
aes4.~aes4 aes8 bes aes | %13
g4.~g4 g8 g g | aes2. aes4 | %15
g8 [aes bes] c des bes bes8. aes16 aes2.
}
BBHDFxBZCMusicLHB = \relative c{ \BBHDFxBZCMusicGlobal \clef "bass"
    aes4 | aes'4. aes8 aes aes ees8. ees16 | %2
ees2. ees4 | %3
ees4. ees8 ees ees ees8. ees16 | %4
aes2. aes,4 | %5
aes'4. aes8 aes aes aes8. aes16 | %6
des,2. des4 | %7
ees4. ees8 ees ees ees8. ees16 | %8
aes2. aes4 | %9
aes4. aes8 aes aes ees8. ees16 | %10
ees2. ees4 | bes4. bes8 des c bes aes | %12
aes4.~aes4 des8 des c | %13
bes4.~bes4 des8 des des | c2. des4 | %15
ees8 [f g] aes des, des ees8. aes,16 aes2.
}
BBHDFxBZCMusicLH =  \partCombine #'(2 . 20)  \BBHDFxBZCMusicLHA \BBHDFxBZCMusicLHB
BBHDFxBZCMusicLyrics = \relative c''''{ \BBHDFxBZCMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c4. c8 c8 c8 c8. c16 c2. c4 c4. c8 c8 c8 c8. c16 c2. c4 c4. c8 c8 c8 c8. c16 c2. c4 c4. c8 c8 c8 c8. c16 c2. c4 c4. c8 c8 c8 c8. c16 c2. c4 c4. c8 c8 c8 c8 c8 c4.  s4 c8 c8 c8 c4.  s4 c8 c8 c8 c2. c4 c4. c8 c8 c8 c8. c16 c2.
}

BBHDGxFAMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 66
    \time 3/4
    \key as \major
    \partial 4
    
}
BBHDGxFAMusicRHA = \relative c'{ \BBHDGxFAMusicGlobal \clef "treble"
    c'8. c16 |  \nbp c4. c8 bes aes | %2
\nbp ees4 aes \lbp aes8 c | %3
\nbp bes4. g8 aes bes | %4
\nbp c2 \lbp c8. c16 | %5
\nbp des4. c8 bes aes | %6
\nbp c4 bes \lbp bes8 bes | %7
\nbp bes4. f8 g aes | %8
\nbp g2 \lbp f8 ees | %9
\nbp aes4. bes8 aes f | %10
\nbp ees4 aes \lbp aes8 bes | %11
\nbp c4. aes8 des c | %12
\nbp bes2 \lbp c8 des | %13
\nbp ees4. c8 bes aes | %14
\nbp bes4 aes \lbp g8 f | %15
\nbp ees aes c4 bes | %16
\nbp c2 \lbp c8 des | %17
\nbp ees4. c8 bes aes | %18
\nbp bes4 aes \lbp g8 f | %19
\nbp ees aes c4 bes \nbp aes2 \he
}
BBHDGxFAMusicRHB = \relative c'{ \BBHDGxFAMusicGlobal \clef "treble"
    ees8. ees16 | ees4. ees8 des c | %2
c4 c c8 ees | ees4. ees8 ees ees | %4
ees2 ees8. ees16 | f4. ees8 des c | %6
ees4 ees ees8 ees | d4. d8 ees f | %8
ees2 des8 des | c4. des8 c des | %10
c4 c ees8 ees | ees4. c8 f ees | %12
ees2 ees8 ees | aes4. ees8 ees ees | %14
des4 f ees8 des | c c ees4 ees | %16
ees2 ees8 ees | aes4. aes8 g f | %18
f4 f ees8 des | c ees aes4 g ees2
}
BBHDGxFAMusicRH =  \partCombine #'(2 . 20)  \BBHDGxFAMusicRHA \BBHDGxFAMusicRHB
BBHDGxFAMusicLHA = \relative c{ \BBHDGxFAMusicGlobal \clef "bass"
    aes'8. aes16 | aes4. aes8 aes aes | %2
aes4 ees ees8 aes | g4. bes8 aes g | %4
aes2 \pcAO aes8. \pcAO aes16 \pcAO | %5
aes4. \pcAO aes8 g aes | aes4 g g8 g | %7
f4. bes8 bes bes | bes2 bes8 g | %9
aes4. aes8 aes aes | %10
aes4 ees aes8 g \pcAp | %11
aes4. aes8  aes  aes \pcAu | %12
g2 \pcAO aes8 bes | c4. aes8 g aes | %14
f4 aes aes8 aes | aes aes aes4 g \pcAO | %16
aes2 \pcAO aes8 bes | c4. ees8 des c | %18
des4 des aes8 aes | aes c ees4 des c2
}
BBHDGxFAMusicLHB = \relative c{ \BBHDGxFAMusicGlobal \clef "bass"
    aes8. aes16 | aes4. aes8 aes aes | %2
aes4 aes aes8 aes | ees'4. des8 c bes | %4
aes2 aes'8. aes16 | aes4. aes8 ees f | %6
ees4 ees ees8 ees | bes4. bes8 bes bes | %8
ees2 ees8 ees | aes,4. aes8 aes aes | %10
aes4 aes c8 ees | aes4. aes8 aes aes | %12
ees2 aes8 aes | aes4. aes,8 bes c | %14
des4 des des8 des | ees ees ees4 ees | %16
aes2 aes8 aes | aes4. aes8 ees f | %18
des4 des des8 des | ees ees ees4 ees aes,2
}
BBHDGxFAMusicLH =  \partCombine #'(2 . 20)  \BBHDGxFAMusicLHA \BBHDGxFAMusicLHB
BBHDGxFAMusicLyrics = \relative c''''{ \BBHDGxFAMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8. c16 c4. c8 c8 c8 c4 c4 c8 c8 c4. c8 c8 c8 c2 c8. c16 c4. c8 c8 c8 c4 c4 c8 c8 c4. c8 c8 c8 c2 c8 c8 c4. c8 c8 c8 c4 c4 c8 c8 c4. c8 c8 c8 c2 c8 c8 c4. c8 c8 c8 c4 c4 c8 c8 c8 c8 c4 c4 c2 c8 c8 c4. c8 c8 c8 c4 c4 c8 c8 c8 c8 c4 c4 c2
}

BBHDHxBFDMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 100
    \time 4/4
    \key es \major
    \partial 4
    
}
BBHDHxBFDMusicRHA = \relative c'{ \BBHDHxBFDMusicGlobal \clef "treble"
    g'4 |  \nbp g g g g | %2
g4. ees8 ees4 \lbp ees | %3
\nbp aes aes g f | %4
\nbp bes2. \lbp bes4 | %5
\nbp bes bes c g | bes aes g \lbp f | %7
\nbp g ees ees d \nbp ees2. \he
}
BBHDHxBFDMusicRHB = \relative c'{ \BBHDHxBFDMusicGlobal \clef "treble"
    ees4 | ees ees ees ees | %2
ees4. bes8 bes4 bes | c ees d d | %4
ees2. d4 | ees ees e e | g f c c | %7
bes bes c bes bes2.
}
BBHDHxBFDMusicRH =  \partCombine #'(2 . 20)  \BBHDHxBFDMusicRHA \BBHDHxBFDMusicRHB
BBHDHxBFDMusicLHA = \relative c{ \BBHDHxBFDMusicGlobal \clef "bass"
    bes'4 | bes bes bes bes | bes4. g8 g4 g | %3
f c' \pcAO bes bes | bes2. aes4 | %5
g g g c | c c bes aes | ees g aes aes g2.
}
BBHDHxBFDMusicLHB = \relative c{ \BBHDHxBFDMusicGlobal \clef "bass"
    ees4 | ees ees d c | bes4. bes8 bes4 bes | %3
bes bes bes' aes | g2. f4 | ees des c c | %6
f f, g aes | bes bes bes bes ees2.
}
BBHDHxBFDMusicLH =  \partCombine #'(2 . 20)  \BBHDHxBFDMusicLHA \BBHDHxBFDMusicLHB
BBHDHxBFDMusicLyrics = \relative c''''{ \BBHDHxBFDMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c4 c4 c4 c4 c4. c8 c4 c4 c4 c4 c4 c4 c2. c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c2.
}

BBHDIxCEHMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 62
    \time 3/4
    \key bes \major
    \partial 4.
    
}
BBHDIxCEHMusicRHA = \relative c'{ \BBHDIxCEHMusicGlobal \clef "treble"
    d8 ees e | f4. d'8 d8. c16 | %2
\nbp bes4. \lbp f8 d f | a4. a8 c8. g16 | %4
\nbp g4 ( \set Score.tempoHideNote = ##t \tempo 4 = 31  \fpre f8) \fpost \set Score.tempoHideNote = ##t \tempo 4 = 62   \lbp d ees e | %5
f4. d'8 d8. c16 | %6
\nbp bes4. \lbp bes8 bes bes | %7
bes4 r8 d, d8. c16 \pcAO | %8
\nbp bes4. \cbp bes'8 \postCho a8. g16 | %9
f4. d8 f8. \pcAO d16 | %10
\nbp f4. \lbp a8 g8. f16 | %11
a4. g8 f8. g16 \pcAO | %12
\nbp d4. \lbp bes'8 a8. g16 | %13
f4. \pcAO d8 f8. ges16 | %14
\nbp g4. \lbp bes8 bes bes | %15
\set Score.tempoHideNote = ##t \tempo 4 = 31  \fpre f'4. \fpost \set Score.tempoHideNote = ##t \tempo 4 = 62   d8 d8. c16 \nbp bes4. \he
}
BBHDIxCEHMusicRHB = \relative c'{ \BBHDIxCEHMusicGlobal \clef "treble"
    bes8 c cis | d4. f8 f8. ees16 | %2
d4. d8 bes d | ees4. ees8 ees8. ees16 | %4
ees4 (d8) bes c des | d4. f8 f8. ees16 | %6
d4. d8 des des | d4 r8 bes a8. a16 | %8
bes4. d8 d8. d16 | d4. bes8 d8. d16 | %10
ees4. ees8 ees8. ees16 | %11
ees4. ees8 ees8. ees16 | d4. d8 d8. d16 | %13
d4. d8 d8. d16 | ees4. g8 f ees | %15
f4. f8 f8. ees16 d4.
}
BBHDIxCEHMusicRH =  \partCombine #'(2 . 20)  \BBHDIxCEHMusicRHA \BBHDIxCEHMusicRHB
BBHDIxCEHMusicLHA = \relative c{ \BBHDIxCEHMusicGlobal \clef "bass"
    f8 f f | bes4. bes8 a8. a16 | %2
bes4. bes8 f bes | c4. c8 a8. a16 | %4
bes4 (bes8) f8 f g | f4. bes8 a8. a16 | %6
bes4. bes8 bes bes | bes4 r8 f f8. ees16 | %8
d4. f8 f8. f16 | bes4. f8 bes8. bes16 | %10
a4. c8 bes8. a16 | c4. c8 a8. a16 | %12
bes4. f8 f8. f16 | bes4. f8 bes8. bes16 | %14
bes4. ees8 d c | bes4. bes8 a8. a16 f4.
}
BBHDIxCEHMusicLHB = \relative c{ \BBHDIxCEHMusicGlobal \clef "bass"
    bes8 bes bes | bes4. bes8 f'8. f16 | %2
bes,4. bes8 bes bes | f'4. f8 f8. f16 | %4
bes,4 (\fpre bes8) \fpostbelow bes8 bes bes | bes4. bes8 f'8. f16 | %6
g4. g8 ges ges | f4 r8 f, f8. f16 | %8
bes4. bes8 bes8. bes16 | %9
bes4. bes8 bes8. bes16 | c4. f8 f8. f16 | %11
f4. f8 f8. f16 | bes,4. bes8 bes8. bes16 | %13
bes4. bes8 bes8. bes16 | %14
ees4. bes'8 bes bes | \fpre f4. \fpostbelow f8 f8. f16 bes,4.
}
BBHDIxCEHMusicLH =  \partCombine #'(2 . 20)  \BBHDIxCEHMusicLHA \BBHDIxCEHMusicLHB
BBHDIxCEHMusicLyrics = \relative c''''{ \BBHDIxCEHMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8 c8 c8 c4. c8 c8. c16 c4. c8 c8 c8 c4. c8 c8. c16 c4  s8 c8 c8 c8 c4. c8 c8. c16 c4. c8 c8 c8 c4  s8 c8 c8. c16 c4. c8 c8. c16 c4. c8 c8. c16 c4. c8 c8. c16 c4. c8 c8. c16 c4. c8 c8. c16 c4. c8 c8. c16 c4. c8 c8 c8 c4. c8 c8. c16 c4.
}

BBHEZxBDDMoreSylMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 92
    \time 4/4
    \key g \major
    \partial 4
    
}
BBHEZxBDDMoreSylMusicRHA = \relative c'{ \BBHEZxBDDMoreSylMusicGlobal \clef "treble"
    g'8 [a] |  \nbp b4. b8 a4 \pcAO g | %2
a g e \lbp g \pcAO |  \nbp d g g b | %4
\nbp a2. \lbp g8 [a] | %5
\nbp b4. b8 a4 g | a g e \lbp g \pcAO | %7
\nbp d b' b4. a8 |  \nbp g2. \lbp g4 | %9
\nbp a4. a8 b4 d | e4. e8 d4 \lbp b | %11
\nbp d b a g |  \nbp a2. \lbp g8 (a) | %13
\nbp b4. b8 a4 g | a g e \lbp g \pcAO | %15
\nbp d b' b4. a8 \nbp g2. \he
}
BBHEZxBDDMoreSylMusicRHB = \relative c'{ \BBHEZxBDDMoreSylMusicGlobal \clef "treble"
    d4 | g4. g8 fis4 g | e e c c | d d d d | %4
d2. d8 [d] | d4. d8 c4 b | e e c c | %7
d d d4. c8 | b2. d4 | fis4. fis8 g4 g | %10
g4. g8 g4 g | g d d cis | d2. d8 (d) | %13
d4. d8 c4 b | e e c c | d d d4. c8 b2.
}
BBHEZxBDDMoreSylMusicRH =  \partCombine #'(2 . 20)  \BBHEZxBDDMoreSylMusicRHA \BBHEZxBDDMoreSylMusicRHB
BBHEZxBDDMoreSylMusicLHA = \relative c{ \BBHEZxBDDMoreSylMusicGlobal \clef "bass"
    b'8 [c] | d4. d8 c4 b | c c g e | %3
g g g g | fis2. g8 [fis] | %5
g4. g8 fis4 g | g c g e | g g g4. fis8 | %8
g2. b4 | d4. d8 d4 b | c4. c8 b4 d | %11
b \pcAO g a a | fis2. g8 (fis) | %13
g4. g8 fis4 g | g c g e | g g g4. fis8 g2.
}
BBHEZxBDDMoreSylMusicLHB = \relative c{ \BBHEZxBDDMoreSylMusicGlobal \clef "bass"
    g'4 | g4. g8 d4 e | c c c c | b b b g | %4
d'2. b8 [a] | g4. g8 d'4 e | c c c c | %7
b g d'4. d8 | g,2. g'4 | d4. d8 g4 g | %10
c,8 [d e] fis g4 g | g g fis e | %12
d2~d8 [c] b (a) | g4. g8 d'4 e | %14
c c c c | b g d'4. d8 g,2.
}
BBHEZxBDDMoreSylMusicLH =  \partCombine #'(2 . 20)  \BBHEZxBDDMoreSylMusicLHA \BBHEZxBDDMoreSylMusicLHB
BBHEZxBDDMoreSylMusicLyrics = \relative c''''{ \BBHEZxBDDMoreSylMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8  s8 c4. c8 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c2. c8  s8 c4. c8 c4 c4 c4 c4 c4 c4 c4 c4 c4. c8 c2. c4 c4. c8 c4 c4 c4. c8 c4 c4 c4 c4 c4 c4 c2. c8 c8 c4. c8 c4 c4 c4 c4 c4 c4 c4 c4 c4. c8 c2.
}

BBHEAxBCFMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 64
    \time 4/4
    \key f \major
    \partial 4.
    
}
BBHEAxBCFMusicRHA = \relative c'{ \BBHEAxBCFMusicGlobal \clef "treble"
    a'8 gis a \pcAO | c,4. f8 g f c cis | %2
\nbp d2~d8 \lbp bes' a bes | %3
e,4. d8 d d e d \nbp | %4
c2~c8 \lbp a' gis a \pcAO | %5
c,4. f8 g f a c \nbp | bes2~bes8 \lbp f f g | %7
a4. f8 d d e f | %8
\nbp g2~g8 \pcAO \lbp c,8 f g | %9
a4. f8 a f \pcAO a c | %10
\nbp bes2~bes8 \lbp d c bes | %11
a4. f8 e f \set Score.tempoHideNote = ##t \tempo 4 = 32  \fpre a \fpost \set Score.tempoHideNote = ##t \tempo 4 = 64   g f2~f8 \he
}
BBHEAxBCFMusicRHB = \relative c'{ \BBHEAxBCFMusicGlobal \clef "treble"
    f8 f f | c4. c8 c c a a | %2
bes2~bes8 d c d | %3
c4. bes8 bes bes bes bes | a2~a8 f' f f | %5
c4. c8 c c f ees | d2~d8 d d des | %7
c4. c8 b b b b | bes2~bes8 c8 c c | %9
f4. c8 f c a' ees | d2~d8 f ees d | %11
c4. c8 c c e e c2~c8
}
BBHEAxBCFMusicRH =  \partCombine #'(2 . 20)  \BBHEAxBCFMusicRHA \BBHEAxBCFMusicRHB
BBHEAxBCFMusicLHA = \relative c{ \BBHEAxBCFMusicGlobal \clef "bass"
    c'8 b c | a4. a8 bes a f f | %2
f2~f8 f g g | g4. g8 g g g e | %4
f2~f8 c' b c | a4. a8 bes a c f, | %6
f2~f8 bes bes f | \pcAO f4. a8 g f e d | %8
e2~e8 a a bes | c4. a8 c a c f, | %10
f2~f8 bes bes f | %11
f4. a8 g a c  bes a2~a8
}
BBHEAxBCFMusicLHB = \relative c{ \BBHEAxBCFMusicGlobal \clef "bass"
    f8 f f | f4. f8 f f f, f | %2
bes2~bes8 bes g g | c4. c8 c c c c | %4
f,2~f8 f' f f | f4. f8 f f f a, | %6
bes2~bes8 bes bes bes | %7
f'4. f,8 g g g g | c2~c8 f f f | %9
f4. f8 f f f a, | bes2~bes8 bes bes bes | %11
c4. c8 c c \fpre c \fpostbelow c f2~f8
}
BBHEAxBCFMusicLH =  \partCombine #'(2 . 20)  \BBHEAxBCFMusicLHA \BBHEAxBCFMusicLHB
BBHEAxBCFMusicLyrics = \relative c''''{ \BBHEAxBCFMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8 c8 c8 c4. c8 c8 c8 c8 c8 c4.  s4 c8 c8 c8 c4. c8 c8 c8 c8 c8 c4.  s4 c8 c8 c8 c4. c8 c8 c8 c8 c8 c4.  s4 c8 c8 c8 c4. c8 c8 c8 c8 c8 c4  s4. c8 c8 c8 c4. c8 c8 c8 c8 c8 c2  s8 c8 c8 c8 c4. c8 c8 c8 c8 c8 c2
}

BBHEBxAZGMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 74
    \time 6/8
    \key g \major
    \partial 8
    
}
BBHEBxAZGMusicRHA = \relative c'{ \BBHEBxAZGMusicGlobal \clef "treble"
    \pcAO d8 |  \nbp b'4 b8 b4 a8 | %2
\nbp a g2 \lbp g8 |  \nbp g4 a8 g4 e8 | %4
\nbp d4.~d4 \lbp d8 | %5
\nbp b'4 b8 b4 a8 | a g2 \lbp b8 | %7
\nbp b4 a8 cis4 a8 | %8
\nbp d4.~d4 \lbp d8 | %9
\nbp a4 b8 c4 c8 | c b2 \lbp b8 | %11
\nbp b4 fis8 b4 a8 | %12
\nbp g4.~g4 \lbp g8 | %13
\nbp g4 g8 g4 e8 |  \nbp e d2 \lbp g8 | %15
\nbp b4 b8 b4 a8 | %16
\nbp g4.~g4 \cbp b8 \postCho | %17
\nbp d4 d8 d4 b8 | a g2 \lbp b8 | %19
\nbp d4 d8 d4 b8 | %20
\nbp a4.~a4 \pcAO \lbp d,8 | %21
\nbp b'4 b8 b4 d8 | d c2 \lbp a8 | %23
\nbp g4 b8 b4 a8 \nbp g4.~g4 \he
}
BBHEBxAZGMusicRHB = \relative c'{ \BBHEBxAZGMusicGlobal \clef "treble"
    d8 | d4 d8 d4 c8 | c b2 b8 | %3
c4 c8 c4 c8 | b4.~b4 b8 | d4 d8 d4 c8 | %6
c b2 d8 | d4 d8 g4 g8 | %8
fis4.~fis4 fis8 | fis4 fis8 fis4 fis8 | %10
fis g2 d8 | dis4 dis8 dis4 dis8 | %12
e4.~e4 e8 | e4 e8 e4 c8 | c b2 b8 | %15
d4 d8 d4 c8 | b4.~b4 g'8 | g4 g8 g4 g8 | %18
fis d2 g8 | g4 g8 g4 g8 | %20
fis4.~fis4 d8 | d4 d8 d4 f8 | %22
e e2 e8 | d4 d8 d4 c8 b4.~b4
}
BBHEBxAZGMusicRH =  \partCombine #'(2 . 20)  \BBHEBxAZGMusicRHA \BBHEBxAZGMusicRHB
BBHEBxAZGMusicLHA = \relative c{ \BBHEBxAZGMusicGlobal \clef "bass"
    d'8 | g,4 g8 g4 fis8 | fis d2 d8 | %3
e4 e8 e4 g8 | g4.~g4 g8 | %5
g4 g8 g4 fis8 | fis d2 g8 | %7
fis4 fis8 a4 a8 | a4.~a4 a8 | %9
c4 b8 a4 a8 | a \pcAp g2 \pcAu g8 | %11
fis4 fis8 fis4 b8 | b4.~b4 b8 | %13
c4 c8 c4 g8 | g g2 g8 | g4 g8 g4 fis8 | %16
g4.~g4 \pcAO g8 | b4 b8 b4 d8 | %18
c b2 d8 | b4 b8 b4 d8 | %20
d4.~d4 fis,8 | g4 g8 g4 g8 | %22
g g2 c8 | b4 g8 g4 fis8 g4.~g4
}
BBHEBxAZGMusicLHB = \relative c{ \BBHEBxAZGMusicGlobal \clef "bass"
    d8 | g,4 g8 g4 d'8 | d g,2 g8 | %3
c4 c8 c4 c8 | g4.~g4 g8 | g4 g8 g4 d'8 | %6
d g,2 g8 | a4 a8 a4 cis8 | %8
d4.~d4 d8 | d4 d8 d4 d8 | d g2 g,8 | %11
b4 b8 b4 b8 | e4.~e4 e8 | c4 c8 c4 c8 | %14
g g2 g8 | d'4 d8 d4 d8 | g,4.~g4 g'8 | %17
g4 g8 g4 g8 | d g2 g8 | g4 g8 g4 g8 | %20
d4.~d4 d8 | g,4 g8 g4 b8 | c c2 c8 | %23
d4 d8 d4 d8 g,4.~g4
}
BBHEBxAZGMusicLH =  \partCombine #'(2 . 20)  \BBHEBxAZGMusicLHA \BBHEBxAZGMusicLHB
BBHEBxAZGMusicLyrics = \relative c''''{ \BBHEBxAZGMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8 c4 c8 c4 c8 c8 c2 c8 c4 c8 c4 c8 c4.  s4 c8 c4 c8 c4 c8 c8 c4  s4 c8 c4 c8 c4 c8 c4.  s4 c8 c4 c8 c4 c8 c8 c8  s4. c8 c4 c8 c4 c8 c4.  s4 c8 c4 c8 c4 c8 c8 c2 c8 c4 c8 c4 c8 c4.  s4 c8 c4 c8 c4 c8 c8 c4  s4 c8 c4 c8 c4 c8 c4.  s4 c8 c4 c8 c4 c8 c8 c8  s4. c8 c4 c8 c4 c8 c4.
}

BBHECxBHFMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 90
    \time 4/4
    \key des \major
    \partial 4
    
}
BBHECxBHFMusicRHA = \relative c'{ \BBHECxBHFMusicGlobal \clef "treble"
    aes'4 | %1
\nbp des4. c8 bes8. f16 aes8. ges16 | %2
\nbp ges2. \lbp aes4 | %3
\nbp c4. bes8 aes8. ges16 f8. ges16 | %4
\nbp aes2. \lbp aes4 | %5
\nbp des4. des8 c8. des16 c8. bes16 | %6
\nbp bes2. \lbp bes4 | %7
\nbp bes4. bes8 c8. des16 des8. c16 | %8
\nbp c2. \lbp aes4 | %9
\nbp des8. des16 des8 des f,4 ees \pcAO | %10
\nbp des2. \cbp \pcAp aes'4 \postCho | %11
\nbp ges2.  ees'4 | %12
\nbp des2. \pcAu \lbp aes4 | %13
\nbp c8. bes16 aes8 ges f4 ges | %14
\nbp aes2. \pcAp \lbp aes4  | %15
\nbp ges2. ees'4 | %16
\nbp des2. \pcAu \lbp des,4 | %17
\nbp ees8 ees f ges f4 ees \nbp des2. \he
}
BBHECxBHFMusicRHB = \relative c'{ \BBHECxBHFMusicGlobal \clef "treble"
    f4 | f4. f8 f8. des16 ges8. c,16 | %2
c2. ges'4 | %3
ges4. ges8 f8. ees16 des8. ees16 | f2. f4 | %5
f4. f8 f8. aes16 aes8. ges16 | ges2. ges4 | %7
g4. g8 g8. g16 ges8. ges16 | ges2. ges4 | %9
f8. f16 f8 f des4 c | des2. r4 | %11
r8.   des16 c8. bes16 aes4  r4 | r8. f'16 f8. ees16 des4 f | %13
aes8. ges16 f8 ees des4 ees | f2. r4 | %15
r8.   des16 c8. bes16 aes4   r4 | %16
r8. f'16 f8. ees16 des4 aes | %17
bes8 bes bes bes des4 aes aes2.
}
BBHECxBHFMusicRH =  \partCombine #'(2 . 20)  \BBHECxBHFMusicRHA \BBHECxBHFMusicRHB
BBHECxBHFMusicLHA = \relative c{ \BBHECxBHFMusicGlobal \clef "bass"
    aes'4 | aes4. des8 des8. aes16 c8. aes16 | %2
aes2. aes4 | %3
aes4. aes8 aes8. aes16 aes8. aes16 | %4
des2. aes4 | %5
aes4. aes8 des8. des16 des8. des16 | %6
des2. des4 | %7
ees4. ees8 ees8. ees16 ees8. ees16 | %8
ees2. c4 | des8. des16 aes8 aes aes4 ges | %10
f2. r4 | r8. des'16 c8. bes16 aes4 r | %12
r8. aes16 aes8. ges16 f4 aes | %13
aes8. aes16 aes8 aes aes aes aes aes | %14
des2. r4 | r8. des16 c8. bes16 aes4 r | %16
r8. aes16 aes8. ges16 f4 f | %17
ges8 ges aes bes aes8. aes16 ges8 ges f2.
}
BBHECxBHFMusicLHB = \relative c{ \BBHECxBHFMusicGlobal \clef "bass"
    des4 | des4. des8 des8. des16 ees8. ees16 | %2
aes,2. aes4 | %3
aes4. aes8 aes8. aes16 des8. des16 | %4
des2. des4 | %5
des4. des8 des8. f16 ges8. ges16 | %6
ges2. ges4 | %7
ees4. ees8 ees8. ees16 aes8. aes16 | %8
aes2. aes4 | %9
des,8. des16 des8 des aes4 aes | des2. r4 | %11
r8. aes16 aes8. aes16 aes4 r | %12
r8. des16 des8. des16 des4 des | %13
aes8. aes16 aes8 aes des des des des | %14
des2. r4 | r8. aes16 aes8. aes16 aes4 r | %16
r8. des16 des8. des16 des4 des | %17
ges,8 ges ges ges aes8. aes16 aes8 aes des2.
}
BBHECxBHFMusicLH =  \partCombine #'(2 . 20)  \BBHECxBHFMusicLHA \BBHECxBHFMusicLHB
BBHECxBHFMusicLyrics = \relative c''''{ \BBHECxBHFMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c4. c8 c8. c16 c8. c16 c2. c4 c4. c8 c8. c16 c8. c16 c2. c4 c4. c8 c8. c16 c8. c16 c2. c4 c4. c8 c8. c16 c8. c16 c2. c4 c8. c16 c8 c8 c4 c4 c2. c4 c2. c4 c2. c4 c8. c16 c8 c8 c4 c4 c2. c4 c2. c4 c2. c4 c8 c8 c8 c8 c4 c4 c2.
}

BBHEDxBAGMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 60
    \time 3/4
    \key des \major
    \partial 4.
    
}
BBHEDxBAGMusicRHA = \relative c'{ \BBHEDxBAGMusicGlobal \clef "treble"
    aes'8 f aes | des4. des8 c bes | %2
\nbp aes4. \lbp f8 aes bes | %3
aes4. ges8 ees bes' | %4
\nbp aes4. \pcAO \lbp des,8 f ges | %5
aes4. aes8 bes aes \pcAO | %6
\nbp ges4. \lbp ges8 aes ges \pcAO | %7
f4. ges8 f ees \pcAO | %8
\nbp des4. \cbp f8 \postCho ges aes | %9
bes4. des8 des bes | %10
\nbp aes4. \lbp f8 aes des | %11
c4. c8 des bes | %12
\nbp aes4. \lbp aes8 bes c | %13
des4. aes8 f \pcAO des | %14
\nbp bes'4. \lbp des8 c bes | %15
aes4. aes8 ges \pcAO c, \pcAO \nbp des4. \he
}
BBHEDxBAGMusicRHB = \relative c'{ \BBHEDxBAGMusicGlobal \clef "treble"
    f8 des f | f4. f8 aes ges | f4. des8 f f | %3
ees4. ees8 c c | des4. des8 des ees | %5
f4. f8 ges f | ges4. des8 des des | %7
f4. c8 c c | des4. des8 ees f | %9
ges4. ges8 ges ges | f4. des8 f f | %11
ees4. aes8 g g | c,4. ges'8 ges ges | %13
f4. f8 des des | des4. bes'8 aes ges | %15
f4. des8 c c des4.
}
BBHEDxBAGMusicRH =  \partCombine #'(2 . 20)  \BBHEDxBAGMusicRHA \BBHEDxBAGMusicRHB
BBHEDxBAGMusicLHA = \relative c{ \BBHEDxBAGMusicGlobal \clef "bass"
    des'8 aes des | aes4. des8 des des | %2
des4. aes8 des des | c4. aes8 aes ges | %4
f4. \pcAO f8 aes aes | %5
des4. des8 des b \pcAO | %6
bes4. bes8 bes bes | %7
des4. bes8 aes ges \pcAO | %8
f4. aes8 aes des | des4. bes8 bes des | %10
des4. aes8 des aes | aes4. ees'8 ees des | %12
c4. c8 \pcAO aes \pcAO aes | %13
aes4. des8 aes \pcAO f | %14
des'4. des8 des des | %15
des4. f,8 ees \pcAO ges \pcAO f4.
}
BBHEDxBAGMusicLHB = \relative c{ \BBHEDxBAGMusicGlobal \clef "bass"
    des8 des des | des4. des8 ges ges | %2
des4. des8 des des | aes4. aes8 aes aes | %4
des4. f8 des des | des4. des8 des des | %6
bes'4. ges8 ges ges | aes4. aes,8 aes aes | %8
f'4. des8 des des | ges4. ges8 ges ges | %10
des4. des8 des des | ees4. ees8 ees ees | %12
aes4. aes8 aes aes | des,4. des8 des f | %14
ges4. ges8 ges ges | aes4. aes,8 aes ges' f4.
}
BBHEDxBAGMusicLH =  \partCombine #'(2 . 20)  \BBHEDxBAGMusicLHA \BBHEDxBAGMusicLHB
BBHEDxBAGMusicLyrics = \relative c''''{ \BBHEDxBAGMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4.
}

BBHEExBAAMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 84
    \time 4/4
    \key des \major
    \partial 4
    
}
BBHEExBAAMusicRHA = \relative c'{ \BBHEExBAAMusicGlobal \clef "treble"
    \pcAO des4 | %1
\nbp f4. ees8 \pcAO des des' c bes | %2
\nbp aes2. \lbp aes4 | %3
\nbp bes4. bes8 aes f f ees | %4
\nbp ees2. \pcAO \lbp ees4 | %5
\nbp ges4. f8 bes aes c des | %6
\nbp ees2. \lbp des4 | %7
\nbp c4. c8 des c bes c | %8
\nbp aes2. \cbp aes4 \postCho | %9
\nbp des4. aes8 ges f ees f | %10
\nbp des2. \lbp f4 | %11
\nbp f4. bes8 f ees des ees | %12
\nbp f2. \lbp f4 | %13
\nbp f4. ges8 g aes bes8. aes16 | %14
\nbp aes2. \lbp bes4 | %15
\nbp aes4. bes8 c des ees8. des16 \nbp des2. \he
}
BBHEExBAAMusicRHB = \relative c'{ \BBHEExBAAMusicGlobal \clef "treble"
    des4 | des4. c8 des des ges ges | %2
des2. f4 | des4. des8 des des des des | %4
c2. ees4 | des4. des8 des des ges f | %6
ges2. f4 | ees4. ees8 ees ees des ees | %8
c2. ges'4 | f4. f8 des des c c | %10
bes2. des4 | des4. des8 des bes bes des | %12
c2. c4 | des4. des8 ees ees des8. c16 | %14
c2. ges'4 | ges4. ges8 ges f ges8. f16 f2.
}
BBHEExBAAMusicRH =  \partCombine #'(2 . 20)  \BBHEExBAAMusicRHA \BBHEExBAAMusicRHB
BBHEExBAAMusicLHA = \relative c{ \BBHEExBAAMusicGlobal \clef "bass"
    f4 | aes4. ges8 f bes aes ges | f2. aes4 | %3
ges4. ges8 f aes bes g | aes2. c4 | %5
bes4. \pcAO aes8 bes des aes aes | %6
aes2. aes4 | aes4. aes8 g aes g g | %8
aes2. c4 | aes4. aes8 bes aes aes f | %10
f2. bes4 | bes4. f8 f ges ges bes | %12
a2. a4 | bes4. bes8 bes c g8. aes16 | %14
aes2. c4 | c4. c8 aes aes c8. des16 des2.
}
BBHEExBAAMusicLHB = \relative c{ \BBHEExBAAMusicGlobal \clef "bass"
    des4 | des4. des8 des des des des | %2
des2. des4 | des4. des8 des des bes ees | %4
aes,2. aes'4 | ges4. aes8 ges f ees des | %6
c2. des4 | ees4. ees8 ees ees ees ees | %8
aes,2. aes'4 | des,4. des8 des des aes a | %10
bes2. bes4 | bes4. bes8 bes ges ges ges | %12
f2. f'4 | %13
bes,4. ges'8 ees ees ees8. aes,16 | %14
aes2. aes4 | %15
aes4. aes8 aes aes aes8. des16 des2.
}
BBHEExBAAMusicLH =  \partCombine #'(2 . 20)  \BBHEExBAAMusicLHA \BBHEExBAAMusicLHB
BBHEExBAAMusicLyrics = \relative c''''{ \BBHEExBAAMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c4. c8 c8 c8 c8 c8 c2. c4 c4. c8 c8 c8 c8 c8 c2. c4 c4. c8 c8 c8 c8 c8 c2. c4 c4. c8 c8 c8 c8 c8 c2. c4 c4. c8 c8 c8 c8 c8 c2. c4 c4. c8 c8 c8 c8 c8 c2. c4 c4. c8 c8 c8 c8. c16 c2. c4 c4. c8 c8 c8 c8. c16 c2.
}

BBHEFxCADMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 124
    \time 3/4
    \key des \major
    \partial 4
}
BBHEFxCADMusicRHA = \relative c'{ \BBHEFxCADMusicGlobal \clef "treble"
    aes'4 |  \nbp aes2 aes4 | aes2 g4 | %3
ges2 ges4 |  \nbp f2 \lbp aes4 | %5
\nbp des2 des4 | des2 ees4 | %7
\nbp \set Score.tempoHideNote = ##t \tempo 4 = 62  \fpre c2 \fpost \set Score.tempoHideNote = ##t \tempo 4 = 124    \lbp c4 |  \nbp des2 des4 | %9
c2 bes4 | aes2 g4 | %11
\nbp ges2 \lbp f4 |  \nbp f2 ees4 | %13
bes'2 \pcAO c,4 \nbp \set Score.tempoHideNote = ##t \tempo 4 = 62  \fpre des2 \fpost \set Score.tempoHideNote = ##t \tempo 4 = 124   \he
}
BBHEFxCADMusicRHB = \relative c'{ \BBHEFxCADMusicGlobal \clef "treble"
    des4 | des2 des4 | des2 des4 | %3
des2 c4 | des2 des4 | f2 f4 | g2 g4 | %7
aes2 aes4 | aes2 aes4 | aes2 e4 | %10
f2 e4 | ees2 des4 | des2 bes4 | %13
ees2 c4 aes2
}
BBHEFxCADMusicRH =  \partCombine #'(2 . 20)  \BBHEFxCADMusicRHA \BBHEFxCADMusicRHB
BBHEFxCADMusicLHA = \relative c{ \BBHEFxCADMusicGlobal \clef "bass"
    aes'4 | aes2 aes4 | bes2 bes4 | %3
aes2 aes4 | aes2 aes4 | bes2 des4 | %6
des2 des4 | ees2 ees4 | des2 des4 | %9
ees2 des4 | des2 des4 \pcAp | %11
c2 \pcAu ces4 | bes2 ges4 | ges2 ges4 f2
}
BBHEFxCADMusicLHB = \relative c{ \BBHEFxCADMusicGlobal \clef "bass"
    f4 | f2 f4 | ees2 ees4 | aes,2 aes4 | %4
des2 f4 | bes,2 bes'4 | bes2 bes4 | %7
\fpre aes2 \fpostbelow ges4 | f2 f4 | ges2 g4 | %10
aes2 bes4 | c2 aes4 | ges2 ees4 | %13
ges,2 aes4 \fpre des2 \fpostbelow
}
BBHEFxCADMusicLH =  \partCombine #'(2 . 20)  \BBHEFxCADMusicLHA \BBHEFxCADMusicLHB
BBHEFxCADMusicLyrics = \relative c''''{ \BBHEFxCADMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c2 c4 c2 c4 c2 c4 c2 c4 c2 c4 c2 c4 c2 c4 c2 c4 c2 c4 c2 c4 c2 c4 c2 c4 c2 c4 c2
}

BBHEGxCGAMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 62
    \time 3/4
    \key des \major
    \partial 8
    
}
BBHEGxCGAMusicRHA = \relative c'{ \BBHEGxCGAMusicGlobal \clef "treble"
    f8 |  \nbp f8. ges16 aes4. des,8 | %2
c8. des16 ees4. \lbp ges8 | %3
\nbp ges8. ges16 c4. bes8 | %4
bes8. aes16 aes4. \lbp f8 | %5
\nbp f8. ees16 des4. des8 | %6
ges bes aes4. \lbp aes8 | %7
\nbp bes des f,4. \pcAO des8 | %8
f ees \pcAO des4. \cbp des'8 \postCho | %9
\nbp des8. c16 c4. bes8 | %10
bes8. aes16 aes4. \lbp des8 | %11
\nbp des8. c16 c4. bes8 | %12
aes8. g16 aes4. \lbp ges8 | %13
\nbp f8. ees16 \pcAO des4. \pcAO des8 | %14
ges bes des4. \lbp des8 | %15
\nbp c8. bes16 aes4. \pcAO des,8 f8. ees16 \pcAO des4. \he
}
BBHEGxCGAMusicRHB = \relative c'{ \BBHEGxCGAMusicGlobal \clef "treble"
    des8 | des8. ees16 f4. aes,8 | %2
aes8. aes16 c4. ees8 | %3
ees8. ees16 ges4. ges8 | %4
ges8. f16 f4. des8 | des8. c16 bes4. ces8 | %6
bes ges' f4. f8 | ges ges des4. des8 | %8
des c des4. f8 | ges8. ges16 ges4. des8 | %10
des8. des16 des4. des8 | %11
des8. ees16 ees4. ees8 | %12
ees8. ees16 ees4. ees8 | %13
des8. des16 des4. des8 | %14
des ges ges4. bes8 | aes8. ges16 f4. des8 des8. c16 des4.
}
BBHEGxCGAMusicRH =  \partCombine #'(2 . 20)  \BBHEGxCGAMusicRHA \BBHEGxCGAMusicRHB
BBHEGxCGAMusicLHA = \relative c{ \BBHEGxCGAMusicGlobal \clef "bass"
    aes'8 | aes8. aes16 des4. f,8 | %2
ees8. f16 aes4. c8 | %3
c8. c16 \pcAO aes4. c8 | %4
des8. des16 des4. aes8 | %5
aes8. ges16 f4. f8 | ges des' des4. des8 | %7
des bes \pcAO aes4. f8 | %8
aes ges f4. aes8 | bes8. aes16 aes4. ges8 | %10
ges8. f16 f4. f8 | bes8. aes16 aes4. des8 | %12
c8. bes16 c4. c8 | aes8. ges16 f4. f8 | %14
ges des' bes4. des8 | %15
des8. des16 des4. f,8 aes8. ges16 f4.
}
BBHEGxCGAMusicLHB = \relative c{ \BBHEGxCGAMusicGlobal \clef "bass"
    des8 | des8. des16 des4. des8 | %2
aes8. aes16 aes4. aes8 | %3
aes'8. aes16 aes4. aes8 | %4
des,8. des16 des4. des8 | %5
aes8. a16 bes4. aes8 | %6
ges ges des'4. des8 | ges ges aes4. aes,8 | %8
aes aes des4. des8 | %9
des8. des16 des4. des8 | %10
des8. des16 des4. des8 | %11
bes8. ees16 ees4. ees8 | %12
ees8. ees16 aes,4. aes8 | %13
des8. des16 des4. ces8 | %14
bes ges ges'4. ges8 | %15
ges8. ges16 aes4. aes,8 aes8. aes16 des4.
}
BBHEGxCGAMusicLH =  \partCombine #'(2 . 20)  \BBHEGxCGAMusicLHA \BBHEGxCGAMusicLHB
BBHEGxCGAMusicLyrics = \relative c''''{ \BBHEGxCGAMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8 c8. c16 c4. c8 c8. c16 c4. c8 c8. c16 c4. c8 c8. c16 c4. c8 c8. c16 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8. c16 c4. c8 c8. c16 c4. c8 c8. c16 c4. c8 c8. c16 c4. c8 c8. c16 c4. c8 c8 c8 c4. c8 c8. c16 c4. c8 c8. c16 c4.
}

BBHEHxBHBMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 60
    \time 3/4
    \key es \major
    \partial 4.
    
}
BBHEHxBHBMusicRHA = \relative c'{ \BBHEHxBHBMusicGlobal \clef "treble"
    ees8 ees f | g4. g8 bes8. aes16 | %2
\nbp g4 (\set Score.tempoHideNote = ##t \tempo 4 = 30  \fpre f8) \fpost \set Score.tempoHideNote = ##t \tempo 4 = 60   \lbp f f g | %3
aes4. bes16 [c] bes8 aes | %4
\nbp aes4 ( \set Score.tempoHideNote = ##t \tempo 4 = 30  \fpre g8 ) \fpost \set Score.tempoHideNote = ##t \tempo 4 = 60   \lbp ees g aes | %5
bes4. bes8 ees8. d16 | %6
\nbp d4 (  \set Score.tempoHideNote = ##t \tempo 4 = 30  \fpre c8) \fpost \set Score.tempoHideNote = ##t \tempo 4 = 60   \pcAO \lbp ees, \pcAO ees f | %7
g4. bes16 [aes] g8 f \pcAO | %8
\nbp ees4. \cbp g8 \postCho aes bes | %9
c4. f,8 g aes | %10
\nbp bes4. \lbp ees,8 f g | %11
aes4.  d,8 ees f | %12
\nbp g4. \lbp ees8 g aes | %13
bes4. bes8 ees8. d16 | %14
\nbp d4 ( \set Score.tempoHideNote = ##t \tempo 4 = 30  \fpre c8) \fpost \set Score.tempoHideNote = ##t \tempo 4 = 60   \pcAO \lbp ees, \pcAO ees f | %15
g4. bes16 [aes] g8 f \nbp ees4. \he
}
BBHEHxBHBMusicRHB = \relative c'{ \BBHEHxBHBMusicGlobal \clef "treble"
    bes8 bes bes | ees4. ees8 ees8. ees16 | %2
ees4 (d8) d d ees | d4. d8 d f | %4
f4 (ees8) bes ees d | %5
ees4. ees8 ees8. bes'16 | %6
bes4 (aes8) ees ees ees | %7
ees4. ees8 ees d | ees4. ees8 d ees | %9
ees4. d8 ees d | ees4. bes8 bes bes | %11
c4. bes8 bes d | ees4. bes8 ees d | %13
ees4. ees8 ees8. bes'16 | %14
bes4 (aes8) ees ees ees | %15
ees4. ees8 ees d bes4.
}
BBHEHxBHBMusicRH =  \partCombine #'(2 . 20)  \BBHEHxBHBMusicRHA \BBHEHxBHBMusicRHB
BBHEHxBHBMusicLHA = \relative c{ \BBHEHxBHBMusicGlobal \clef "bass"
    g'8 g aes | bes4. bes8 bes8. c16 | %2
bes4~bes8 \pcAO bes bes bes | %3
bes4. bes8 bes bes | bes4 (bes8) g bes bes | %5
bes4. bes8 bes8. ees16 | %6
ees4~ees8 c c c \pcAO | %7
bes4. bes16 [c] \pcAO bes8 aes | %8
g4. bes8 bes bes \pcAO | %9
aes4. bes8 bes bes | g4. g8 aes g | %11
aes4. \pcAO aes8 bes bes | bes4. g8 bes bes | %13
bes4. bes8 bes8. ees16 | ees4 ( ees8) c8 c ces | %15
bes4. bes16 [c] bes8 aes g4.
}
BBHEHxBHBMusicLHB = \relative c{ \BBHEHxBHBMusicGlobal \clef "bass"
    ees8 ees ees | ees4. ees8 g,8. aes16 | %2
bes4~bes8 \fpostbelow bes' aes g | %3
f4 (bes,8) bes bes d | d4  (\fpre ees8) \fpostbelow ees ees f | %5
g4. g8 g8. g16 | aes4 ~ \fpre aes8 \fpostbelow aes aes a | %7
bes4. g16 [aes] bes8 bes, | ees4. ees8 f g | %9
aes4. aes8 g f | ees4. ees8 d ees | %11
aes,4. aes'8 g f | ees4. ees8 ees f | %13
g4. g8 g,8. g16 | g4 ( \fpre aes8) \fpostbelow aes aes aes | %15
bes4. g16 [aes] bes8 bes ees4.
}
BBHEHxBHBMusicLH =  \partCombine #'(2 . 20)  \BBHEHxBHBMusicLHA \BBHEHxBHBMusicLHB
BBHEHxBHBMusicLyrics = \relative c''''{ \BBHEHxBHBMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8 c8 c8 c4. c8 c8. c16 c4  s8 c8 c8 c8 c4. c16  s16 c8 c8 c4  s8 c8 c8 c8 c4. c8 c8. c16 c4  s8 c8 c8 c8 c4. c16  s16 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8. c16 c4  s8 c8 c8 c8 c4. c16  s16 c8 c8 c4.
}

BBHEIxBIEMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 60
    \time 6/8
    \key f \major
    \partial 8
    
}
BBHEIxBIEMusicRHA = \relative c'{ \BBHEIxBIEMusicGlobal \clef "treble"
    \pcAO c8 |  \nbp a'8. a16 a8 bes \pcAO f g | %2
\nbp a4. f4 \lbp a8 | %3
\nbp c8. c16 c8 bes f g  | %4
\nbp a4.~a4  \lbp a8 | %5
\nbp g8. g16 g8 bes a g | %6
\nbp a4. c4 \lbp c8 | %7
\nbp b8. b16 b8 b a b | %8
\nbp c4.~c4 \cbp c8 \postCho | %9
\nbp d4 d8 d4 d16 d | %10
\nbp c4. a4 \lbp g8 | %11
\nbp f8. f16 f8 a g f | %12
\nbp g4.~g4 \lbp bes8 | %13
\nbp a8. a16 a8 bes bes bes | %14
\nbp c4. \set Score.tempoHideNote = ##t \tempo 4 = 30  \fpre d4 \fpost \set Score.tempoHideNote = ##t \tempo 4 = 60   \lbp d8 | %15
\nbp c8. bes16 a8 g a8. g16 \pcAp f4.~f4 \pcAu \he
}
BBHEIxBIEMusicRHB = \relative c'{ \BBHEIxBIEMusicGlobal \clef "treble"
    c8 | f8. f16 f8 f f f | f4. c4 f8 | %3
f8. f16 f8 d d des | c4.~c4 f8 | %5
e8. e16 e8 e f e | f4. f4 f8 | %7
f8. f16 f8 f f f | e4.~e4 f8 | %9
f4 f8 f4 f16 f | f4. f4 e8 | %11
d8. d16 d8 f e d | e4.~e4 g8 | %13
f8. f16 f8 e e e | f4. f4 f8 | %15
f8. f16 f8 e f8. e16 f4.~f4
}
BBHEIxBIEMusicRH =  \partCombine #'(2 . 20)  \BBHEIxBIEMusicRHA \BBHEIxBIEMusicRHB
BBHEIxBIEMusicLHA = \relative c{ \BBHEIxBIEMusicGlobal \clef "bass"
    a'8 | c8. c16 c8 d d des | %2
c4. a4 c8 | %3
a8. a16 a8 \pcAO f \pcAO f \pcAO f | %4
\pcAp f4.~f4 \pcAu c'8 | c8. c16 c8 c c c | %6
c4. a4 a8 \pcAO | g8. d'16 d8 d d d | %8
c4.~c4 a8 | bes4 bes8 bes4 bes16 bes | %10
a4. c4 bes8 | a8. a16 a8 b b b | %12
c4.~c4 c8 | c8. c16 c8 c c c | %14
c4. \pcAO bes4 bes8 | %15
a8. d16 c8 c c8. bes16 a4.~a4
}
BBHEIxBIEMusicLHB = \relative c{ \BBHEIxBIEMusicGlobal \clef "bass"
    f8 | f8. f16 f8 f f f | f4. f4 f8 | %3
f8. f16 f8 f f f | f4.~f4 f8 | %5
c8. c16 c8 c c c | f4. f4 f8 | %7
g8. g16 g8 g g g | c,4.~c4 f8 | %9
bes,4 bes8 bes4 bes16 bes | f'4. f4 c8 | %11
d8. d16 d8 g, g g | c4.~c4 e8 | %13
f8. f16 f8 g g g | a4. \fpre  bes4 \fpostbelow bes,8  | %15
c8. c16 c8 c c8. c16 f4.~f4
}
BBHEIxBIEMusicLH =  \partCombine #'(2 . 20)  \BBHEIxBIEMusicLHA \BBHEIxBIEMusicLHB
BBHEIxBIEMusicLyrics = \relative c''''{ \BBHEIxBIEMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8 c8. c16 c8 c8 c8 c8 c4. c4 c8 c8. c16 c8 c8 c8 c8 c4.  s4 c8 c8. c16 c8 c8 c8 c8 c4. c4 c8 c8. c16 c8 c8 c8 c8 c4.  s4 c8 c4 c8 c4 c16 c16 c4. c4 c8 c8. c16 c8 c8 c8 c8 c4.  s4 c8 c8. c16 c8 c8 c8 c8 c4. c4 c8 c8. c16 c8 c8 c8. c16 c16 c4.
}

BBHFZxADMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 120
    \time 3/4
    \key f \major
    \partial 4
    
}
BBHFZxADMusicRHA = \relative c'{ \BBHFZxADMusicGlobal \clef "treble"
    a'4 |  \nbp a (f) a | g (e) g | %3
\nbp f2 \lbp f4 |  \nbp f (d) f | %5
f (c) f |  \nbp e2 \lbp g4 | %7
\nbp g (e) g | f (a) c | %9
c (g) bes |  \nbp a (c) \lbp d | %11
\nbp c (a) bes | a (f) g \nbp f2 \he
}
BBHFZxADMusicRHB = \relative c'{ \BBHFZxADMusicGlobal \clef "treble"
    c4 | c2 c4 | c2 c4 | c2 c4 | d2 d4 | %5
c2 c4 | c2 c4 | c2 c4 | c2 f4 | e2 g4 | %10
f2 f4 | f2 f4 | f2 c4 c2
}
BBHFZxADMusicRH =  \partCombine #'(2 . 20)  \BBHFZxADMusicRHA \BBHFZxADMusicRHB
BBHFZxADMusicLHA = \relative c{ \BBHFZxADMusicGlobal \clef "bass"
    a'4 | a2 a4 | bes2 bes4 | a2 f4 | %4
f2 bes4 | a2 a4 | g2 e4 | e (g) bes | %8
a2 a4 | g2 c4 | c (a) bes | a (c) d | %12
c (a) bes a2
}
BBHFZxADMusicLHB = \relative c{ \BBHFZxADMusicGlobal \clef "bass"
    f4 | f2 f4 | c2 c4 | f2 a,4 | %4
bes2 bes4 | f'2 f4 | c2 c4 | c2 c4 | %8
f2 f4 | c2 e4 | f2 bes,4 | f'2 bes,4 | %12
c2 c4 f,2
}
BBHFZxADMusicLH =  \partCombine #'(2 . 20)  \BBHFZxADMusicLHA \BBHFZxADMusicLHB
BBHFZxADMusicLyrics = \relative c''''{ \BBHFZxADMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c4  s4 c4 c4  s4 c4 c2 c4 c4  s4 c4 c4  s4 c4 c2 c4 c4  s4 c4 c4  s4 c4 c4  s4 c4 c4  s4 c4 c4  s4 c4 c4  s4 c4 c2
}

BBHFAxCIFMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 62
    \time 3/4
    \key as \major
    \partial 4.
    
}
BBHFAxCIFMusicRHA = \relative c'{ \BBHFAxCIFMusicGlobal \clef "treble"
    ees8 ees aes | c4. c8 bes aes | %2
\nbp f4. \lbp bes8 aes f | %3
ees4. aes8 c aes | %4
\nbp bes4. \lbp ees,8 ees aes | %5
c4. c8 bes aes | %6
\nbp f4. \lbp bes8 aes f | %7
ees aes c4 bes | %8
\nbp aes4. \cbp  ees8 \postCho aes c | %9
ees4. ees8 des c | %10
\nbp des4. \pcAO \lbp ees,8 g bes | %11
des4. des8 c bes | %12
\nbp c4. \lbp ees8 ees c | %13
aes4. c8 bes aes | %14
\nbp f4. \lbp bes8 aes f | %15
ees aes c4 bes \nbp aes4. \he
}
BBHFAxCIFMusicRHB = \relative c'{ \BBHFAxCIFMusicGlobal \clef "treble"
    c8 c c | ees4. ees8 ees ees | %2
des4. f8 f des | c4. c8 ees ees | %4
ees4. des8 c c | ees4. ees8 ees ees | %6
des4. f8 f des | c c ees4 des | %8
c4. c8 c ees | ees4. ees8 ees ees | %10
ees4. ees8 ees g | g4. g8 aes g | %12
aes4. aes8 aes aes | ees4. ees8 ees ees | %14
des4. f8 f des | c c ees4 des c4.
}
BBHFAxCIFMusicRH =  \partCombine #'(2 . 20)  \BBHFAxCIFMusicRHA \BBHFAxCIFMusicRHB
BBHFAxCIFMusicLHA = \relative c{ \BBHFAxCIFMusicGlobal \clef "bass"
    aes'8 aes aes | aes4. aes8 g aes | %2
aes4. des8 des aes | aes4. aes8 aes aes | %4
g4. g8 aes aes | aes4. aes8 g aes | %6
aes4. des8 des aes | aes aes aes4 g | %8
aes4. \pcAp aes8 aes aes \pcAu | %9
c4. c8 bes \pcAO aes | g4. g8 bes ees | %11
ees4. ees8 ees ees | ees4. c8 c ees | %13
c4. aes8 g aes | aes4. des8 des aes | %15
aes aes aes4 g aes4.
}
BBHFAxCIFMusicLHB = \relative c{ \BBHFAxCIFMusicGlobal \clef "bass"
    aes8 aes aes | aes4. aes8 bes c | %2
des4. des8 des des | aes4. aes8 aes c | %4
ees4. ees8 aes, aes | aes4. aes8 bes c | %6
des4. des8 des des | ees ees ees4 ees | %8
aes,4. aes'8 aes aes | aes4. aes8 aes aes | %10
ees4. ees8 ees ees | ees4. ees8 ees ees | %12
aes4. aes8 aes aes | aes4. aes,8 bes c | %14
des4. des8 des des | ees ees ees4 ees aes,4.
}
BBHFAxCIFMusicLH =  \partCombine #'(2 . 20)  \BBHFAxCIFMusicLHA \BBHFAxCIFMusicLHB
BBHFAxCIFMusicLyrics = \relative c''''{ \BBHFAxCIFMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c8 c8 c4 c4 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c8 c8 c4 c4 c4.
}

BBHFBxBIDMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 98
    \time 4/4
    \key es \major
    \partial 4
    
}
BBHFBxBIDMusicRHA = \relative c'{ \BBHFBxBIDMusicGlobal \clef "treble"
    \pcAO ees4 |  \nbp g bes bes c | %2
\nbp bes2 g4 \lbp ees | %3
\nbp d \pcAO ees aes g | %4
\nbp f2. \pcAO \lbp ees4 | %5
\nbp g bes bes c | %6
\nbp bes2 g4 \pcAO \lbp f | %7
\nbp g c bes a |  \nbp bes2. \lbp bes4 | %9
\nbp ees bes aes g | %10
\nbp c2 bes4 \lbp d | %11
\nbp ees bes aes g | %12
\nbp f2. \pcAO \lbp ees4 | %13
\nbp g bes bes c | %14
\nbp bes2 g4 \pcAO \lbp ees | %15
\nbp f aes g f \pcAO \nbp ees2. \he
}
BBHFBxBIDMusicRHB = \relative c'{ \BBHFBxBIDMusicGlobal \clef "treble"
    ees4 | ees ees ees ees | ees2 ees4 bes | %3
bes ees d ees | d2. ees4 | %5
ees ees ees ees | ees2 ees4 f | %7
ees g f ees | d2. ees4 | g ees d ees | %10
ees2 ees4 aes | g ees d ees | d2. ees4 | %13
ees ees ees ees | ees2 ees4 ees | %15
c f ees d ees2.
}
BBHFBxBIDMusicRH =  \partCombine #'(2 . 20)  \BBHFBxBIDMusicRHA \BBHFBxBIDMusicRHB
BBHFBxBIDMusicLHA = \relative c{ \BBHFBxBIDMusicGlobal \clef "bass"
    g'4 | bes g bes \pcAO aes | g2 bes4 bes | %3
bes bes bes bes | bes2. g4 | %5
bes g bes \pcAO aes | g2 bes4 bes | %7
bes ees d c | bes2. g4 | %9
bes bes bes bes \pcAO | aes2 bes4 bes | %11
bes \pcAO g bes bes | bes2. g4 | %13
bes g bes \pcAO aes | g2 bes4 bes \pcAO | %15
aes c \pcAO bes aes g2.
}
BBHFBxBIDMusicLHB = \relative c{ \BBHFBxBIDMusicGlobal \clef "bass"
    ees4 | ees ees g aes | ees2 ees4 g | %3
aes g f ees | bes2. ees4 | ees ees g aes | %6
ees2 ees4 d | ees c f f | bes,2. ees4 | %9
ees g f ees | aes2 g4 f | ees g f ees | %12
bes2. ees4 | ees ees g aes | ees2 ees4 g | %15
aes f bes bes, ees2.
}
BBHFBxBIDMusicLH =  \partCombine #'(2 . 20)  \BBHFBxBIDMusicLHA \BBHFBxBIDMusicLHB
BBHFBxBIDMusicLyrics = \relative c''''{ \BBHFBxBIDMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c4 c4 c4 c4 c2 c4 c4 c4 c4 c4 c4 c2. c4 c4 c4 c4 c4 c2 c4 c4 c4 c4 c4 c4 c2. c4 c4 c4 c4 c4 c2 c4 c4 c4 c4 c4 c4 c2. c4 c4 c4 c4 c4 c2 c4 c4 c4 c4 c4 c4 c2.
}

BBHFCxAFGMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 104
    \time 6/8
    \key g \major
    
}
BBHFCxAFGMusicRHA = \relative c'{ \BBHFCxAFGMusicGlobal \clef "treble"
    b'4. c4 c8 | b4. \pcAO g | g a4 a8 | %3
\nbp b2. | b4. c4 c8 | b4. \pcAO g | %6
a b4 a8  |  \nbp g2. | c4. c4 c8 | %9
c4 b8 b4. | d a4 c8 | c4 b8 b4. | %12
g g4 g8 | g4 a8 b4. | b b4 a8 \pcAO \nbp g2. \he
}
BBHFCxAFGMusicRHB = \relative c'{ \BBHFCxAFGMusicGlobal \clef "treble"
    d4. e4 e8 | d4. g | e fis4 fis8 | g2. | %4
d4. e4 e8 | d4. g | d d4 c8 | b2. | %8
e4. e4 e8 | e4 d8 d4. | fis fis4 a8 | %11
a4 g8 g4. | b, c4 d8 | e4 e8 d4. | %14
d4 (g8) fis4 fis8 g2.
}
BBHFCxAFGMusicRH =  \partCombine #'(2 . 20)  \BBHFCxAFGMusicRHA \BBHFCxAFGMusicRHB
BBHFCxAFGMusicLHA = \relative c{ \BBHFCxAFGMusicGlobal \clef "bass"
    \pcAO g'4. \pcAO g4 \pcAO g8 \pcAO | %1
g4. b | b d4 d8 | d2. \pcAO | %4
g,4. \pcAO g4 \pcAO g8 \pcAO | g4. b | %6
fis g4 fis8 | \pcAO g2. | g4. g4 g8 \pcAO | %9
g4 \pcAO g8 \pcAO g4. | a d4 d8 | %11
d4 d8 d4. | g, g4 g8 | g4 g8 g4. | %14
g4 (b8) d4 c8 b2.
}
BBHFCxAFGMusicLHB = \relative c{ \BBHFCxAFGMusicGlobal \clef "bass"
    g'4. g4 g8 | g4. g | e d4 d8 | g2. | %4
g4. g4 g8 | g4. g | d d4 d8 | g2. | %8
c,4. c4 e8 | g4 g8 g4. | d d4 fis8 | %11
g4 g8 g4. | g, a4 b8 | c4 c8 g4. | %14
d' d4 d8 g,2.
}
BBHFCxAFGMusicLH =  \partCombine #'(2 . 20)  \BBHFCxAFGMusicLHA \BBHFCxAFGMusicLHB
BBHFCxAFGMusicLyrics = \relative c''''{ \BBHFCxAFGMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4. c4 c8 c4. c4. c4. c4 c8 c2. c4. c4 c8 c4. c4. c4. c4 c8 c2. c4. c4 c8 c4 c8 c4. c4. c4 c8 c4 c8 c4. c4. c4 c8 c4 c8 c4. c4. c4 c8 c2.
}

BBHFDxABEMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 2 = 64
    \time 4/4
    \key des \major
    
}
BBHFDxABEMusicRHA = \relative c'{ \BBHFDxABEMusicGlobal \clef "treble"
    f2 f4 f | aes2 aes \pcAO | %2
des, ges4 ges |  \nbp f2. r4 | %4
bes2 bes4 bes | aes2 f4 f | f2 ees4 ees | %7
\nbp ees2. r4 | f2 f4 f | aes2 aes | %10
bes c4 des |  \nbp c2. r4 | des2 c4 bes | %13
aes2 f4 aes | aes2 aes4. ges8 | %15
\nbp f2. r4 | bes2 c4 des | %17
des2 \pcAO des,4 ees | %18
f2 f4. ees8 \pcAO \nbp des2. r4 \he
}
BBHFDxABEMusicRHB = \relative c'{ \BBHFDxABEMusicGlobal \clef "treble"
    des2 des4 des | ees2 ees | des des4 des | %3
des2. r4 | des2 ges4 ges | f2 des4 des | %6
des2 bes4 des | c2. r4 | des2 des4 des | %9
ees2 f | ges ges4 f | ees2. r4 | %12
aes2 aes4 ges | f2 des4 des | c2 c4. c8 | %15
des2. r4 | ges2 ges4 ges | f2 des4 des | %18
des2 c4. c8 des2. r4
}
BBHFDxABEMusicRH =  \partCombine #'(2 . 20)  \BBHFDxABEMusicRHA \BBHFDxABEMusicRHB
BBHFDxABEMusicLHA = \relative c{ \BBHFDxABEMusicGlobal \clef "bass"
    aes'2 aes4 aes | aes2 ees | f bes4 bes | %3
aes2. r4 | ges (bes) des des | %5
des2 aes4 aes | bes2 g4 g | aes2. r4 | %8
aes2 aes4 aes | aes2 des | %10
des aes4 aes \pcAO | aes2. r4 | %12
aes (des) des des | des2 aes4 f | %14
ees2 ees4. aes8 | aes2. r4 | des2 c4 bes | %17
aes2 g4 g | aes2 aes4. ges8 f2. r4
}
BBHFDxABEMusicLHB = \relative c{ \BBHFDxABEMusicGlobal \clef "bass"
    des2 des4 des | c2 c | %2
bes ges4 ges8 [bes] | des2. r4 | %4
ges2 ges4 ges | des2 des4 des | %6
bes2 ees4 ees | aes,2. r4 | %8
des2 des4 des | c2 des | ges ees4 des | %11
aes'2. r4 | f2 ges4 ges | des2 des4 des | %14
aes2 aes4. aes8 | des2. r4 | %16
ges,2 ges4 ges | aes2 beses4 beses | %18
aes2 aes4. aes8 des2. r4
}
BBHFDxABEMusicLH =  \partCombine #'(2 . 20)  \BBHFDxABEMusicLHA \BBHFDxABEMusicLHB
BBHFDxABEMusicLyrics = \relative c''''{ \BBHFDxABEMusicGlobal \clef "treble"
    \hideNotes \voiceFour c2 c4 c4 c2 c2 c2 c4 c4 c2.  s4 c2 c4 c4 c2 c4 c4 c2 c4 c4 c2.  s4 c2 c4 c4 c2 c2 c2 c4 c4 c2.  s4 c2 c4 c4 c2 c4 c4 c2 c4. c8 c2.  s4 c2 c4 c4 c2 c4 c4 c2 c4. c8 c2.
}

BBHFExBZZMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 88
    \time 4/4
    \key c \major
    \partial 4
    
}
BBHFExBZZMusicRHA = \relative c'{ \BBHFExBZZMusicGlobal \clef "treble"
    \pcAO c8. e16 |  \nbp g4 c b a | %2
\nbp g e2 \lbp e8. e16 |  \nbp f4 f e d | %4
\nbp e2. \pcAO \lbp c8. e16 | %5
\nbp g4 c b a |  \nbp g e2 \lbp e8. e16 | %7
\nbp d4. d8 fis4. fis8 | %8
\nbp g2. \lbp g8. g16 | %9
\nbp g4 d e4. f8 | %10
\nbp f4 e2 \lbp g8. g16 | %11
\nbp g4 d e4. f8 | %12
\nbp e2. \lbp e8. f16 |  \nbp g4 e c' g | %14
\nbp a c2 \lbp a8. a16 | %15
\nbp g4. g8 a4 b | %16
\nbp c2. \cbp g8. \postCho g16 | %17
\nbp c2~c8. g16 b8. a16 | %18
\nbp g2 e4 \lbp g8. c16 | %19
\nbp d2~d8. g,16 a8. \pcAO g16 | %20
\nbp c2. \lbp g8. g16 | %21
\nbp c2~c8. e16 d8. c16 | %22
\nbp c2 a4 \lbp a8. c16 | %23
\nbp b2~b8. g16 a8. b16 \pcAp \nbp c2. \he
}
BBHFExBZZMusicRHB = \relative c'{ \BBHFExBZZMusicGlobal \clef "treble"
    c8. c16 | e4 e g f | e c2 c8. c16 | %3
d4 d c b | c2. c8. c16 | e4 e g f | %6
e c2 c8. c16 | b4. b8 c4. c8 | %8
b2. b8. b16 | b4 b c4. b8 | %10
c4 c2 c8. c16 | b4 b c4. b8 | %12
c2. c8. d16 | e4 c e e | f f2 f8. f16 | %15
e4. e8 f4 f | e2. e8. e16 | %17
e8. e16 e8. e16 e8. e16 g8. f16 | %18
e8. e16 e8. e16 c4 e8. g16 | %19
f8. f16 f8. f16 f8. f16 f8. g16 | %20
e8. e16 e8. e16 e4 e8. e16 | %21
e8. e16 e8. e16 e8. g16 g8. g16 | %22
f8. f16 f8. f16 f4 f8. f16 | %23
d8. d16 d8. d16 d8. e16 f8. f16 e8. e16 f8. f16 e4
}
BBHFExBZZMusicRH =  \partCombine #'(2 . 20)  \BBHFExBZZMusicRHA \BBHFExBZZMusicRHB
BBHFExBZZMusicLHA = \relative c{ \BBHFExBZZMusicGlobal \clef "bass"
    e8. g16 | c4 g g c | c g2 g8. g16 | %3
b4 b g g | g2. e8. g16 | c4 g c c | %6
c g2 g8. g16 | g4. g8 a4. a8 | %8
g2. g8. g16 | g4 g g4. g8 | %10
a4 g2 e8. e16 | g4 g g4. g8 | %12
g2. g8. g16 | c4 g g c | c a2 c8. c16 | %15
c4. \pcAO g8 g4 g | g2. c8. c16 | %17
g8. g16 g8. g16 g8. g16 g8. c16 | %18
c8. c16 c8. c16 g4 c8. c16 | %19
b8. b16 b8. b16 b8. b16 b8. b16 | %20
c8. g16 g8. g16 g4 c8. c16 | %21
g8. g16 g8. g16 g8. c16 b8. c16 | %22
a8. a16 a8. a16 c4 c8. a16 \pcAO | %23
g8. d'16 d8. d16 g,8. g16 g8. g16 g8. g16 a8. a16 g4
}
BBHFExBZZMusicLHB = \relative c{ \BBHFExBZZMusicGlobal \clef "bass"
    c8. c16 | c4 c c c | c c2 c8. c16 | %3
g4 g g g | c2. c8. c16 | c4 c e f | %6
c c2 c8. c16 | d4. d8 d4. d8 | %8
g,2. g8. g16 | g4 g g4. g8 | %10
c4 c2 c8. c16 | g4 g g4. g8 | %12
c2. c8. c16 | c4 c c c | f f2 f8. f16 | %15
g4. g8 g,4 g | c2. c8. c16 | %17
c8. c16 c8. c16 c8. c16 c8. c16 | %18
c8. c16 c8. c16 c4 c8. e16 | %19
g8. g16 g8. g16 g8. g16 g8. g16 | %20
c,8. c16 c8. c16 c4 c8. c16 | %21
c8. c16 c8. c16 c8. c16 d8. e16 | %22
f8. f16 f8. f16 f4 f8. f16 | %23
g8. g16 g8. g16 g,8. g16 g8. g16 c8. c16 c8. c16 c4
}
BBHFExBZZMusicLH =  \partCombine #'(2 . 20)  \BBHFExBZZMusicLHA \BBHFExBZZMusicLHB
BBHFExBZZMusicLyrics = \relative c''''{ \BBHFExBZZMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8. c16 c4 c4 c4 c4 c4 c2 c8. c16 c4 c4 c4 c4 c2. c8. c16 c4 c4 c4 c4 c4 c2 c8. c16 c4. c8 c4. c8 c2. c8. c16 c4 c4 c4. c8 c4 c2 c8. c16 c4 c4 c4. c8 c2. c8. c16 c4 c4 c4 c4 c4 c2 c8. c16 c4. c8 c4 c4 c2. c8. c16 c2  s8. c16 c8. c16 c2 c4 c8. c16 c2  s8. c16 c8. c16 c2. c8. c16 c2  s8. c16 c8. c16 c2 c4 c8. c16 c2  s8. c16 c8. c16 c2.
}

BBHFFxADFMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 64
    \time 3/4
    \key f \major
    \partial 4
    
}
BBHFFxADFMusicRHA = \relative c'{ \BBHFFxADFMusicGlobal \clef "treble"
    \pcAO f8. g16 |  \nbp a4. a8 g8. a16 | %2
\nbp c4 bes \lbp bes8. a16 | %3
\nbp g4. \pcAO f8 g8. a16 | %4
\nbp f2 \lbp f8. g16 | %5
\nbp a4. a8 g8. a16 | %6
\nbp c4 bes \lbp bes8. a16 | %7
\nbp g4. \pcAO f8 a8. g16 \pcAO | %8
\nbp f2 \cfb c'8. \postCho c16 | %9
\nbp d4. d8 bes8. d16 | %10
\nbp c4 a \lbp a8. a16 | %11
\nbp g4. \pcAO g8 a8. b16 | %12
\nbp c2 \lbp f,8. g16 | %13
\nbp a4. a8 g8. a16 | %14
\nbp c4 bes \lbp bes8. a16 | %15
\nbp g4. \pcAO f8 a8. g16 \pcAO \nbp f2 \he
}
BBHFFxADFMusicRHB = \relative c'{ \BBHFFxADFMusicGlobal \clef "treble"
    f8. f16 | f4. f8 e8. f16 | e4 e g8. f16 | %3
e4. f8 e8. e16 | c2 c8. c16 | %5
f4. f8 e8. f16 | e4 e g8. f16 | %7
e4. f8 e8. e16 | f2 f8. f16 | %9
f4. f8 f8. f16 | f4 f f8. f16 | %11
e4. g8 f8. f16 | e2 c8. c16 | %13
f4. f8 e8. f16 | e4 e g8. f16 | %15
e4. f8 e8. e16 f2
}
BBHFFxADFMusicRH =  \partCombine #'(2 . 20)  \BBHFFxADFMusicRHA \BBHFFxADFMusicRHB
BBHFFxADFMusicLHA = \relative c{ \BBHFFxADFMusicGlobal \clef "bass"
    a'8. bes16 | c4. c8 c8. c16 | %2
c4 c e8. c16 | bes4. a8 bes8. c16 | %4
a2 a8. bes16 | c4. c8 c8. c16 | %6
c4 c e8. c16 | bes4. a8 c8. bes16 | %8
a2 a8. a16 | bes4. bes8 d8. bes16 | %10
a4 c c8. c16 | c4.  e8 d8. d16 | %12
c4 (bes) a8. bes16 | c4. c8 c8. c16 | %14
c4 c e8. c16 | bes4. a8 c8. bes16 a2
}
BBHFFxADFMusicLHB = \relative c{ \BBHFFxADFMusicGlobal \clef "bass"
    f8. f16 | f4. f8 bes8. a16 | %2
g4 g c,8. c16 | c4. c8 c8. c16 | %4
f2 f8. f16 | f4. f8 bes8. a16 | %6
g4 g c,8. c16 | c4. c8 c8. c16 | %8
f2 f8. f16 | bes,4. bes8 bes8. bes16 | %10
f'4 f f8. f16 | g4. g8 g8. g16 | %12
c,2 f8. f16 | f4. f8 bes8. a16 | %14
g4 g c,8. c16 | c4. c8 c8. c16 f2
}
BBHFFxADFMusicLH =  \partCombine #'(2 . 20)  \BBHFFxADFMusicLHA \BBHFFxADFMusicLHB
BBHFFxADFMusicLyrics = \relative c''''{ \BBHFFxADFMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8. c16 c4. c8 c8. c16 c4 c4 c8. c16 c4. c8 c8. c16 c2 c8. c16 c4. c8 c8. c16 c4 c4 c8. c16 c4. c8 c8. c16 c2 c8. c16 c4. c8 c8. c16 c4 c4 c8. c16 c4. c8 c8. c16 c2 c8. c16 c4. c8 c8. c16 c4 c4 c8. c16 c4. c8 c8. c16 c2
}

BBHFGxDDMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 66
    \time 3/4
    \key d \major
    \partial 4
    
}
BBHFGxDDMusicRHA = \relative c'{ \BBHFGxDDMusicGlobal \clef "treble"
    \pcAO d8 e |  \nbp fis4 \pcAO d e8 g | %2
\nbp fis4 \pcAO d \lbp fis8 fis | %3
\nbp g4 b a8 fis |  \nbp e2 \lbp fis8 g | %5
\nbp a4 d cis8 b | %6
\nbp b4 a \pcAO \lbp d,8 e | %7
\nbp fis4 a g8 e \pcAO | %8
\nbp d2 \cbp a'8 \postCho a | %9
\nbp d4. a8 b a | %10
\nbp a4 fis \lbp a8 d | %11
\nbp cis4. a8 cis b | %12
\nbp a2 \pcAO \lbp d,8 fis | %13
\nbp a4. a8 b a | %14
\nbp a4 fis \pcAO \lbp d8 e | %15
\nbp fis g fis4 e \pcAO \nbp d2 \he
}
BBHFGxDDMusicRHB = \relative c'{ \BBHFGxDDMusicGlobal \clef "treble"
    d8 d | d4 d cis8 e | d4 d d8 d | %3
d4 g fis8 d | cis2 d8 e | fis4 a a8 g | %6
g4 fis d8 cis | d4 fis e8 cis | %8
d2 fis8 fis | fis4. fis8 g fis | %10
fis4 d fis8 fis | e4. e8 e d | cis2 d8 d | %13
fis4. fis8 g fis | fis4 d d8 cis | %15
d e d4 cis d2
}
BBHFGxDDMusicRH =  \partCombine #'(2 . 20)  \BBHFGxDDMusicRHA \BBHFGxDDMusicRHB
BBHFGxDDMusicLHA = \relative c{ \BBHFGxDDMusicGlobal \clef "bass"
    fis8 g | a4 fis a8 a | a4 fis a8 a | %3
b4 d d8 a | a2 a8 a | d4 d d8 d | %6
d4 d a8 a | a4 d b8 a | fis2 d'8 d | %9
a4. d8 d d | d4 a a8 a | a4. cis8 a gis | %12
a2 fis8 a | d4. d8 d d | d4 a a8 a | %15
a b a4 g fis2
}
BBHFGxDDMusicLHB = \relative c{ \BBHFGxDDMusicGlobal \clef "bass"
    d8 d | d4 d a8 a | d4 d d8 d | %3
g4 g d8 d | a2 d8 d | d4 fis g8 g | %6
d4 d fis8 e | d4 d g,8 a | d2 d8 d | %9
d4. d8 d d | d4 d d8 d | e4. e8 e e | %12
a,2 d8 d | d4. d8 d d | d4 d fis8 e | %15
d g, a4 a d2
}
BBHFGxDDMusicLH =  \partCombine #'(2 . 20)  \BBHFGxDDMusicLHA \BBHFGxDDMusicLHB
BBHFGxDDMusicLyrics = \relative c''''{ \BBHFGxDDMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8 c8 c4 c4 c8 c8 c4 c4 c8 c8 c4 c4 c8 c8 c2 c8 c8 c4 c4 c8 c8 c4 c4 c8 c8 c4 c4 c8 c8 c2 c8 c8 c4. c8 c8 c8 c4 c4 c8 c8 c4. c8 c8 c8 c2 c8 c8 c4. c8 c8 c8 c4 c4 c8 c8 c8 c8 c4 c4 c2
}

BBHFHxIEMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 2 = 120
    \time 3/2
    \key f \major
    
}
BBHFHxIEMusicRHA = \relative c'{ \BBHFHxIEMusicGlobal \clef "treble"
    a'2 a a | c1 \pcAO f,2 | g1 g2 | %3
\nbp a1. | c2 c c | bes1 c2 | a1 bes2 | %7
\nbp g1. | g2 g g | g1 g2 | b1 b2 | %11
\nbp c1. | a2 a a | a (g) f | f1 e2 \nbp f1. \he
}
BBHFHxIEMusicRHB = \relative c'{ \BBHFHxIEMusicGlobal \clef "treble"
    f2 f f | f1 f2 | f1 e2 | f1. | f2 f f | %5
f1 e2 | f1 g2 | e1. | e2 e e | d1 e2 | %10
f1 f2 | e1. | f2 f ees | d1 c2 | c1 c2 c1.
}
BBHFHxIEMusicRH =  \partCombine #'(2 . 20)  \BBHFHxIEMusicRHA \BBHFHxIEMusicRHB
BBHFHxIEMusicLHA = \relative c{ \BBHFHxIEMusicGlobal \clef "bass"
    c'2 c c | c1 a2 | d1 c2 | c1. | %4
c2 c f | d1 c2 | c (d) d | c1. | %8
c2 c c | b1 c2 | d1 d2 | c1. | c2 c c | %13
c (bes) a | g (a) bes a1.
}
BBHFHxIEMusicLHB = \relative c{ \BBHFHxIEMusicGlobal \clef "bass"
    f2 f f | a,1 d2 | bes1 c2 | f1. | %4
a2 a a | g1 c,2 | f (d) bes | c1. | %8
c2 c c | g'1 g2 | g1 g2 | c,1. | %12
f2 f f | bes,1 c2 | c1 c2 f1.
}
BBHFHxIEMusicLH =  \partCombine #'(2 . 20)  \BBHFHxIEMusicLHA \BBHFHxIEMusicLHB
BBHFHxIEMusicLyrics = \relative c''''{ \BBHFHxIEMusicGlobal \clef "treble"
    \hideNotes \voiceFour c2 c2 c2 c1 c2 c1 c2 c1. c2 c2 c2 c1 c2 c1 c2 c1. c2 c2 c2 c1 c2 c1 c2 c1. c2 c2 c2 c2  s2 c2 c1 c2 c1.
}

BBHFIxAFOLDMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 88
    \time 6/8
    \key f \major
}
BBHFIxAFOLDMusicRHA = \relative c'{ \BBHFIxAFOLDMusicGlobal \clef "treble"
    a'4. a8 g a |  \nbp bes4. a \pcAO | %2
f g8 f e |  \nbp f2. | a4. a8 g a | %5
\nbp bes4. a | g g8 g g |  \nbp g2. | %8
bes4. bes8 a g |  \nbp a4. c | %10
bes bes8 a g |  \nbp a2. | c4. c8 bes a | %13
\nbp d4. bes | a g8 f e \nbp f2.
}
BBHFIxAFOLDMusicRHB = \relative c'{ \BBHFIxAFOLDMusicGlobal \clef "treble"
    f4. f8 f f | f4. f | f c8 c c | c2. | %4
f4. f8 f f | f4. f | e d8 e f | e2. | %8
g4. g8 f e | f4. f | e e8 f e | f2. | %12
f4. f8 e f | f4. f | f c8 c c c2.
}
BBHFIxAFOLDMusicRH =  \partCombine #'(2 . 20)  \BBHFIxAFOLDMusicRHA \BBHFIxAFOLDMusicRHB
BBHFIxAFOLDMusicLHA = \relative c{ \BBHFIxAFOLDMusicGlobal \clef "bass"
    c'4. c8 bes c | d4. c | a bes8 a g | %3
a2. | c4. c8 bes c | d4. c | c b8 c d | %7
c2. | c4. c8 c c | c4. a | g g8 c c | %11
c2. | a4. c8 c c \pcAO | bes4. d | %14
c bes8 a g a2.
}
BBHFIxAFOLDMusicLHB = \relative c{ \BBHFIxAFOLDMusicGlobal \clef "bass"
    f4. f8 f f | f4. f | c c8 c c | f2. | %4
f4. f8 f f | f4. f | g g8 g g | c,2. | %8
c4. c8 c c | f4. f | c c8 c c | f2. | %12
f4. a8 g f | bes4. bes, | c c8 c c f2.
}
BBHFIxAFOLDMusicLH =  \partCombine #'(2 . 20)  \BBHFIxAFOLDMusicLHA \BBHFIxAFOLDMusicLHB
BBHFIxAFOLDMusicLyrics = \relative c''''{ \BBHFIxAFOLDMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4. c8 c8 c8 c4. c4. c4. c8 c8 c8 c2. c4. c8 c8 c8 c4. c4. c4. c8 c8 c8 c2. c4. c8 c8 c8 c4. c4. c4. c8 c8 c8 c2. c4. c8 c8 c8 c4. c4. c4. c8 c8 c8 c2.
}

BBHGZxAEEMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 78
    \time 3/4
    \key d \major
    \partial 4
    
}
BBHGZxAEEMusicRHA = \relative c'{ \BBHGZxAEEMusicGlobal \clef "treble"
    d8 [fis] | %1
\nbp a4. fis8 e \pcAO d \pcAO | %2
\nbp d2 \pcAO \lbp d4 | %3
\nbp e4. g8 b a |  \nbp fis2 \lbp a4 | %5
\nbp d4. cis8 b a | %6
b a \set Score.tempoHideNote = ##t \tempo 4 = 39  \fpre fis4 \fpost \set Score.tempoHideNote = ##t \tempo 4 = 78   \pcAO \lbp d | %7
\nbp e4. \pcAO d8 fis e \pcAO | %8
\nbp d2 r4 \cbp | %9
d'4. \postCho cis8 b a |  \nbp b2. | %11
a4. fis8 e \pcAO d |  \nbp e2. | %13
a4. b8 fis e \pcAO | %14
d e \set Score.tempoHideNote = ##t \tempo 4 = 39  \fpre fis4 \fpost \set Score.tempoHideNote = ##t \tempo 4 = 78   \pcAO \lbp d | %15
\nbp e4. \pcAO d8 fis e \pcAO \nbp d2 \he
}
BBHGZxAEEMusicRHB = \relative c'{ \BBHGZxAEEMusicGlobal \clef "treble"
    d4 | fis4. d8 cis d | d2 d4 | %3
cis4. e8 e e | d2 fis4 | fis4. a8 g fis | %6
g fis d4 d | cis4. d8 d cis | d2 r4 | %9
fis4. a8 g fis | g2. | fis4. d8 cis d | %12
cis2. | d4. d8 d cis | d cis d4 d | %15
cis4. d8 d cis d2
}
BBHGZxAEEMusicRH =  \partCombine #'(2 . 20)  \BBHGZxAEEMusicRHA \BBHGZxAEEMusicRHB
BBHGZxAEEMusicLHA = \relative c{ \BBHGZxAEEMusicGlobal \clef "bass"
    fis8 [a] | d4. a8 g fis | fis2 fis4 | %3
a4. a8 a a | a2 a4 | a4. d8 d d | %6
d d  a4  fis | g4. fis8 a g | %8
fis2 r4 | a4. d8 d d | d2. | %11
d4. a8 g fis | a2. | fis4. g8 a g | %14
fis a  a4  fis | g4. fis8 a g fis2
}
BBHGZxAEEMusicLHB = \relative c{ \BBHGZxAEEMusicGlobal \clef "bass"
    d4 | d4. d8 d d | d2 d4 | %3
a4. a8 cis cis | d2 d4 | d4. d8 d d | %6
d d \fpre d4 \fpostbelow d | a4. a8 a a | d2 r4 | %9
d4. d8 d d | g2. | d4. d8 d d | a2. | %13
d4. d8 d a | b a \fpre d4 \fpostbelow d | a4. a8 a a d2
}
BBHGZxAEEMusicLH =  \partCombine #'(2 . 20)  \BBHGZxAEEMusicLHA \BBHGZxAEEMusicLHB
BBHGZxAEEMusicLyrics = \relative c''''{ \BBHGZxAEEMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8  s8 c4. c8 c8 c8 c2 c4 c4. c8 c8 c8 c2 c4 c4. c8 c8 c8 c8 c8 c4 c4 c4. c8 c8 c8 c2  s4 c4. c8 c8 c8 c2. c4. c8 c8 c8 c2. c4. c8 c8 c8 c8 c8 c4 c4 c4. c8 c8 c8 c2
}

BBHGAxADMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 120
    \time 3/4
    \key f \major
    \partial 4
    
}
BBHGAxADMusicRHA = \relative c'{ \BBHGAxADMusicGlobal \clef "treble"
    a'4 |  \nbp a (f) a | g (e) g | %3
\nbp f2 \lbp f4 |  \nbp f (d) f | %5
f (c) f |  \nbp e2 \lbp g4 | %7
\nbp g (e) g | f (a) c | %9
c (g) bes |  \nbp a (c) \lbp d | %11
\nbp c (a) bes | a (f) g \nbp f2 \he
}
BBHGAxADMusicRHB = \relative c'{ \BBHGAxADMusicGlobal \clef "treble"
    c4 | c2 c4 | c2 c4 | c2 c4 | d2 d4 | %5
c2 c4 | c2 c4 | c2 c4 | c2 f4 | e2 g4 | %10
f2 f4 | f2 f4 | f2 c4 c2
}
BBHGAxADMusicRH =  \partCombine #'(2 . 20)  \BBHGAxADMusicRHA \BBHGAxADMusicRHB
BBHGAxADMusicLHA = \relative c{ \BBHGAxADMusicGlobal \clef "bass"
    a'4 | a2 a4 | bes2 bes4 | a2 f4 | %4
f2 bes4 | a2 a4 | g2 e4 | e (g) bes | %8
a2 a4 | g2 c4 | c (a) bes | a (c) d | %12
c (a) bes a2
}
BBHGAxADMusicLHB = \relative c{ \BBHGAxADMusicGlobal \clef "bass"
    f4 | f2 f4 | c2 c4 | f2 a,4 | %4
bes2 bes4 | f'2 f4 | c2 c4 | c2 c4 | %8
f2 f4 | c2 e4 | f2 bes,4 | f'2 bes,4 | %12
c2 c4 f,2
}
BBHGAxADMusicLH =  \partCombine #'(2 . 20)  \BBHGAxADMusicLHA \BBHGAxADMusicLHB
BBHGAxADMusicLyrics = \relative c''''{ \BBHGAxADMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c4  s4 c4 c4  s4 c4 c2 c4 c4  s4 c4 c4  s4 c4 c2 c4 c4  s4 c4 c4  s4 c4 c4  s4 c4 c4  s4 c4 c4  s4 c4 c4  s4 c4 c2
}

BBHGBxAEHMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 2 = 68
    \time 6/4
    \key des \major
    \partial 4
    
}
BBHGBxAEHMusicRHA = \relative c'{ \BBHGBxAEHMusicGlobal \clef "treble"
    \pcAO des8 [ees] | %1
\nbp f2 f4 aes4. (ges8) f4 | %2
ees4. (f8) ges4 f2 \lbp aes4 | %3
\nbp aes (ees) f ges2 bes4 | %4
bes2 aes4 f2 \pcAO \lbp des8 [ees] | %5
\nbp f2 f4 aes4. (ges8) f4 | %6
bes2 bes4 des4. (c8) \lbp bes4 \nbp | %7
aes2 aes4 aes4. (ges8) f4 | ees2. aes \nbp f~f2 \he
}
BBHGBxAEHMusicRHB = \relative c'{ \BBHGBxAEHMusicGlobal \clef "treble"
    des4 | des2 des4 f4. (ees8) des4 | %2
c4. (des8) ees4 des2 f4 | %3
ees2 des4 ees2 ges4 | ges2 f4 des2 des4 | %5
des2 des4 f4. (ees8) des4 | %6
ges2 ges4 ges2 ges4 | %7
f2 f4 f4. (ees8) des4 | c2. c des~des2
}
BBHGBxAEHMusicRH =  \partCombine #'(2 . 20)  \BBHGBxAEHMusicRHA \BBHGBxAEHMusicRHB
BBHGBxAEHMusicLHA = \relative c{ \BBHGBxAEHMusicGlobal \clef "bass"
    f8 [ges] | aes2 aes4 aes2 aes4 | %2
aes2 aes4 aes2 des4 | %3
c2 \pcAO aes4 \pcAO aes2 c4 | %4
des2 des4 aes2 f8 [ges] | %5
aes2 aes4 aes2 \pcAO f4 | %6
des'2 des4 bes4. (c8) des4 | %7
des2 des4 aes2 aes4 \pcAO | aes2. aes aes~aes2
}
BBHGBxAEHMusicLHB = \relative c{ \BBHGBxAEHMusicGlobal \clef "bass"
    des4 | des2 des4 des2 des4 | %2
aes2 aes4 des2 des4 | %3
aes'2 aes4 aes2 aes,4 | %4
des2 des4 des2 des4 | %5
des2 des4 des4. (ees8) f4 | %6
ges2 ges4 ges2 ges4 | des2 des4 des2 des4 | %8
aes'2. aes, des~des2
}
BBHGBxAEHMusicLH =  \partCombine #'(2 . 20)  \BBHGBxAEHMusicLHA \BBHGBxAEHMusicLHB
BBHGBxAEHMusicLyrics = \relative c''''{ \BBHGBxAEHMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8  s8 c2 c4 c4.  s8 c4 c4.  s8 c4 c2 c4 c4  s4 c4 c2 c4 c2 c4 c2 c8  s8 c2 c4 c4.  s8 c4 c2 c4 c4.  s8 c4 c2 c4 c4.  s8 c4 c2. c2. c2.
}

BBHGCxCCGMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 94
    \time 6/4
    \key des \major
    \partial 4
    
}
BBHGCxCCGMusicRHA = \relative c'{ \BBHGCxCCGMusicGlobal \clef "treble"
    f8 ees \pcAO | %1
\nbp des4 f aes des2 aes8 des | %2
c4 bes bes \pcAO ees,2 \lbp ees8 f | %3
\nbp ges4 c bes aes ges4. ees8 | %4
\nbp f2.~f2 \lbp f8 ees \pcAO | %5
\nbp des4 f aes des2 c8 des | %6
ees4 des c bes2 \lbp c8 des | %7
\nbp des4 aes f ges f ees | %8
\nbp des2.~des2 \cbp aes'8 \postCho des | %9
\nbp c2 c8. c16 c4 bes c | %10
bes aes4. g8 aes2 \lbp f8 aes | %11
\nbp aes2 ges8. ges16 ges4 f \pcAO ees | %12
bes' aes4. g8 aes2 \lbp f8 ges | %13
\nbp aes1 r4 des8 c | %14
bes2.~bes4 r \lbp ees8 ees | %15
\nbp des4 c bes aes bes c \nbp des2.~des2 \he
}
BBHGCxCCGMusicRHB = \relative c'{ \BBHGCxCCGMusicGlobal \clef "treble"
    des8 des | des4 des f f2 f8 f | %2
aes4 ges ges ees2 c8 des | %3
c4 aes' ges ees ees4. c8 | %4
des2.~des2 des8 des | %5
des4 des f f2 f8 f | %6
ges4 ges aes ges2 e8 e | %7
f4 f des des des c | aes2.~aes2 f'8 f | %9
ges2 ges8. ges16 ges4 ges ges | %10
ges f4. e8 f2 des8 f | %11
f2 ees8. ees16 ees4 des ees | %12
ges f4. e8 f2 des8 ees | %13
f2 ees8 ges f4 r f8 aes | %14
ges2 aes8 aes g4 r g8 g | %15
ges4 ges ges ges ges ges f2.~f2
}
BBHGCxCCGMusicRH =  \partCombine #'(2 . 20)  \BBHGCxCCGMusicRHA \BBHGCxCCGMusicRHB
BBHGCxCCGMusicLHA = \relative c{ \BBHGCxCCGMusicGlobal \clef "bass"
    aes'8 ges | f4 aes des aes2 des8 des | %2
des4 des des bes2 aes8 aes | %3
aes4 c c c c4. aes8 | %4
aes2.~aes2 aes8 ges | %5
f4 aes des aes2 aes8 aes \pcAO | %6
ges4 bes c des2 bes8 bes \pcAO | %7
aes4 \pcAO aes aes bes aes ges | %8
f2.~f2 aes8 aes | %9
aes2 ees'8. ees16 ees4 des ees | %10
des des4. des8 des2 aes8 des | %11
c2 c8. c16 c4 aes c | %12
des des4. des8 des2 aes8 aes | %13
des2 c8 \pcAO ees des4 r aes8 des | %14
des2 d8 d ees4 r ees8 ees | %15
ees4 ees des c c aes aes2.~aes2
}
BBHGCxCCGMusicLHB = \relative c{ \BBHGCxCCGMusicGlobal \clef "bass"
    des8 des | des4 des des des2 des8 des | %2
ges4 ges ges ges2 ges8 f | %3
ees4 aes, aes aes aes4. aes8 | %4
des2.~des2 des8 des | %5
des4 des des des2 des8 des | %6
ges4 ges ges ges2 g8 g | %7
aes4 aes aes, ges aes aes | %8
des2.~des2 des8 des | %9
aes2 aes'8. aes16 aes4 aes aes | %10
des, des4. des8 des2 des8 des | %11
aes2 aes8. aes16 aes4 aes aes' | %12
des, des4. des8 des2 des8 des | %13
des2 aes8 aes des4 r des8 f | %14
ges2 f8 f ees4 r ees8 ees | %15
aes4 aes aes aes, aes aes des2.~des2
}
BBHGCxCCGMusicLH =  \partCombine #'(2 . 20)  \BBHGCxCCGMusicLHA \BBHGCxCCGMusicLHB
BBHGCxCCGMusicLyrics = \relative c''''{ \BBHGCxCCGMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8 c8 c4 c4 c4 c2 c8 c8 c4 c4 c4 c2 c8 c8 c4 c4 c4 c4 c4. c8 c2.  s2 c8 c8 c4 c4 c4 c2 c8 c8 c4 c4 c4 c2 c8 c8 c4 c4 c4 c4 c4 c4 c2.  s2 c8 c8 c2 c8. c16 c4 c4 c4 c4 c4. c8 c2 c8 c8 c2 c8. c16 c4 c4 c4 c4 c4. c8 c2 c8 c8 c1  s4 c8 c8 c1  s4 c8 c8 c4 c4 c4 c4 c4 c4 c2.
}

BBHGDxAIMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 64
    \time 6/8
    \key es \major
    
}
BBHGDxAIMusicRHA = \relative c'{ \BBHGDxAIMusicGlobal \clef "treble"
    \pcAO ees4 f8 g4 bes8 | %1
c4 bes8 g bes4 \pcAO | ees, f8 bes4 g8 | %3
f4 f8 \pcAO ees4. \pcAO | %4
ees4 f8 g4 bes8 | c4 bes8 g bes4 | %6
c bes8 g4 g8 | f4 g8 \pcAO ees4. \cbp | %8
bes'4 \postCho bes8 c ees4 | %9
ees4. c8 bes4 | bes bes8 c4 ees8 | %11
c [bes] g f4. \pcAO | ees4 f8 g4 bes8 | %13
c4 bes8 g bes4 \pcAO | ees, f8 g \set Score.tempoHideNote = ##t \tempo 4 = 32  \fpre bes \fpost \set Score.tempoHideNote = ##t \tempo 4 = 64    g f4 g8 \pcAO ees4. \he
}
BBHGDxAIMusicRHB = \relative c'{ \BBHGDxAIMusicGlobal \clef "treble"
    ees4 d8 ees4 g8 | aes4 g8 ees g4 | %2
ees ees8 d4 ees8 | d4 d8 ees4. | %4
ees4 d8 ees4 g8 | aes4 g8 ees g4 | %6
aes g8 ees4 ees8 | d4 d8 ees4. | %8
g4 g8 aes aes4 | c4. aes8 g4 | %10
g g8 aes4 aes8 | aes [g] ees d4. | %12
ees4 d8 ees4 g8 | aes4 g8 ees g4 | %14
ees d8 ees g ees d4 d8 ees4.
}
BBHGDxAIMusicRH =  \partCombine #'(2 . 20)  \BBHGDxAIMusicRHA \BBHGDxAIMusicRHB
BBHGDxAIMusicLHA = \relative c{ \BBHGDxAIMusicGlobal \clef "bass"
    g'4 bes8 bes4 ees8 | ees4 ees8 bes ees4 | %2
g, a8 bes4 bes8 | aes4 aes8 g4. | %4
g4 bes8 bes4 ees8 | ees4 ees8 bes ees4 | %6
ees ees8 bes4 bes8 | aes4 bes8 g4. | %8
ees'4 ees8 ees c4 | ees4. ees8 ees4 | %10
ees ees8 ees4 c8 | ees4 bes8 bes4. | %12
g4 bes8 bes4 ees8 | ees4 ees8 bes ees4 | %14
bes bes8 bes bes bes aes4 bes8 g4.
}
BBHGDxAIMusicLHB = \relative c{ \BBHGDxAIMusicGlobal \clef "bass"
    ees4 bes8 ees4 ees8 | ees4 ees8 ees ees4 | %2
ees c8 bes4 bes8 | bes4 bes8 ees4. | %4
ees4 bes8 ees4 ees8 | ees4 ees8 ees ees4 | %6
ees ees8 ees4 g,8 | bes4 bes8 ees4. | %8
ees4 ees8 aes aes4 | aes4. ees8 ees4 | %10
ees ees8 aes4 aes8 | ees4 ees8 bes4. | %12
ees4 bes8 ees4 ees8 | ees4 ees8 ees ees4 | %14
g f8 ees \fpre ees \fpostbelow g, bes4 bes8 ees4.
}
BBHGDxAIMusicLH =  \partCombine #'(2 . 20)  \BBHGDxAIMusicLHA \BBHGDxAIMusicLHB
BBHGDxAIMusicLyrics = \relative c''''{ \BBHGDxAIMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c8 c4 c8 c4 c8 c8 c4 c4 c8 c4 c8 c4 c8 c4. c4 c8 c4 c8 c4 c8 c8 c4 c4 c8 c4 c8 c4 c8 c4. c4 c8 c8 c4 c4. c8 c4 c4 c8 c4 c8 c8  s8 c8 c4. c4 c8 c4 c8 c4 c8 c8 c4 c4 c8 c8 c8 c8 c4 c8 c4.
}

BBHGExAFGMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 104
    \time 6/8
    \key g \major
    
}
BBHGExAFGMusicRHA = \relative c'{ \BBHGExAFGMusicGlobal \clef "treble"
    b'4. c4 c8 | b4. \pcAO g | g a4 a8 | %3
\nbp b2. | b4. c4 c8 | b4. \pcAO g | %6
a b4 a8  |  \nbp g2. | c4. c4 c8 | %9
c4 b8 b4. | d a4 c8 | c4 b8 b4. | %12
g g4 g8 | g4 a8 b4. | b b4 a8 \pcAO \nbp g2. \he
}
BBHGExAFGMusicRHB = \relative c'{ \BBHGExAFGMusicGlobal \clef "treble"
    d4. e4 e8 | d4. g | e fis4 fis8 | g2. | %4
d4. e4 e8 | d4. g | d d4 c8 | b2. | %8
e4. e4 e8 | e4 d8 d4. | fis fis4 a8 | %11
a4 g8 g4. | b, c4 d8 | e4 e8 d4. | %14
d4 (g8) fis4 fis8 g2.
}
BBHGExAFGMusicRH =  \partCombine #'(2 . 20)  \BBHGExAFGMusicRHA \BBHGExAFGMusicRHB
BBHGExAFGMusicLHA = \relative c{ \BBHGExAFGMusicGlobal \clef "bass"
    \pcAO g'4. \pcAO g4 \pcAO g8 \pcAO | %1
g4. b | b d4 d8 | d2. \pcAO | %4
g,4. \pcAO g4 \pcAO g8 \pcAO | g4. b | %6
fis g4 fis8 | \pcAO g2. | g4. g4 g8 \pcAO | %9
g4 \pcAO g8 \pcAO g4. | a d4 d8 | %11
d4 d8 d4. | g, g4 g8 | g4 g8 g4. | %14
g4 (b8) d4 c8 b2.
}
BBHGExAFGMusicLHB = \relative c{ \BBHGExAFGMusicGlobal \clef "bass"
    g'4. g4 g8 | g4. g | e d4 d8 | g2. | %4
g4. g4 g8 | g4. g | d d4 d8 | g2. | %8
c,4. c4 e8 | g4 g8 g4. | d d4 fis8 | %11
g4 g8 g4. | g, a4 b8 | c4 c8 g4. | %14
d' d4 d8 g,2.
}
BBHGExAFGMusicLH =  \partCombine #'(2 . 20)  \BBHGExAFGMusicLHA \BBHGExAFGMusicLHB
BBHGExAFGMusicLyrics = \relative c''''{ \BBHGExAFGMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4. c4 c8 c4. c4. c4. c4 c8 c2. c4. c4 c8 c4. c4. c4. c4 c8 c2. c4. c4 c8 c4 c8 c4. c4. c4 c8 c4 c8 c4. c4. c4 c8 c4 c8 c4. c4. c4 c8 c2.
}

BBHGFxAHZMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 96
    \time 4/4
    \key es \major
    \partial 4
    
}
BBHGFxAHZMusicRHA = \relative c'{ \BBHGFxAHZMusicGlobal \clef "treble"
    \pcAp ees8 [f] \pcAu | %1
\nbp g4. g8 g4 f | g bes bes \lbp ees | %3
\nbp c4. bes8 c4 ees | %4
\nbp c (bes2) \pcAp \lbp ees,8 [f] \pcAu | %5
\nbp g4. g8 g4 f | g bes c4. \lbp bes8 | %7
\nbp bes4 g f4. \pcAO ees8 | %8
\nbp ees2. \lbp bes'4 | %9
\nbp bes ees ees4. d8 | %10
d4 c c \lbp ees  | %11
 bes4. c8 c [bes] aes [g] | %12
\nbp g2 (f4) \pcAp \lbp ees8 [f] \pcAu | %13
\nbp g4. g8 g4 f | g bes c4. \lbp bes8 | %15
\nbp bes4 g f4. \pcAp ees8 | %16
\nbp ees2. \pcAu \lbp ees8 [f] | %17
 g2 f \pcAO \nbp ees2. \he
}
BBHGFxAHZMusicRHB = \relative c'{ \BBHGFxAHZMusicGlobal \clef "treble"
    ees8 [d] | ees4. ees8 ees4 d | %2
ees d ees ees | ees4. ees8 ees4 ees | %4
ees2. ees8 [d] | ees4. ees8 ees4 d | %6
ees ees ees4. ees8 | ees4 ees d4. ees8 | %8
bes2. ees4 | f ees ees4. f8 | %10
f4 f aes bes | %11
g4. aes8 aes [g] f [ees] | %12
ees2 (d4) ees8 [d] | %13
ees4. ees8 ees4 d | ees ees ees4. ees8 | %15
ees4 ees d4. ees8 | ees2. c8 [d] | %17
ees2 c4 (d) ees2.
}
BBHGFxAHZMusicRH =  \partCombine #'(2 . 20)  \BBHGFxAHZMusicRHA \BBHGFxAHZMusicRHB
BBHGFxAHZMusicLHA = \relative c{ \BBHGFxAHZMusicGlobal \clef "bass"
    bes'4 | bes4. bes8 bes4 bes | %2
bes aes g g | aes4. aes8 aes4 c | %4
aes (g2) bes4 | bes4. bes8 bes4 bes | %6
bes g aes4. g8 | g4 bes aes4. g8 | %8
g2. g4 | bes g g4. bes8 \pcAO | %10
bes4 d d ees | %11
ees4. d8 d [ees] d [c] \pcAO | %12
bes2. bes4 | bes4. bes8 bes4 bes | %14
bes g aes4. g8 | g4 bes aes4. g8 | %16
g2. g8 aes | bes2 aes g2.
}
BBHGFxAHZMusicLHB = \relative c{ \BBHGFxAHZMusicGlobal \clef "bass"
    g'8 [f] | ees4. ees8 ees4 aes | %2
g f ees c | aes4. aes8 aes4 aes | %4
c (ees2) g8 [f] | ees4. ees8 ees4 bes | %6
ees ees aes,4. bes8 | bes4 bes bes4. ees8 | %8
ees2. ees4 | d c bes4. bes8 | %10
bes'4 aes aes g | %11
ees4. f8 f [g] aes [a] | %12
bes2. g8 [f] | ees4. ees8 ees4 bes | %14
ees ees aes,4. bes8 | bes4 bes bes4. ees8 | %16
ees2. c8 [b] | bes4 (g) aes (bes) ees2.
}
BBHGFxAHZMusicLH =  \partCombine #'(2 . 20)  \BBHGFxAHZMusicLHA \BBHGFxAHZMusicLHB
BBHGFxAHZMusicLyrics = \relative c''''{ \BBHGFxAHZMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c4. c8 c4 c4 c4 c4 c4 c4 c4. c8 c4 c4 c4  s2 c8  s8 c4. c8 c4 c4 c4 c4 c4. c8 c4 c4 c4. c8 c2. c4 c4 c4 c4. c8 c4 c4 c4 c4 c4. c8 c8  s8 c8  s8 c2  s4 c8  s8 c4. c8 c4 c4 c4 c4 c4. c8 c4 c4 c4. c8 c2. c8  s8 c2 c2 c2.
}

BBHGGxABMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 2 = 68
    \time 3/2
    \key as \major
    \partial 2
    
}
BBHGGxABMusicRHA = \relative c'{ \BBHGGxABMusicGlobal \clef "treble"
    ees2 |  \nbp ees4 aes c2 bes | %2
aes4 f ees2 \breathe \lbp ees | %3
\nbp ees4 aes c2 aes | %4
\nbp bes1 \lbp des2 | %5
\nbp c4 bes aes2 bes | %6
c4 aes f2 \breathe \lbp ees | %7
\nbp ees4 aes c2 bes \nbp aes1 \he
}
BBHGGxABMusicRHB = \relative c'{ \BBHGGxABMusicGlobal \clef "treble"
    c2 | c4 c ees2 des | c4 des c2 c | %3
c4 c c2 c | ees1 ees2 | ees4 des c2 ees | %6
ees4 ees des2 bes | c4 c ees2 des c1
}
BBHGGxABMusicRH =  \partCombine #'(2 . 20)  \BBHGGxABMusicRHA \BBHGGxABMusicRHB
BBHGGxABMusicLHA = \relative c{ \BBHGGxABMusicGlobal \clef "bass"
    aes'2 | aes4 aes aes2 g | %2
aes4 aes aes2 aes | %3
aes4 \pcAO aes aes2 aes | g1 g2 \pcAO | %5
aes4 g aes2 g \pcAO | aes4 aes aes2 g | %7
aes4 aes aes2 g aes1
}
BBHGGxABMusicLHB = \relative c{ \BBHGGxABMusicGlobal \clef "bass"
    aes2 | aes4 aes aes2 ees' | %2
f4 des aes2 aes | aes4 aes' f2 f | %4
ees1 ees2 | aes4 ees f2 ees | %6
aes4 c, des2 ees | aes,4 f' ees2 ees aes,1
}
BBHGGxABMusicLH =  \partCombine #'(2 . 20)  \BBHGGxABMusicLHA \BBHGGxABMusicLHB
BBHGGxABMusicLyrics = \relative c''''{ \BBHGGxABMusicGlobal \clef "treble"
    \hideNotes \voiceFour c2 c4 c4 c2 c2 c4 c4 c2 c2 c4 c4 c2 c2 c1 c2 c4 c4 c2 c2 c4 c4 c2 c2 c4 c4 c2 c2 c1
}

BBHGHxBCGMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 68
    \time 3/4
    \key g \major
    \partial 4.
    
}
BBHGHxBCGMusicRHA = \relative c'{ \BBHGHxBCGMusicGlobal \clef "treble"
    \pcAO d8 \pcAO e \pcAO fis | %1
g4. fis8 g a | %2
\nbp fis4. \pcAO \lbp d8 fis a | d2 c4 | %4
\nbp b4. \lbp b8 b b | e4. b8 d8. c16 | %6
\nbp c4. \lbp c8 c c | d4. a8 c8. b16 | %8
\nbp b2 \lbp g4 |  \nbp g4. g8 a g | %10
\nbp b2 \lbp d,4 |  \nbp d4. d8 e d \nbp g4. \he
}
BBHGHxBCGMusicRHB = \relative c'{ \BBHGHxBCGMusicGlobal \clef "treble"
    d8 e fis | d4. d8 d d | d4. d8 d fis | %3
fis2 a4 | g4. g8 g a | g4. g8 b8. a16 | %6
a4. a8 a a | a4. fis8 f8. f16 | f2 f4 | %9
e4. e8 dis dis | d2 b4 | a4. b8 c c b4.
}
BBHGHxBCGMusicRH =  \partCombine #'(2 . 20)  \BBHGHxBCGMusicRHA \BBHGHxBCGMusicRHB
BBHGHxBCGMusicLHA = \relative c{ \BBHGHxBCGMusicGlobal \clef "bass"
    \pcAO d'8 \pcAO cis d \pcAO | %1
b4. c8 b c | a4. fis8 a d | a2 d4 | %4
d4. d8 d dis | e4. e8 e8. e16 | %6
e4. e8 e e | d4. d8 d8. d16 | d2 d4 | %9
c4. g8 g g | g2 g4 | fis4. g8 fis fis g4.
}
BBHGHxBCGMusicLHB = \relative c{ \BBHGHxBCGMusicGlobal \clef "bass"
    d'8 cis c | b4. a8 g fis | d4. d8 d d | %3
d2 fis4 | g4. g8 g fis | e4. e8 a8. a16 | %6
a4. a8 a g | fis4. d8 g8. g16 | g2 b,4 | %9
c4. c8 c c | g2 g8 [b] | c4. b8 a d g,4.
}
BBHGHxBCGMusicLH =  \partCombine #'(2 . 20)  \BBHGHxBCGMusicLHA \BBHGHxBCGMusicLHB
BBHGHxBCGMusicLyrics = \relative c''''{ \BBHGHxBCGMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c2 c4 c4. c8 c8 c8 c4. c8 c8. c16 c4. c8 c8 c8 c4. c8 c8. c16 c2 c4 c4. c8 c8 c8 c2 c4 c4. c8 c8 c8 c4.
}

BBHGIxAHCMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 108
    \time 4/4
    \key es \major
    \partial 4
    
}
BBHGIxAHCMusicRHA = \relative c'{ \BBHGIxAHCMusicGlobal \clef "treble"
    ees4 |  \nbp ees4. \pcAO ees8 f4 g | %2
aes4. aes8 g4 \lbp bes | %3
\nbp ees g, g a |  \nbp bes2. \lbp aes4 | %5
\nbp g4. g8 aes4 bes  | %6
c c bes \lbp g |  \nbp bes2. aes4 \nbp g2. \he
}
BBHGIxAHCMusicRHB = \relative c'{ \BBHGIxAHCMusicGlobal \clef "treble"
    bes4 | bes4. ees8 ees4 ees | %2
ees4. ees8 ees4 ees8 [d] | %3
ees4 ees ees ees | d2. d4 | %5
ees4. ees8 ees4 des | c d ees ees | %7
ees2 (d4) d ees2.
}
BBHGIxAHCMusicRH =  \partCombine #'(2 . 20)  \BBHGIxAHCMusicRHA \BBHGIxAHCMusicRHB
BBHGIxAHCMusicLHA = \relative c{ \BBHGIxAHCMusicGlobal \clef "bass"
    g'4 | g4. g8 aes4 bes | %2
c4. c8 bes4 g8 [aes] | bes4 bes bes c | %4
bes2. bes4 | bes4. bes8 c4 g | %6
aes aes bes bes | g2 (f4) bes bes2.
}
BBHGIxAHCMusicLHB = \relative c{ \BBHGIxAHCMusicGlobal \clef "bass"
    ees4 | ees4. ees8 ees4 ees | %2
aes,4. aes8 ees'4 ees8 [f] | g4 ees c f | %4
bes,2. bes4 | ees4. ees8 ees4 ees | %6
aes f g ees | bes2. bes4 ees2.
}
BBHGIxAHCMusicLH =  \partCombine #'(2 . 20)  \BBHGIxAHCMusicLHA \BBHGIxAHCMusicLHB
BBHGIxAHCMusicLyrics = \relative c''''{ \BBHGIxAHCMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c4. c8 c4 c4 c4. c8 c4 c4 c4 c4 c4 c4 c2. c4 c4. c8 c4 c4 c4 c4 c4 c4 c2. c4 c2.
}

BBHHZxCAEMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 68
    \time 3/4
    \key g \major
    \partial 4.
    
}
BBHHZxCAEMusicRHA = \relative c'{ \BBHHZxCAEMusicGlobal \clef "treble"
    \pcAp d8 e fis \pcAu | g4. fis8 g a | %2
\nbp fis4. \pcAO \lbp d8 fis a | d2 c4 | %4
\nbp b4. \lbp b8 b b | e4. b8 d8. c16 | %6
\nbp c4. \lbp c8 c c | d4. a8 c8. b16 | %8
\nbp b2 \lbp g4 |  \nbp g4. g8 a g | %10
\nbp b2 \lbp d,4 |  \nbp d4. d8 e d \nbp g4. \he
}
BBHHZxCAEMusicRHB = \relative c'{ \BBHHZxCAEMusicGlobal \clef "treble"
    d8 e fis | d4. d8 d d | d4. d8 d fis | %3
fis2 a4 | g4. g8 g a | g4. g8 b8. a16 | %6
a4. a8 a a | a4. fis8 f8. f16 | f2 f4 | %9
e4. e8 dis dis | d2 b4 | a4. b8 c c b4.
}
BBHHZxCAEMusicRH =  \partCombine #'(2 . 20)  \BBHHZxCAEMusicRHA \BBHHZxCAEMusicRHB
BBHHZxCAEMusicLHA = \relative c{ \BBHHZxCAEMusicGlobal \clef "bass"
    \pcAp d'8 c \pcAu d | d4. c8 b c | %2
a4. fis8 a d | a2 d4 | d4. d8 d dis | %5
e4. e8 e8. e16 | e4. e8 e e | %7
d4. d8 d8. d16 | d2 d4 | c4. g8 g g | %10
g2 g4 | fis4. g8 fis fis g4.
}
BBHHZxCAEMusicLHB = \relative c{ \BBHHZxCAEMusicGlobal \clef "bass"
    d'8 cis c | b4. a8 g fis | d4. d8 d d | %3
d2 fis4 | g4. g8 g fis | e4. e8 a8. a16 | %6
a4. a8 a g | fis4. d8 g8. g16 | g2 b,4 | %9
c4. c8 c c | g2 g8 [b] | c4. b8 a d g,4.
}
BBHHZxCAEMusicLH =  \partCombine #'(2 . 20)  \BBHHZxCAEMusicLHA \BBHHZxCAEMusicLHB
BBHHZxCAEMusicLyrics = \relative c''''{ \BBHHZxCAEMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c2 c4 c4. c8 c8 c8 c4. c8 c8. c16 c4. c8 c8 c8 c4. c8 c8. c16 c2 c4 c4. c8 c8 c8 c2 c4 c4. c8 c8 c8 c4.
}

BBHHAxAIAMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 76
    \time 4/4
    \key a \major
    \partial 4
    
}
BBHHAxAIAMusicRHA = \relative c'{ \BBHHAxAIAMusicGlobal \clef "treble"
    \repeat volta 2 {cis8. d16 | %1
\nbp e4. e8 fis4 e | %2
e8 a4.~a4 \lbp a8. b16 | %3
\nbp cis4. a8 b4 b |\nbp a2.}  a8. b16 | %5
\nbp cis4. b8 cis4 d | %6
\nbp e2. \lbp cis8.  d16 | %7
\nbp e4. cis8 d4 cis | %8
\nbp b2. \lbp cis8.  b16 | %9
\nbp a4. b8 a4 fis | %10
\nbp e2. \lbp a8.  b16 | %11
\nbp cis4. a8 b4 b \pcAO | %12
\nbp a2. \cbp \pcAp a8. \postCho  b16 | %13
\nbp cis2. \pcAu \pcAO a8. \pcAO fis16 | %14
e2. \lbp \pcAO a8. \pcAO cis16 | %15
e2. \pcAO cis8. \pcAO a16 \nbp | b2. \lbp a8. b16 | %17
\nbp cis4  cis b a |\nbp  e2. \lbp a8. b16 \nbp | %19
cis4. a8 b4 b a2. \he
}
BBHHAxAIAMusicRHB = \relative c'{ \BBHHAxAIAMusicGlobal \clef "treble"
    a8. b16 | cis4. cis8 d4 cis | %2
cis8 cis4.~cis4 e8. fis16 | %3
e4. cis8 d4 d | cis2. e8. e16 | %5
e4. e8 e4 e | a2. e8. e16 | a4. e8 e4 e | %8
e2. f8. f16 | fis4. fis8 fis4 d | %10
cis2. e8. fis16 | e4. e8 gis4 gis | %12
a2. r4 | r e8. e16 e4 r | %14
r cis8. cis16 cis4 r | r a'8. a16 a4 r | %16
r e8. e16 e4 e8. e16 | e4 e d cis | %18
cis2. e8. fis16 | e4. cis8 d4 d cis2.
}
BBHHAxAIAMusicRH =  \partCombine #'(2 . 20)  \BBHHAxAIAMusicRHA \BBHHAxAIAMusicRHB
BBHHAxAIAMusicLHA = \relative c{ \BBHHAxAIAMusicGlobal \clef "bass"
    e8. e16 | a4. a8 a4 a | %2
a8 e4.~e4 a8. a16 | a4. a8 gis4 gis | %4
a2. a8. gis16 \pcAO | %5
a4. gis8 \pcAO a4 b | %6
cis2. \pcAO a8. b16 | %7
cis4. \pcAO a8 b4 \pcAO a | %8
gis2. gis8. cis16 | cis4. cis8 d4 a | %10
a2. a8. a16 | a4. cis8 d4 d | cis2. r4 | %13
r a8. a16 a4 r | r a8. a16 a4 r | %15
r cis8. cis16 cis4 r | %16
r gis8. gis16 gis4 a8. gis16 | a4 a e e | %18
a2. a8. a16 | a4. \pcAO e8 gis4 gis a2.
}
BBHHAxAIAMusicLHB = \relative c{ \BBHHAxAIAMusicGlobal \clef "bass"
    a8. a16 | a4. a8 a4 a | %2
a8 a4.~a4 cis8. d16 | e4. e8 e4 e | %4
a,2. cis8. e16 | a4. e8 a4 a | %6
a2. a8. a16 | a4. a8 gis4 a | %8
e2. cis8. cis16 | fis4. fis8 d4 d | %10
a2. cis8. d16 | e4. e8 e4 e | a,2. r4 | %14
r a8. a16 a4 r4 r a8. a16 a4 r | %15
r a'8. a16 a4 r | %16
r e8. e16 e8 [d] cis8. b16 | a4 a a a | %18
a2. cis8. d16 | e4. e8 e4 e a,2.
}
BBHHAxAIAMusicLH =  \partCombine #'(2 . 20)  \BBHHAxAIAMusicLHA \BBHHAxAIAMusicLHB
BBHHAxAIAMusicLyrics = \relative c''''{ \BBHHAxAIAMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8. c16 c4. c8 c4 c4 c8 c4.  s4 c8. c16 c4. c8 c4 c4 c4.  s4. c8. c16 c4. c8 c4 c4 c2. c8. c16 c4. c8 c4 c4 c2. c8. c16 c4. c8 c4 c4 c2. c8. c16 c4. c8 c4 c4 c2. c8. c16 c2. c8. c16 c2. c8. c16 c2. c8. c16 c2. c8. c16 c4 c4 c4 c4 c2. c8. c16 c4. c8 c4 c4 c2.
}

BBHHBxADGMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 104
    \time 4/4
    \key c \major
    \partial 4
    
}
BBHHBxADGMusicRHA = \relative c'{ \BBHHBxADGMusicGlobal \clef "treble"
    c4 |  \nbp d c f e | %2
\nbp d2 \pcAO c4 \lbp e | %3
\nbp g c b gis |  \nbp a2. \lbp a4 | %5
\nbp g e e \pcAO d | %6
\nbp c2 d4 \lbp e |  \nbp e e d c | %8
\nbp d2. \lbp d4 |  \nbp f e a b | %10
\nbp c2 d4 \pcAO \lbp g, | %11
\nbp e'4. e8 d4 c |  \nbp b2. \lbp a4 | %13
\nbp g e e d |  \nbp c2 d4 \lbp e | %15
\nbp e e d4. \pcAO c8 \pcAO \nbp c2. \he
}
BBHHBxADGMusicRHB = \relative c'{ \BBHHBxADGMusicGlobal \clef "treble"
    g4 | g g c c | b2 c4 c | c e e d | %4
c2. f4 | e c b d | a2 b4 c | c c a a | %8
b2. b4 | c c c e | e2 g4 g | %11
g4. g8 f4 f | g2. b,4 | c c b gis | %14
a2 b4 c | c c b4. c8 c2.
}
BBHHBxADGMusicRH =  \partCombine #'(2 . 20)  \BBHHBxADGMusicRHA \BBHHBxADGMusicRHB
BBHHBxADGMusicLHA = \relative c{ \BBHHBxADGMusicGlobal \clef "bass"
    e4 | f e a g | f2 e4 e | e g gis b | %4
a2. c4 | c g gis gis | e2 g4 g | %7
g g f e | g2. g4 | a g a gis \pcAO | %10
a2 b4 b | c4. c8 a4 c | d2. d4 | %13
g, g gis e | e2 g4 g | g g f4. e8 e2.
}
BBHHBxADGMusicLHB = \relative c{ \BBHHBxADGMusicGlobal \clef "bass"
    c4 | c c c c | g2 a4 c | c c e e | %4
a,2. f4 | c' c e e | a,2 g4 c | %7
c c f, a | g2. g4 | f c' f e | a2 g4 g | %11
c,4. c8 f4 a | g2. f4 | e c e e, | %14
a2 g4 c | c c g4. c8 c2.
}
BBHHBxADGMusicLH =  \partCombine #'(2 . 20)  \BBHHBxADGMusicLHA \BBHHBxADGMusicLHB
BBHHBxADGMusicLyrics = \relative c''''{ \BBHHBxADGMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c4 c4 c4 c4 c2 c4 c4 c4 c4 c4 c4 c2. c4 c4 c4 c4 c4 c2 c4 c4 c4 c4 c4 c4 c2. c4 c4 c4 c4 c4 c2 c4 c4 c4. c8 c4 c4 c2. c4 c4 c4 c4 c4 c2 c4 c4 c4 c4 c4. c8 c2.
}

BBHHCxDMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 2 = 68
    \time 4/4
    \key as \major
    
}
BBHHCxDMusicRHA = \relative c'{ \BBHHCxDMusicGlobal \clef "treble"
    ees2 ees4 f \pcAO | ees2 aes | %2
aes4 g aes bes |  \nbp c1 | %4
aes2 aes4 bes | aes2 c | c4 bes c d | %7
\nbp ees1 | ees2 aes,4 aes | des2 des | %10
des4 bes c des |  \nbp c1 | %12
aes2 bes4 aes | aes2 f | ees4 ees f ees \nbp ees1 \he
}
BBHHCxDMusicRHB = \relative c'{ \BBHHCxDMusicGlobal \clef "treble"
    c2 c4 c | ees2 ees | des4 des des des | %3
c1 | ees2 ees4 ees | f2 aes | %6
aes4 aes aes aes | g1 | ees2 ees4 ees | %9
f2 f | ees4 ees ees ees | ees1 | %12
c2 c4 c | des2 des | bes4 bes des des c1
}
BBHHCxDMusicRH =  \partCombine #'(2 . 20)  \BBHHCxDMusicRHA \BBHHCxDMusicRHB
BBHHCxDMusicLHA = \relative c{ \BBHHCxDMusicGlobal \clef "bass"
    aes'2 aes4 aes | aes2 aes | ees4 ees f g | %3
aes1 | c2 c4 c | c2 c | d4 d c bes | %7
bes1 | aes2 \pcAO c4 \pcAO c | %9
des2 bes | bes4 bes g g | aes1 | %12
aes2 aes4 aes | f2 aes | g4 g g g aes1
}
BBHHCxDMusicLHB = \relative c{ \BBHHCxDMusicGlobal \clef "bass"
    aes2 aes4 aes | c2 c | bes4 bes bes bes | %3
aes1 | aes'2 aes4 aes | f2 f | %6
bes,4 bes bes bes | ees1 | c2 c'4 c | %9
bes2 aes | g4 g ees ees | aes,1 | %12
f'2 f4 f | des2 des | ees4 ees ees ees aes,1
}
BBHHCxDMusicLH =  \partCombine #'(2 . 20)  \BBHHCxDMusicLHA \BBHHCxDMusicLHB
BBHHCxDMusicLyrics = \relative c''''{ \BBHHCxDMusicGlobal \clef "treble"
    \hideNotes \voiceFour c2 c4 c4 c2 c2 c4 c4 c4 c4 c1 c2 c4 c4 c2 c2 c4 c4 c4 c4 c1 c2 c4 c4 c2 c2 c4 c4 c4 c4 c1 c2 c4 c4 c2 c2 c4 c4 c4 c4 c1
}

BBHHDxBBFMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 120
    \time 3/4
    \key f \major
    
}
BBHHDxBBFMusicRHA = \relative c'{ \BBHHDxBBFMusicGlobal \clef "treble"
    a'4 a a | bes2 \pcAO f4 |  \nbp a2. | %3
c4 bes a | g2 a4 |  \nbp g2. | a4 bes d | %7
c2 a4 | a2 g4 |  \nbp bes2 \lbp g4 | %10
\nbp f (e) f | a2 g4 \pcAO \nbp f2. \he
}
BBHHDxBBFMusicRHB = \relative c'{ \BBHHDxBBFMusicGlobal \clef "treble"
    f4 f f | f2 f4 | f2. | f4 e f | %4
f2 f4 | e2. | f4 f e | f2 f8 [e] | %8
d2 d4 | d2 d4 | c2 c4 | f2 e4 f2.
}
BBHHDxBBFMusicRH =  \partCombine #'(2 . 20)  \BBHHDxBBFMusicRHA \BBHHDxBBFMusicRHB
BBHHDxBBFMusicLHA = \relative c{ \BBHHDxBBFMusicGlobal \clef "bass"
    c'4  f e | d2  des4 | c2. | %3
c4 c c | d2 d4 | e2. | %6
c4 d bes \pcAO | a2 c4 | c2 bes4 | %9
bes2 bes4 | a (g) a | c2 bes4 a2.
}
BBHHDxBBFMusicLHB = \relative c{ \BBHHDxBBFMusicGlobal \clef "bass"
    f4 f f | f2 f4 | f2. | a4 g f | %4
bes,2 b4 | c2. | f4 f g | a2 f4 | %8
bes,2 bes4 | g2 bes4 | c2 c4 | c2 c4 f,2.
}
BBHHDxBBFMusicLH =  \partCombine #'(2 . 20)  \BBHHDxBBFMusicLHA \BBHHDxBBFMusicLHB
BBHHDxBBFMusicLyrics = \relative c''''{ \BBHHDxBBFMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c4 c4 c2 c4 c2. c4 c4 c4 c2 c4 c2. c4 c4 c4 c2 c4 c2 c4 c2 c4 c4  s4 c4 c2 c4 c2.
}

BBHHExBFFMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 2 = 84
    \time 4/4
    \key es \major
    
}
BBHHExBFFMusicRHA = \relative c'{ \BBHHExBFFMusicGlobal \clef "treble"
    g'2 g4 aes | bes2. ees,4 | d2 f | %3
\nbp ees1 | g2 aes4 bes | c2 f, | %6
\nbp f1 | d'2 c4 bes | ees2. bes4 | %9
aes2 bes |  \nbp g1 | bes2 aes4 f \pcAO | %12
c2 d \nbp ees1 \he
}
BBHHExBFFMusicRHB = \relative c'{ \BBHHExBFFMusicGlobal \clef "treble"
    ees2 ees4 d | ees2. bes4 | bes2 bes | %3
bes1 | ees2 d4 ees | ees2 ees | d1 | %7
f2 f4 f | ees2. ees4 | ees2 d | ees1 | %11
des2 c4 c | c2 bes bes1
}
BBHHExBFFMusicRH =  \partCombine #'(2 . 20)  \BBHHExBFFMusicRHA \BBHHExBFFMusicRHB
BBHHExBFFMusicLHA = \relative c{ \BBHHExBFFMusicGlobal \clef "bass"
    bes'2 bes4 bes | bes2. g4 | f2 aes | g1 | %4
bes2 bes4 bes \pcAO | aes2 c \pcAO | %6
bes1 | bes2 bes4 bes | bes2. bes4 | %9
c2 bes | bes1 | ees,2 ees4 f | %12
aes (g) f (aes) g1
}
BBHHExBFFMusicLHB = \relative c{ \BBHHExBFFMusicGlobal \clef "bass"
    ees2 ees4 f | g2. bes,4 | bes2 bes | %3
ees1 | ees2 f4 g | aes2 a | bes1 | %7
aes2 aes4 aes | g2. g4 | f2 bes, | ees1 | %11
g,2 aes4 aes | aes2 bes ees1
}
BBHHExBFFMusicLH =  \partCombine #'(2 . 20)  \BBHHExBFFMusicLHA \BBHHExBFFMusicLHB
BBHHExBFFMusicLyrics = \relative c''''{ \BBHHExBFFMusicGlobal \clef "treble"
    \hideNotes \voiceFour c2 c4 c4 c2. c4 c2 c2 c1 c2 c4 c4 c2 c2 c1 c2 c4 c4 c2. c4 c2 c2 c1 c2 c4 c4 c2 c2 c1
}

BBHHFxCEHMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 62
    \time 3/4
    \key bes \major
    \partial 4.
    
}
BBHHFxCEHMusicRHA = \relative c'{ \BBHHFxCEHMusicGlobal \clef "treble"
    d8 ees e | f4. d'8 d8. c16 | %2
\nbp bes4. \lbp f8 d f | a4. a8 c8. g16 | %4
\nbp g4 ( \set Score.tempoHideNote = ##t \tempo 4 = 31  \fpre f8) \fpost \set Score.tempoHideNote = ##t \tempo 4 = 62   \lbp d ees e | %5
f4. d'8 d8. c16 | %6
\nbp bes4. \lbp bes8 bes bes | %7
bes4 r8 d, d8. c16 \pcAO | %8
\nbp bes4. \cbp bes'8 \postCho a8. g16 | %9
f4. d8 f8. \pcAO d16 | %10
\nbp f4. \lbp a8 g8. f16 | %11
a4. g8 f8. g16 \pcAO | %12
\nbp d4. \lbp bes'8 a8. g16 | %13
f4. \pcAO d8 f8. ges16 | %14
\nbp g4. \lbp bes8 bes bes | %15
\set Score.tempoHideNote = ##t \tempo 4 = 31  \fpre f'4. \fpost \set Score.tempoHideNote = ##t \tempo 4 = 62   d8 d8. c16 \nbp bes4. \he
}
BBHHFxCEHMusicRHB = \relative c'{ \BBHHFxCEHMusicGlobal \clef "treble"
    bes8 c cis | d4. f8 f8. ees16 | %2
d4. d8 bes d | ees4. ees8 ees8. ees16 | %4
ees4 (d8) bes c des | d4. f8 f8. ees16 | %6
d4. d8 des des | d4 r8 bes a8. a16 | %8
bes4. d8 d8. d16 | d4. bes8 d8. d16 | %10
ees4. ees8 ees8. ees16 | %11
ees4. ees8 ees8. ees16 | d4. d8 d8. d16 | %13
d4. d8 d8. d16 | ees4. g8 f ees | %15
f4. f8 f8. ees16 d4.
}
BBHHFxCEHMusicRH =  \partCombine #'(2 . 20)  \BBHHFxCEHMusicRHA \BBHHFxCEHMusicRHB
BBHHFxCEHMusicLHA = \relative c{ \BBHHFxCEHMusicGlobal \clef "bass"
    f8 f f | bes4. bes8 a8. a16 | %2
bes4. bes8 f bes | c4. c8 a8. a16 | %4
bes4 (bes8) f8 f g | f4. bes8 a8. a16 | %6
bes4. bes8 bes bes | bes4 r8 f f8. ees16 | %8
d4. f8 f8. f16 | bes4. f8 bes8. bes16 | %10
a4. c8 bes8. a16 | c4. c8 a8. a16 | %12
bes4. f8 f8. f16 | bes4. f8 bes8. bes16 | %14
bes4. ees8 d c | bes4. bes8 a8. a16 f4.
}
BBHHFxCEHMusicLHB = \relative c{ \BBHHFxCEHMusicGlobal \clef "bass"
    bes8 bes bes | bes4. bes8 f'8. f16 | %2
bes,4. bes8 bes bes | f'4. f8 f8. f16 | %4
bes,4 (\fpre bes8) \fpostbelow bes8 bes bes | bes4. bes8 f'8. f16 | %6
g4. g8 ges ges | f4 r8 f, f8. f16 | %8
bes4. bes8 bes8. bes16 | %9
bes4. bes8 bes8. bes16 | c4. f8 f8. f16 | %11
f4. f8 f8. f16 | bes,4. bes8 bes8. bes16 | %13
bes4. bes8 bes8. bes16 | %14
ees4. bes'8 bes bes | \fpre f4. \fpostbelow f8 f8. f16 bes,4.
}
BBHHFxCEHMusicLH =  \partCombine #'(2 . 20)  \BBHHFxCEHMusicLHA \BBHHFxCEHMusicLHB
BBHHFxCEHMusicLyrics = \relative c''''{ \BBHHFxCEHMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8 c8 c8 c4. c8 c8. c16 c4. c8 c8 c8 c4. c8 c8. c16 c4  s8 c8 c8 c8 c4. c8 c8. c16 c4. c8 c8 c8 c4  s8 c8 c8. c16 c4. c8 c8. c16 c4. c8 c8. c16 c4. c8 c8. c16 c4. c8 c8. c16 c4. c8 c8. c16 c4. c8 c8. c16 c4. c8 c8 c8 c4. c8 c8. c16 c4.
}

BBHHGxBGHMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 86
    \time 4/4
    \key es \major
    
}
BBHHGxBGHMusicRHA = \relative c'{ \BBHHGxBGHMusicGlobal \clef "treble"
    bes'4 g8 f \pcAO ees4 ees'8~ees | %1
d4 c bes2 | c4 c8 c bes4 g | %3
\nbp f2. r4 | f f8 g aes4. c8 | %5
bes4 aes g2 | ees4 f8 aes \pcAO c,4 d \nbp ees2. \he
}
BBHHGxBGHMusicRHB = \relative c'{ \BBHHGxBGHMusicGlobal \clef "treble"
    ees4 ees8 ees ees4 ees8~ees | %1
ees4 ees8 [f] g2 | %2
ees4 ees8 ees ees4 ees | d2. r4 | %4
d d8 ees d4. d8 | ees4 d ees2 | %6
bes4 c8 c c4 bes8 [aes] g2.
}
BBHHGxBGHMusicRH =  \partCombine #'(2 . 20)  \BBHHGxBGHMusicRHA \BBHHGxBGHMusicRHB
BBHHGxBGHMusicLHA = \relative c{ \BBHHGxBGHMusicGlobal \clef "bass"
    g'4 bes8 aes g4 g8~g | %1
aes [bes] c [d] ees2 | %2
aes,4 aes8 aes g4 bes | bes2. r4 | %4
aes aes8 g f4. aes8 | g4 f8 [bes] bes2 | %6
g4 aes8 aes aes4 f ees2.
}
BBHHGxBGHMusicLHB = \relative c{ \BBHHGxBGHMusicGlobal \clef "bass"
    ees4 ees8 ees ees4 ees8~ees | %1
ees4 aes ees2 | ees4 ees8 ees ees4 ees | %3
bes2. r4 | bes bes8 bes bes4. bes8 | %5
bes4 bes ees2 | ees4 aes,8 aes aes4 bes ees,2.
}
BBHHGxBGHMusicLH =  \partCombine #'(2 . 20)  \BBHHGxBGHMusicLHA \BBHHGxBGHMusicLHB
BBHHGxBGHMusicLyrics = \relative c''''{ \BBHHGxBGHMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c8 c8 c4 c8 c8 c4 c4 c2 c4 c8 c8 c4 c4 c2.  s4 c4 c8 c8 c4. c8 c4 c4 c2 c4 c8 c8 c4 c4 c2.
}

BBHHHxAFFLessSylMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 90
    \time 6/8
    \key es \major
    \partial 8
    
}
BBHHHxAFFLessSylMusicRHA = \relative c'{ \BBHHHxAFFLessSylMusicGlobal \clef "treble"
    g'16 [aes] |  \nbp bes8 a bes ees4 c8 | %2
bes4. g4 \lbp g8 \nbp | bes4 aes8 aes g f \nbp | %4
g4.~g4 \lbp g16 [aes] \nbp | bes8 [a] bes ees4 c8 | %6
bes4. g4 \lbp g8 \nbp | bes4 aes8 aes (g) f \nbp \pcAp | %8
ees4.~ees4 \lbp \pcAu g8 \nbp | %9
g4 f8 f [g] aes | c4. bes4 \lbp bes8 \nbp | %11
bes (a) bes d4 c8  | bes4.~bes4 \lbp aes8 \postSegnoMark \nbp | %13
g g g bes4 \pcAO ees,8 | %14
c'4 (d8) \set Score.tempoHideNote = ##t \tempo 4 = 45  \fpre ees4 \fpost \set Score.tempoHideNote = ##t \tempo 4 = 90   \lbp c8 \nbp | %15
bes aes g g4 f8 \pcAp \nbp | %16
ees4.~ees4 \pcAu r8 \postFine \cbp | %17
g \postCho g g bes4 c8 |\nbp bes4.~bes4 r8 | %19
g g g bes4 g8 | \nbp f4.~f4 r8 \postDS \he
}
BBHHHxAFFLessSylMusicRHB = \relative c'{ \BBHHHxAFFLessSylMusicGlobal \clef "treble"
    ees8 | ees ees ees g4 aes8 | %2
g4. ees4 ees8 | g4 f8 f ees d | %4
ees4.~ees4 ees8 | ees4 ees8 g4 aes8 | %6
g4. ees4 ees8 | ees4 ees8 d8 (d) d | %8
ees4.~ees4 ees8 | ees4 d8 d [ees] f | %10
aes4. g4 g8 | f4 f8 f4 ees8 | %12
d4.~d4 d8 | ees ees ees ees4 ees8 | %14
ees4. aes4 ees8 | ees ees ees d4 d8 | %16
ees4.~ees4 r8 | ees ees ees g4 aes8 | %18
g4.~g4 r8 | ees ees ees g4 ees8 d4.~d4 r8
}
BBHHHxAFFLessSylMusicRH =  \partCombine #'(2 . 20)  \BBHHHxAFFLessSylMusicRHA \BBHHHxAFFLessSylMusicRHB
BBHHHxAFFLessSylMusicLHA = \relative c{ \BBHHHxAFFLessSylMusicGlobal \clef "bass"
    \pcAp ees16 [f] \pcAu | %1
g8 ges g bes4 ees8 | ees4. bes4 bes8 | %3
bes4 bes8 bes4 bes8 | %4
bes4.~bes4 \pcAO ees,16 [f] \pcAu | %5
g8 [fis] g bes4 ees8 | ees4. bes4 bes8 | %7
g4 c8 c (bes) aes | g4.~g4 bes8 | %9
bes4 bes8 bes4 d8 | ees4. ees4 c8 | %11
d (c) d bes4 a8 | bes4.~bes4 bes8 | %13
bes bes bes g4 g8 | aes4 bes8 c4 aes8 | %15
g c bes bes4 aes8 | g4.~g4 r8 | %17
bes bes bes ees4 ees8 | ees4.~ees4 r8 | %19
bes bes bes ees4 bes8 bes4.~bes4 r8
}
BBHHHxAFFLessSylMusicLHB = \relative c{ \BBHHHxAFFLessSylMusicGlobal \clef "bass"
    ees16 [f] | ees8 ees ees ees4 ees8 | %2
ees4. ees4 ees8 | bes4 bes8 bes4 bes8 | %4
ees4.~ees4 ees8 | ees4 ees8 ees4 ees8 | %6
ees4. ees4 ees8 | bes4 bes8 bes (bes) bes | %8
ees4.~ees4 ees8 | bes4 bes8 bes4 bes8 | %10
ees4. ees4 ees8 | f4 f8 f4 f8 | %12
bes,4.~bes4 bes8 | %13
ees ees ees ees4 ees8 | aes,4. \fpre aes4 \fpostbelow aes8 | %15
bes bes bes bes4 bes8 | ees4.~ees4 r8 | %17
ees ees ees ees4 ees8 | ees4.~ees4 r8 | %19
ees ees ees ees4 ees8 bes4.~bes4 r8
}
BBHHHxAFFLessSylMusicLH =  \partCombine #'(2 . 20)  \BBHHHxAFFLessSylMusicLHA \BBHHHxAFFLessSylMusicLHB
BBHHHxAFFLessSylMusicLyrics = \relative c''''{ \BBHHHxAFFLessSylMusicGlobal \clef "treble"
    \hideNotes \voiceFour c16  s16 c8 c8 c8 c4 c8 c4. c4 c8 c4 c8 c8  s8 c8 c4.  s4 c16  s16 c8 c8 c8 c4 c8 c4. c4 c8 c4 c8 c8  s8 c8 c4.  s4 c8 c4 c8 c8 c8 c8 c4. c4 c8 c8  s8 c8 c4 c8 c4.  s4 c8 c8 c8 c8 c4 c8 c4  s8 c4 c8 c8 c8 c8 c4 c8 c4. s4 s8 c8 c8 c8 c4 c8 c4. s4 s8 c8 c8 c8 c4 c8 c4.
}

BBHHIxAZHMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 116
    \time 4/4
    \key f \major
    \partial 4
    
}
BBHHIxAZHMusicRHA = \relative c'{ \BBHHIxAZHMusicGlobal \clef "treble"
    f4 |  \nbp a2 bes4 bes | a4. (g8) f4 a | %3
g2 e4 e |  \nbp f2. \lbp f4 | %5
\nbp a2 bes4 bes | a4. (g8) f4 a | %7
g2 e4 e |  \nbp f2. \lbp a4 | %9
\nbp c2 d4 c | bes (a) g \pcAO c, | %11
a' (c) bes g |  \nbp f2 (e4) \lbp f | %13
\nbp a2 bes4 bes | a4. (g8) f4 a | %15
c (bes) a g \pcAO \nbp f2. \he
}
BBHHIxAZHMusicRHB = \relative c'{ \BBHHIxAZHMusicGlobal \clef "treble"
    c4 | f2 f4 f | f4. (c8) c4 f | %3
c2 c4 c | c2. c4 | f2 f4 f | %6
f4. (c8) c4 f | c2 c4 c | c2. c4 | %9
f2 f4 f | e (c) c c | c2 d4 d | %12
c2. c4 | f2 f4 f | f4. (c8) c4 f | %15
f (e) e e f2.
}
BBHHIxAZHMusicRH =  \partCombine #'(2 . 20)  \BBHHIxAZHMusicRHA \BBHHIxAZHMusicRHB
BBHHIxAZHMusicLHA = \relative c{ \BBHHIxAZHMusicGlobal \clef "bass"
    a'4 | c2 d4 d | c4. (bes8) a4 c | %3
bes2 g4 g | a2. a4 | c2 d4 d | %6
c4. (bes8) a4 c | bes2 g4 g | %8
a2. \pcAO f4 | a2 bes4 a | g (f) e e | %11
f (a) g bes | a2 (g4) a | c2 d4 d | %14
c4. (bes8) a4 c | a (g) c bes a2.
}
BBHHIxAZHMusicLHB = \relative c{ \BBHHIxAZHMusicGlobal \clef "bass"
    f4 | f2 f4 f | f2 f4 f | c2 c4 c | %4
f2. f4 | f2 f4 f | f2 f4 f | c2 c4 c | %8
f2. f4 | f2 f4 f | c2 c4 c | %11
f2 bes,4 bes | c2. f4 | f2 f4 f | %14
f2 f4 f | c2 c4 c f2.
}
BBHHIxAZHMusicLH =  \partCombine #'(2 . 20)  \BBHHIxAZHMusicLHA \BBHHIxAZHMusicLHB
BBHHIxAZHMusicLyrics = \relative c''''{ \BBHHIxAZHMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c2 c4 c4 c4.  s8 c4 c4 c2 c4 c4 c2. c4 c2 c4 c4 c4.  s8 c4 c4 c2 c4 c4 c2. c4 c2 c4 c4 c4  s4 c4 c4 c4  s4 c4 c4 c2  s4 c4 c2 c4 c4 c4.  s8 c4 c4 c4  s4 c4 c4 c2.
}

BBHIZxBBAMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 2 = 120
    \time 3/2
    \key es \major
    \partial 2
    
}
BBHIZxBBAMusicRHA = \relative c'{ \BBHIZxBBAMusicGlobal \clef "treble"
    \pcAO ees2 |  \nbp bes'1 ees2 | %2
ees (d) c | bes (aes) g | %4
\nbp g (f) \lbp g |  \nbp c1 bes2 | %6
bes1 a2 |  \nbp bes1 \lbp bes2 | %8
\nbp g (aes) c | bes1 bes2 | %10
c (d) ees |  \nbp ees (d) \lbp bes | %12
\nbp ees (g,) bes | aes (g) f  \nbp ees1 \he
}
BBHIZxBBAMusicRHB = \relative c'{ \BBHIZxBBAMusicGlobal \clef "treble"
    ees2 | ees1 g2 | f1 f2 | bes, (d) ees | %4
ees (d) ees | g1 f2 | g (f) f | %7
f1 f2 | ees1 ees2 | ees (d) ees | %10
ees (aes) g | g (f) d | ees1 ees2 | %13
f (ees) d ees1
}
BBHIZxBBAMusicRH =  \partCombine #'(2 . 20)  \BBHIZxBBAMusicRHA \BBHIZxBBAMusicRHB
BBHIZxBBAMusicLHA = \relative c{ \BBHIZxBBAMusicGlobal \clef "bass"
    g'2 | bes1 bes2 \pcAO | bes1 c4 (d) | %3
ees2 (bes) bes | bes1 bes2 | ees1 d2 | %6
c1 c2 | d1 bes2 | bes (aes) aes | %9
g (aes) bes \pcAp | %10
aes (bes) \pcAu bes | bes1 \pcAO bes2 | %12
bes1 des2 | c (bes) aes g1
}
BBHIZxBBAMusicLHB = \relative c{ \BBHIZxBBAMusicGlobal \clef "bass"
    ees2 | g1 ees2 | bes'1 aes2 | %3
g (f) ees | bes1 ees2 | c1 d2 | %6
ees (f) f | bes,1 d2 | ees (c) aes | %9
ees' (f) g | aes (f) ees | %11
bes1 bes'4 (aes) | g2 (ees) g, | %13
aes (bes) bes ees1
}
BBHIZxBBAMusicLH =  \partCombine #'(2 . 20)  \BBHIZxBBAMusicLHA \BBHIZxBBAMusicLHB
BBHIZxBBAMusicLyrics = \relative c''''{ \BBHIZxBBAMusicGlobal \clef "treble"
    \hideNotes \voiceFour c2 c1 c2 c2  s2 c2 c2  s2 c2 c2  s2 c2 c1 c2 c1 c2 c1 c2 c2  s2 c2 c1 c2 c2  s2 c2 c2  s2 c2 c2  s2 c2 c2  s2 c2 c1
}

BBHIAxBDZMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 96
    \time 4/4
    \key a \major
    \partial 4
    
}
BBHIAxBDZMusicRHA = \relative c'{ \BBHIAxBDZMusicGlobal \clef "treble"
    \pcAO e4 |  \nbp cis'4. b8 a e dis e | %2
\nbp fis2. \lbp fis4 | %3
\nbp gis4. gis8 fis4 e | %4
\nbp cis'2. \pcAO \lbp e,4 | %5
\nbp cis'4. b8 a e dis e | %6
\nbp fis2. \lbp fis4 | %7
\nbp gis4. e8 cis'4. b8 | %8
\nbp a2. \lbp b4 | %9
\nbp b4. ais8 cis b \pcAO dis, cis' | %10
\nbp b2. \lbp b4 | %11
\nbp dis4. cis8 b4. a8 | %12
\nbp gis2. \lbp b4 | %13
\nbp b4. ais8 cis b \pcAO dis, cis' | %14
\nbp b2. \lbp gis4 | %15
\nbp gis4. fis8 a4. dis,8 \nbp e2. \he
}
BBHIAxBDZMusicRHB = \relative c'{ \BBHIAxBDZMusicGlobal \clef "treble"
    e4 | e4. d8 cis cis bis cis | d2. d4 | %3
d4. d8 d4 d | e2. e4 | %5
e4. d8 cis cis bis cis | d2. d4 | %7
d4. d8 e4. e8 | e2. e4 | %9
dis4. dis8 dis dis dis dis | e2. e4 | %11
a4. a8 gis4. fis8 | e2. e4 | %13
dis4. dis8 dis dis dis dis | e2. e4 | %15
e4. e8 dis4. b8 b2.
}
BBHIAxBDZMusicRH =  \partCombine #'(2 . 20)  \BBHIAxBDZMusicRHA \BBHIAxBDZMusicRHB
BBHIAxBDZMusicLHA = \relative c{ \BBHIAxBDZMusicGlobal \clef "bass"
    \pcAO e4 | a4. e8 e a a a | a2. b4 | %3
b4. b8 a4 gis | a2. \pcAO e4 | %5
a4. e8 e a a a | a2. b4 | b4. b8 a4. d8 | %8
cis2. gis4 | fis4. fis8 fis fis a a | %10
gis2. gis4 | fis4. fis8 b4. b8 | %12
b2. gis4 | fis4. fis8 fis fis a a | %14
gis2. b4 | cis4. cis8 fis,4. a8 gis2.
}
BBHIAxBDZMusicLHB = \relative c{ \BBHIAxBDZMusicGlobal \clef "bass"
    e4 | a,4. a8 a a a a | d2. d4 | %3
e4. e8 e4 e | a,2. e'4 | a,4. a8 a a a a | %6
d2. d4 | e4. e8 e4. e8 | a,2. e'4 | %9
b4. b8 b b b b | e2. e4 | %11
b4. b8 b4. dis8 | e2. e4 | %13
b4. b8 b b b b | e2. e4 | a,4. a8 b4. b8 e2.
}
BBHIAxBDZMusicLH =  \partCombine #'(2 . 20)  \BBHIAxBDZMusicLHA \BBHIAxBDZMusicLHB
BBHIAxBDZMusicLyrics = \relative c''''{ \BBHIAxBDZMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c4. c8 c8 c8 c8 c8 c2. c4 c4. c8 c4 c4 c2. c4 c4. c8 c8 c8 c8 c8 c2. c4 c4. c8 c4. c8 c2. c4 c4. c8 c8 c8 c8 c8 c2. c4 c4. c8 c4. c8 c2. c4 c4. c8 c8 c8 c8 c8 c2. c4 c4. c8 c4. c8 c2.
}

BBHIBxIIMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 66
    \time 6/8
    \key g \major
    
}
BBHIBxIIMusicRHA = \relative c'{ \BBHIBxIIMusicGlobal \clef "treble"
    g'8 g g g fis g |  \nbp a4. \pcAO d, | %2
a'8 a a a g a |  \nbp b4.~b4 r8 | %4
b b b b c d |  \nbp d4. g, | %6
fis8 fis fis a g e |  \nbp d4.~d \cbp | %8
b' \postCho g8 fis g |  \nbp b4. a | %10
c8 c c a b c |  \nbp b4.~b4 r8 | %12
d d d d b g |  \nbp a4. c | %14
fis,8 fis fis c' b a \nbp g4.~g4 r8 \he
}
BBHIBxIIMusicRHB = \relative c'{ \BBHIBxIIMusicGlobal \clef "treble"
    b8 b b b c b | d4. d | d8 d d d d d | %3
d4.~d4 r8 | d d d d d d | d4. d | %6
d8 d d cis cis cis | d4 (b8 c4.) | %8
d d8 d d | d4. d | d8 d d d d d | %11
d4.~d4 r8 | d d d d d d | c4. e | %14
c8 c c d d c b4.~b4 r8
}
BBHIBxIIMusicRH =  \partCombine #'(2 . 20)  \BBHIBxIIMusicRHA \BBHIBxIIMusicRHB
BBHIBxIIMusicLHA = \relative c{ \BBHIBxIIMusicGlobal \clef "bass"
    d8 d d d d g | fis4. fis | %2
c'8 c c c b fis | g4.~g4 r8 \pcAO | %4
g \pcAO g \pcAO g \pcAO g a b | %5
b4. b \pcAO | a8 \pcAO a \pcAO a a e g | %7
fis4 (g8 a4.) | g b8 a b | g4. fis | %10
a8 a a fis g a | g4.~g4 r8 | %12
b b b b \pcAO g g | e4. a | %14
a8 a a a g fis g4.~g4 r8
}
BBHIBxIIMusicLHB = \relative c{ \BBHIBxIIMusicGlobal \clef "bass"
    g8 g g g g g | d'4. d | d8 d d d d d | %3
g,4.~g4 r8 | g' g g g g g | g4. g | %6
a8 a a a, a a | d4.~d | g, g8 g g | %9
d'4. d | d8 d d d d d | g,4.~g4 r8 | %12
g' g g g g b, | c4. a | d8 d d d d d g,4.~g4 r8
}
BBHIBxIIMusicLH =  \partCombine #'(2 . 20)  \BBHIBxIIMusicLHA \BBHIBxIIMusicLHB
BBHIBxIIMusicLyrics = \relative c''''{ \BBHIBxIIMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8 c8 c8 c8 c8 c8 c4. c4. c8 c8 c8 c8 c8 c8 c4. s4 s8 c8 c8 c8 c8 c8 c8 c4. c4. c8 c8 c8 c8 c8 c8 c4.  s4. c4. c8 c8 c8 c4. c4. c8 c8 c8 c8 c8 c8 c4. s4 s8 c8 c8 c8 c8 c8 c8 c4. c4. c8 c8 c8 c8 c8 c8 c4.
}

BBHICxCBMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 60
    \time 6/8
    \key es \major
    
}
BBHICxCBMusicRHA = \relative c'{ \BBHICxCBMusicGlobal \clef "treble"
    g'8 g g g4 ees8 | bes'4 bes8 bes4. | %2
c8 c c bes4 g8 | f4 g8 f4. | %4
g8 g g g4 ees8 | bes'4 bes8 bes4. | %6
aes8 bes c bes4 g8 | %7
f4 ees8 ees4. \cbp \pcAO | %8
ees8 \postCho f g aes4 aes8 | %9
aes4 aes8 g4. | g8 aes bes c4 c8 | %11
c4 ees8 d4. | bes8 c d ees4 g,8 | %13
f4 \pcAO ees8 c'4. | aes8 bes c bes4 g8 f4 ees8 ees4. \he
}
BBHICxCBMusicRHB = \relative c'{ \BBHICxCBMusicGlobal \clef "treble"
    ees8 ees ees ees4 bes8 | g'4 g8 g4. | %2
aes8 aes aes g4 ees8 | d4 ees8 d4. | %4
ees8 ees ees ees4 bes8 | g'4 g8 g4. | %6
ees8 ees ees ees4 ees8 | d4 bes8 bes4. | %8
ees8 d des c4 c8 | ees4 ees8 ees4. | %10
ees8 ees ees ees4 ees8 | f4 f8 f4. | %12
aes8 aes aes g4 ees8 | ees4 ees8 ees4. | %14
ees8 ees ees ees4 ees8 d4 bes8 bes4.
}
BBHICxCBMusicRH =  \partCombine #'(2 . 20)  \BBHICxCBMusicRHA \BBHICxCBMusicRHB
BBHICxCBMusicLHA = \relative c{ \BBHICxCBMusicGlobal \clef "bass"
    bes'8 bes bes bes4 g8 | ees'4 ees8 ees4. | %2
ees8 ees ees ees4 bes8 | bes4 bes8 bes4. | %4
bes8 bes bes bes4 g8 | ees'4 ees8 ees4. | %6
c8 bes aes g4 bes8 | bes4 g8 g4. \pcAO | %8
ees8 \pcAO ees \pcAO ees ees4 ees8 | %9
c'4 c8 bes4. | %10
bes8 bes bes \pcAO aes4 \pcAO aes8 | %11
a4 a8 bes4. \pcAO | %12
bes8 \pcAO bes \pcAO bes bes4 bes8 | %13
aes4 g8 aes4. | c8 bes aes g4 bes8 aes4 g8 g4.
}
BBHICxCBMusicLHB = \relative c{ \BBHICxCBMusicGlobal \clef "bass"
    ees8 ees ees ees4 ees8 | ees4 ees8 ees4. | %2
aes8 aes aes ees4 ees8 | bes4 bes8 bes4. | %4
ees8 ees ees ees4 ees8 | ees4 ees8 ees4. | %6
ees8 ees ees ees4 ees8 | bes4 ees8 ees4. | %8
ees8 ees ees aes,4 aes8 | %9
aes4 aes8 ees'4. | ees8 f g aes4 aes8 | %11
f4 f8 bes,4. | bes'8 bes bes ees,4 ees8 | %13
ees4 ees8 aes,4. | aes8 aes aes bes4 bes8 bes4 ees8 ees4.
}
BBHICxCBMusicLH =  \partCombine #'(2 . 20)  \BBHICxCBMusicLHA \BBHICxCBMusicLHB
BBHICxCBMusicLyrics = \relative c''''{ \BBHICxCBMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8 c8 c8 c4 c8 c4 c8 c4. c8 c8 c8 c4 c8 c4 c8 c4. c8 c8 c8 c4 c8 c4 c8 c4. c8 c8 c8 c4 c8 c4 c8 c4. c8 c8 c8 c4 c8 c4 c8 c4. c8 c8 c8 c4 c8 c4 c8 c4. c8 c8 c8 c4 c8 c4 c8 c4. c8 c8 c8 c4 c8 c4 c8 c4.
}

BBHIDxCIBMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 2 = 64
    \time 4/4
    \key es \major
    
}
BBHIDxCIBMusicRHA = \relative c'{ \BBHIDxCIBMusicGlobal \clef "treble"
    g'2 f4 ees | bes' (aes) g2 \pcAO | %2
f4  ees d ees |  \nbp g2 f | %4
f  f4 g | aes2. f4 \pcAO | %6
c d g4. f8 \pcAO |  \nbp ees1  | %8
g2 f4 ees | ees'2. d4 | c bes aes g | %11
\nbp c2 \pcAp f, | f  f4 \pcAu g | %13
aes2. f4 \pcAO | c d g4. f8 \pcAO \nbp ees1 \he
}
BBHIDxCIBMusicRHB = \relative c'{ \BBHIDxCIBMusicGlobal \clef "treble"
    ees2 bes4 bes | ees2 ees | %2
f4 bes, bes bes | ees2 d | des c4 c | %5
c2. c4 | c bes d4. d8 | ees1 | %8
bes2 bes4 bes | ees2. f4 | ees des c e | %11
e2 f | f f4 e | f2. c4 | c bes d4. d8 ees1
}
BBHIDxCIBMusicRH =  \partCombine #'(2 . 20)  \BBHIDxCIBMusicRHA \BBHIDxCIBMusicRHB
BBHIDxCIBMusicLHA = \relative c{ \BBHIDxCIBMusicGlobal \clef "bass"
    bes'2 aes4 g | aes2 bes | c4 bes aes g | %3
bes2 bes \pcAO | bes c4 bes | %5
aes2. aes4 | aes aes bes4. aes8 | g1 | %8
bes2 aes4 g | g2. b4 | g g aes bes | %11
bes2 c  | des c4 bes | c2. aes4 | %14
aes aes bes4. aes8 g1
}
BBHIDxCIBMusicLHB = \relative c{ \BBHIDxCIBMusicGlobal \clef "bass"
    ees2 ees4 ees | c2 ees | aes4 g f ees | %3
bes2 bes | bes' aes4 g | f2. f4 | %6
f f bes,4. bes8 | ees1 | ees2 ees4 ees | %9
c2. d4 | ees e f g | g2 aes | %12
bes aes4 g | f2. f4 | f f bes,4. bes8 ees1
}
BBHIDxCIBMusicLH =  \partCombine #'(2 . 20)  \BBHIDxCIBMusicLHA \BBHIDxCIBMusicLHB
BBHIDxCIBMusicLyrics = \relative c''''{ \BBHIDxCIBMusicGlobal \clef "treble"
    \hideNotes \voiceFour c2 c4 c4 c4  s4 c2 c4 c4 c4 c4 c2 c2 c2 c4 c4 c2. c4 c4 c4 c4. c8 c1 c2 c4 c4 c2. c4 c4 c4 c4 c4 c2 c2 c2 c4 c4 c2. c4 c4 c4 c4. c8 c1
}

BBHIExIGMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 72
    \time 4/4
    \key f \major
    \partial 4
    
}
BBHIExIGMusicRHA = \relative c'{ \BBHIExIGMusicGlobal \clef "treble"
    c'8 bes |  \nbp a4 a c bes8 a | %2
g d4.~d4 \lbp f8 \pcAO d | %3
\nbp e4 g c8 bes g gis | %4
\nbp a2. \lbp c8 bes | %5
\nbp a4 a c bes8 a | %6
g d4.~d4 \lbp f8 d | %7
\nbp c4 f8 a c bes g a | %8
\nbp f2. \cbp c'8 \postCho c | %9
\nbp d4 d bes4. d8 | %10
\nbp d4 c2 \lbp c8 c | %11
\nbp b4. b8 b b c d | %12
\nbp c2. \lbp c8 bes | %13
\nbp a4 a c bes8 a | %14
g d4.~d4 \lbp f8 d | %15
\nbp c4 f8 a c bes g a \nbp f2. \he
}
BBHIExIGMusicRHB = \relative c'{ \BBHIExIGMusicGlobal \clef "treble"
    e8 g | f4 f f f8 f | d bes4.~bes4 d8 d | %3
c4 e e8 e e e | f2. a8 g | %5
f4 f f f8 f | d bes4.~bes4 d8 bes | %7
a4 c8 f e e e e | c2. f8 f | %9
f4 f f4. bes8 | bes4 a2 f8 f | %11
f4. f8 f f f f | e2. a8 g | f4 f f f8 f | %14
d bes4.~bes4 d8 bes | a4 c8 f e e e e c2.
}
BBHIExIGMusicRH =  \partCombine #'(2 . 20)  \BBHIExIGMusicRHA \BBHIExIGMusicRHB
BBHIExIGMusicLHA = \relative c{ \BBHIExIGMusicGlobal \clef "bass"
    c'8 c | c4 c a d8 c | %2
bes f4.~f4 bes8 bes | g4 c g8 g c c | %4
c2. c8 c | c4 c a d8 c | %6
bes f4.~f4 bes8 f | f4 a8 c g g bes c | %8
a2. a8 a | bes4 bes d4. f8 | %10
f4 f2 c8 c | d4. d8 d d c b | c2. c8 c | %13
c4 c a d8 c | bes f4.~f4 bes8 f | %15
f4 a8 c g g bes c a2.
}
BBHIExIGMusicLHB = \relative c{ \BBHIExIGMusicGlobal \clef "bass"
    c8 e | f4 f f f8 f | %2
bes, bes4.~bes4 bes8 bes | %3
c4 c c8 c c c | f2. f8 e | %5
f4 f f f8 f | bes, bes4.~bes4 bes8 bes | %7
c4 c8 c c c c c | f2. f8 f | %9
bes,4 bes bes'4. bes8 | f4 f2 a8 a | %11
g4. g8 g, g g g | c2. c8 e | f4 f f f8 f | %14
bes, bes4.~bes4 bes8 bes | %15
c4 c8 c c c c c \pcCh <f f,>2.
}
BBHIExIGMusicLH =  \partCombine #'(2 . 20)  \BBHIExIGMusicLHA \BBHIExIGMusicLHB
BBHIExIGMusicLyrics = \relative c''''{ \BBHIExIGMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8 c8 c4 c4 c4 c8 c8 c8 c4.  s4 c8 c8 c4 c8  s8 c8 c8 c8 c8 c2  s4 c8 c8 c4 c4 c4 c8 c8 c8 c4.  s4 c8 c8 c4 c8 c8 c8 c8 c8 c8 c4.  s4. c8 c8 c4 c4 c4  s8 c8 c4 c2 c8 c8 c4. c8 c8 c8 c8 c8 c2. c8 c8 c4 c4 c4 c8 c8 c8 c4.  s4 c8 c8 c4 c8 c8 c8 c8 c8 c8 c2.
}

BBHIFxCHAMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 62
    \time 3/4
    \key as \major
    \partial 4
    
}
BBHIFxCHAMusicRHA = \relative c'{ \BBHIFxCHAMusicGlobal \clef "treble"
    c'8. c16 |  \nbp c4. des8 bes c | %2
bes aes ees4 \lbp aes8. bes16 | %3
\nbp aes4. g8 f g | %4
f8. \pcAO ees16 \pcAO ees4 \lbp ees8 aes | %5
\nbp c4. c8 c ees | %6
ees8. des16 aes4 \lbp des8 c | %7
\nbp c4. ees,8 bes' aes | %8
\nbp aes2 \cbp bes8. \postCho aes16 | %9
\nbp g8 des'4. c8. bes16 | %10
\nbp aes8 c4. \lbp c8 des | %11
\nbp ees4. c8 bes c | %12
\nbp bes2 \pcAO \lbp ees,8 aes | %13
\nbp c4. ees8 ees des | %14
\nbp f, aes4. \lbp des8 c | %15
\nbp c4. \pcAO ees,8 bes'8. aes16 \nbp aes2 \he
}
BBHIFxCHAMusicRHB = \relative c'{ \BBHIFxCHAMusicGlobal \clef "treble"
    ees8. ees16 | ees4. ees8 ees ees | %2
des c c4 c8. c16 | des4. d8 d d | %4
d8. ees16 ees4 c8 c | ees4. ees8 ees ges | %6
f8. f16 f4 f8 f | ees4. c8 des c | %8
c2 des8. c16 | des8 des4. ees8. des16 | %10
c8 ees4. ees8 ees | ees4. ees8 g aes | %12
g2 ees8 ees | ees4. ges8 f f | %14
des des4. ees8 ees | ees4. ees8 des8. c16 c2
}
BBHIFxCHAMusicRH =  \partCombine #'(2 . 20)  \BBHIFxCHAMusicRHA \BBHIFxCHAMusicRHB
BBHIFxCHAMusicLHA = \relative c{ \BBHIFxCHAMusicGlobal \clef "bass"
    aes'8. aes16 | aes4. g8 g g | %2
aes aes aes4 aes8. aes16 | %3
aes4. bes8 aes bes | %4
aes8. g16 g4 aes8 aes | %5
aes4. aes8 aes aes | %6
aes8. aes16 des4 aes8 aes | %7
aes4. aes8 g aes | aes2 g8. aes16 | %9
bes8 g4. g8. g16 | %10
aes8 aes4. \pcAO aes8 bes | %11
c4. c8 ees ees | ees2 c8 c | %13
c4. c8 des aes | aes f4. g8 aes | %15
aes4. c8 g8. aes16 aes2
}
BBHIFxCHAMusicLHB = \relative c{ \BBHIFxCHAMusicGlobal \clef "bass"
    aes8. aes16 | aes4. ees'8 ees ees | %2
aes, aes aes4 aes8. aes16 | %3
bes4. bes8 bes bes | %4
bes8. ees16 ees4 aes,8 aes | %5
aes4. aes8 aes c | %6
des8. des16 des4 des8 des | %7
ees4. ees8 ees aes, | aes2 ees'8. ees16 | %9
ees8 ees4. ees8. ees16 | %10
aes,8 aes4. aes'8 aes | %11
aes4. aes8 ees ees | ees2 aes8 aes | %13
aes4. aes8 des, des | des des4. bes8 aes | %15
aes4. aes8 ees'8. aes,16 aes2
}
BBHIFxCHAMusicLH =  \partCombine #'(2 . 20)  \BBHIFxCHAMusicLHA \BBHIFxCHAMusicLHB
BBHIFxCHAMusicLyrics = \relative c''''{ \BBHIFxCHAMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8. c16 c4. c8 c8 c8 c8 c8 c4 c8. c16 c4. c8 c8 c8 c8. c16 c4 c8 c8 c4. c8 c8 c8 c8. c16 c4 c8 c8 c4. c8 c8 c8 c2 c8. c16 c8 c4. c8. c16 c8 c4. c8 c8 c4. c8 c8 c8 c2 c8 c8 c4. c8 c8 c8 c8 c4. c8 c8 c4. c8 c8. c16 c2
}

BBHIGxCHIMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 104
    \time 4/4
    \key d \major
    \partial 4
    
}
BBHIGxCHIMusicRHA = \relative c'{ \BBHIGxCHIMusicGlobal \clef "treble"
    fis4 |  \nbp fis fis fis fis | %2
\nbp g2. \lbp g4 |  \nbp e e e fis | %4
\nbp e2. \lbp e4 |  \nbp fis fis a a | %6
d d \set Score.tempoHideNote = ##t \tempo 4 = 52  \fpre d \fpost \set Score.tempoHideNote = ##t \tempo 4 = 104   \lbp d, |  \nbp d fis fis e \pcAO | %8
\nbp d2. \cbp \pcAO d4 \postCho | %9
\nbp g4. g8 g4 d | %10
\nbp fis2. \lbp fis4 | %11
\nbp b4. b8 b4 fis |  \nbp a2. \lbp a4 | %13
\nbp d4. d8 d4 cis | cis b a \lbp g | %15
\nbp fis4. \pcAO d8 fis4 e \pcAO \nbp d2. \he
}
BBHIGxCHIMusicRHB = \relative c'{ \BBHIGxCHIMusicGlobal \clef "treble"
    d4 | d e d d | d2. d4 | d cis d d | %4
cis2. cis4 | d d e e | d d b b | %7
a d cis cis | d2. d4 | bes4. bes8 d4 bes | %10
d2. e4 | d4. d8 d4 d | cis2. g'4 | %13
fis4. d8 fis4 e | e d fis e | %15
d4. d8 cis4 cis d2.
}
BBHIGxCHIMusicRH =  \partCombine #'(2 . 20)  \BBHIGxCHIMusicRHA \BBHIGxCHIMusicRHB
BBHIGxCHIMusicLHA = \relative c{ \BBHIGxCHIMusicGlobal \clef "bass"
    a'4 | a ais b c | b2. b4 | a a gis gis | %4
a2. a4 | a a a g | g fis e eis | %7
fis a a g | fis2. fis4 | g4. g8 g4 g | %10
a2. ais4 | fis4. fis8 fis4 fis8 [gis] | %12
a2. a4 | a4. a8 ais4 ais | ais b b b | %15
a4. fis8 a4 g fis2.
}
BBHIGxCHIMusicLHB = \relative c{ \BBHIGxCHIMusicGlobal \clef "bass"
    d4 | d cis b a | g2. g4 | a a b e | %4
a,2. a4 | d d cis cis | b a \fpre g \fpostbelow gis | %7
a a a a | d2. d4 | g,4.  g8  bes4 g | %10
d'2. cis4 | b4. b8 d4 b | a2. cis4 | %13
d4. fis8 fis4 fis | g g dis e | %15
a,4. a8 a4 a d2.
}
BBHIGxCHIMusicLH =  \partCombine #'(2 . 20)  \BBHIGxCHIMusicLHA \BBHIGxCHIMusicLHB
BBHIGxCHIMusicLyrics = \relative c''''{ \BBHIGxCHIMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c4 c4 c4 c4 c2. c4 c4 c4 c4 c4 c2. c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c2. c4 c4. c8 c4 c4 c2. c4 c4. c8 c4 c4 c2. c4 c4. c8 c4 c4 c4 c4 c4 c4 c4. c8 c4 c4 c2.
}

BBHIHxAFBMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 66
    \time 3/4
    \key a \major
    \partial 4
    
}
BBHIHxAFBMusicRHA = \relative c'{ \BBHIHxAFBMusicGlobal \clef "treble"
    a'8. b16 |  \nbp cis4. e,8 fis8. e16 | %2
e8 a4 r8 \lbp gis8. a16 | %3
\nbp b4. b8 cis8. b16 | %4
\nbp a4 (e) \lbp a8. b16 | %5
\nbp cis4. e,8 fis8. e16 | %6
e8 a4 r8 \lbp cis8. a16 | %7
\nbp fis4. a8 gis8. b16 | %8
\nbp a2 \cbp a8. \postCho cis16 | %9
\nbp b2 b8. d16 | %10
\nbp cis2 \lbp cis8. cis16 | %11
\nbp b8. cis16 d4 cis | %12
cis8 b4 r8 \lbp a8. b16 | %13
\nbp cis4. e,8 fis8. e16 | %14
e8 a4 r8 \lbp cis8. a16 | %15
\nbp fis4. a8 gis8. b16 \nbp a2 \he
}
BBHIHxAFBMusicRHB = \relative c'{ \BBHIHxAFBMusicGlobal \clef "treble"
    cis8. d16 | e4. cis8 d8. cis16 | %2
cis8 cis4 r8 d8. cis16 | d4. d8 e8. d16 | %4
cis2 e8. e16 | e4. cis8 d8. cis16 | %6
cis8 cis4 r8 e8. cis16 | d4. d8 d8. d16 | %8
cis2 cis8. e16 | e2 e8. e16 | e2 e8. e16 | %11
fis8. fis16 fis4 dis | e8 e4 r8 e8. e16 | %13
e4. cis8 d8. cis16 | %14
cis8 cis4 r8 e8. cis16 | d4. d8 d8. d16 cis2
}
BBHIHxAFBMusicRH =  \partCombine #'(2 . 20)  \BBHIHxAFBMusicRHA \BBHIHxAFBMusicRHB
BBHIHxAFBMusicLHA = \relative c{ \BBHIHxAFBMusicGlobal \clef "bass"
    e8. e16 | a4. a8 a8. a16 | %2
a8 e4 r8 e8. e16 | gis4. gis8 gis8. gis16 | %4
a2 a8. gis16 \pcAO | a4. a8 a8. a16 | %6
a8 e4 r8 a8. a16 | %7
a4. fis8 \pcAO e8. \pcAO e16 | %8
e2 e8. a16 | gis2 gis8. b16 \pcAO | %10
a2 a8. a16 | a8. ais16 b4 a | %12
a8 gis4 r8 a8. gis16 \pcAO | %13
a4. a8 a8. a16 | a8 e4 r8 a8. a16 | %15
a4. b8 b8. \pcAO e,16 e2
}
BBHIHxAFBMusicLHB = \relative c{ \BBHIHxAFBMusicGlobal \clef "bass"
    a8. a16 | a4. a8 d8. a16 | %2
a8 a4 r8 b8. a16 | e'4. e8 e8. e16 | %4
a,2 cis8. e16 | a4. a,8 d8. a16 | %6
a8 a4 r8 a8. a16 | d4. d8 e8. e16 | %8
a,2 a8. a16 | e'2 e8. gis16 | %10
a2 a,8. cis16 | d8. cis16 b4 b | %12
e8 e4 r8 cis8. e16 | a4. a,8 d8. a16 | %14
a8 a4 r8 a8. a16 | d4. b8 e8. e16 a,2
}
BBHIHxAFBMusicLH =  \partCombine #'(2 . 20)  \BBHIHxAFBMusicLHA \BBHIHxAFBMusicLHB
BBHIHxAFBMusicLyrics = \relative c''''{ \BBHIHxAFBMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8. c16 c4. c8 c8. c16 c8 c4  s8 c8. c16 c4. c8 c8. c16 c4  s4 c8. c16 c4. c8 c8. c16 c8 c4  s8 c8. c16 c4. c8 c8. c16 c2 c8. c16 c2 c8. c16 c2 c8. c16 c8. c16 c4 c4 c8 c4  s8 c8. c16 c4. c8 c8. c16 c8 c4  s8 c8. c16 c4. c8 c8. c16 c2
}

BBHIIxAACMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 8 = 116
    \time 6/8
    \key es \major
    
}
BBHIIxAACMusicRHA = \relative c'{ \BBHIIxAACMusicGlobal \clef "treble"
    c'8. bes16 aes8 aes g aes | %1
bes aes f f ees r | %2
aes aes aes c8. bes16 aes8 | %3
\nbp bes4.~bes4 r8 | %4
c8. bes16 aes8 aes g aes | %5
bes aes f f ees r | %6
aes aes des c8. aes16 bes8 | %7
\nbp aes4.~aes4 \cbp \pcAp ees8 \postCho | %8
\nbp bes'4.~bes4 c8 | %9
\nbp aes4 (bes8 c4.) \pcAu | %10
bes8 bes \pcAO bes c16 c8. d8 | %11
\nbp ees4 (d8 \set Score.tempoHideNote = ##t \tempo 8 = 58  \fpre des4) \fpost \set Score.tempoHideNote = ##t \tempo 8 = 116   r8 | %12
c8. bes16 aes8 aes g aes | %13
bes aes f f ees r | %14
aes16 \set Score.tempoHideNote = ##t \tempo 8 = 58  \fpre aes8. \fcont des8 \fpost \set Score.tempoHideNote = ##t \tempo 8 = 116   c16 \set Score.tempoHideNote = ##t \tempo 8 = 58  \fpre aes8. \fcont bes8 \fpost \set Score.tempoHideNote = ##t \tempo 8 = 116   \nbp aes4.~aes4 r8 \he
}
BBHIIxAACMusicRHB = \relative c'{ \BBHIIxAACMusicGlobal \clef "treble"
    ees8. des16 c8 ees des c | %1
des des des des c r | c c c d8. d16 d8 | %3
ees4.~ees4 r8 | %4
ees8. des16 c8 ees des c | %5
des des des des c r | %6
ees ees f ees8. c16 des8 | c4.~c4 r8 | %8
r4 g'8 g4 r8 | r4 g8 aes4. | %10
g8 g bes a16 a8. aes8 | g4 aes8 bes4 r8 | %12
ees,8. des16 c8 ees des c | %13
des des des des c r | %14
ees16 ees8. f8 ees16 c8. des8 c4.~c4 r8
}
BBHIIxAACMusicRH =  \partCombine #'(2 . 20)  \BBHIIxAACMusicRHA \BBHIIxAACMusicRHB
BBHIIxAACMusicLHA = \relative c{ \BBHIIxAACMusicGlobal \clef "bass"
    aes'8. aes16 aes8 aes ees ees | %1
f f aes aes aes r | %2
aes aes aes aes8. f16 bes8 | g4.~g4 r8 | %4
aes8. aes16 aes8 aes ees ees | %5
f f aes aes aes r | %6
aes aes aes aes8. aes16 g8 | %7
aes4.~aes4 r8 | %8
r4 des8 des4 \pcAp ees8 | %9
c4 (ees8 ees4.) \pcAu | %10
ees8 ees \pcAO ees ees16 ees8. \pcAO bes8 | %11
bes4 bes8  ees4  r8 | %12
aes,8. aes16 aes8 aes ees ees | %13
f f aes aes aes r | %14
aes16  aes8.  aes8  aes16  aes8.  g8  aes4~aes4. r8
}
BBHIIxAACMusicLHB = \relative c{ \BBHIIxAACMusicGlobal \clef "bass"
    aes8. aes16 aes8 c bes aes | %1
des des des aes aes r | %2
f' f f bes,8. bes16 f'8 | ees4.~ees4 r8 | %4
aes,8. aes16 aes8 c bes aes | %5
des des des aes aes r | %6
c c des ees8. ees16 ees8 | %7
aes,4.~aes4 r8 | r4 ees'8 ees4 r8 | %9
r4 ees8 aes4. | bes8 bes g f16 f8. bes8 | %11
ees,4 f8 \fpre g4 \fpostbelow r8 | %12
aes,8. aes16 aes8 c bes aes | %13
des des des aes aes r | %14
c16 \fpre c8. \fcontbelow des8 \fpostbelow ees16 \fpre ees8. \fcontbelow ees8 \fpostbelow aes,4~aes4. r8
}
BBHIIxAACMusicLH =  \partCombine #'(2 . 20)  \BBHIIxAACMusicLHA \BBHIIxAACMusicLHB
BBHIIxAACMusicLyrics = \relative c''''{ \BBHIIxAACMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8. c16 c8 c8 c8 c8 c8 c8 c8 c8 c8  s8 c8 c8 c8 c8. c16 c8 c4. s4 s8 c8. c16 c8 c8 c8 c8 c8 c8 c8 c8 c8  s8 c8 c8 c8 c8. c16 c8 c4.  s4 c8 c4.  s4 c8 c4 s8 s4. c8 c8 c8 c16 c8. c8 c4 s8 s4 s8 c8. c16 c8 c8 c8 c8 c8 c8 c8 c8 c8  s8 c16 c8. c8 c16 c8. c8 c4.
}

BBIZZxADAMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 70
    \time 3/4
    \key as \major
    \partial 4
    
}
BBIZZxADAMusicRHA = \relative c'{ \BBIZZxADAMusicGlobal \clef "treble"
    c8. des16 |  \nbp ees4. ees8 c'8. bes16 | %2
\nbp aes4 \pcAO c, \lbp g'8. f16 | %3
ees2  des4 | %4
\nbp c2 \lbp c8. des16 | %5
\nbp ees4. ees8 c'8. bes16 | %6
\nbp aes4 \pcAO c, \lbp g'8. f16 | %7
ees2 bes'4 | %8
\nbp aes2 \cfb c8. \postCho des16 | %9
\nbp ees4. c8 des8. c16 | %10
\nbp c4 bes \lbp bes8. c16 | %11
\nbp des4. bes8 c8. des16 | %12
\nbp c4 aes \fb ees8. ees16 | %13
\nbp f4. aes8 g8. f16 | %14
\nbp ees4 aes \lbp aes8. bes16 | %15
c2 bes4 \nbp aes2 \he
}
BBIZZxADAMusicRHB = \relative c'{ \BBIZZxADAMusicGlobal \clef "treble"
    aes8. bes16 | c4. c8 ees8. des16 | %2
c4 c des8. des16 | des2 bes4 | %4
aes2 aes8. bes16 | c4. c8 ees8. des16 | %6
c4 c des8. des16 | des2 des4 | %8
c2 ees8. ees16 | ees4. ees8 f8. ees16 | %10
ees4 ees ees8. ees16 | %11
ees4. ees8 ees8. ees16 | ees4 c c8. c16 | %13
des4. f8 ees8. des16 | c4 c ees8. f16 | %15
ees2 des4 c2
}
BBIZZxADAMusicRH =  \partCombine #'(2 . 20)  \BBIZZxADAMusicRHA \BBIZZxADAMusicRHB
BBIZZxADAMusicLHA = \relative c{ \BBIZZxADAMusicGlobal \clef "bass"
    ees8. ees16 | aes4. aes8 aes8. g16 | %2
aes4 aes bes8. aes16 | g2 \pcAO ees4 | %4
ees2 ees8. ees16 | aes4. aes8 aes8. g16 | %6
aes4 aes bes8. aes16 | g2 g4 | %8
aes2 \pcAO aes8. bes16 | %9
c4. aes8 aes8. aes16 | aes4 g g8. aes16 | %11
bes4. g8 aes8. bes16 | %12
aes4 ees aes8. aes16 | %13
aes4. aes8 aes8. aes16 | %14
aes4 ees aes8. aes16 | aes2 g4 aes2
}
BBIZZxADAMusicLHB = \relative c{ \BBIZZxADAMusicGlobal \clef "bass"
    aes8. aes16 | aes4. aes8 ees'8. ees16 | %2
aes,4 aes ees'8. ees16 | ees2 ees4 | %4
aes,2 aes8. aes16 | %5
aes4. aes8 ees'8. ees16 | %6
aes,4 aes ees'8. ees16 | ees2 ees4 | %8
aes,2 aes'8. aes16 | %9
aes4. aes,8 aes8. aes16 | %10
ees'4 ees ees8. ees16 | %11
ees4. ees8 ees8. ees16 | %12
aes,4 aes aes8. aes16 | %13
des4. des8 des8. des16 | %14
aes4 aes c8. des16 | ees2 ees4 aes,2
}
BBIZZxADAMusicLH =  \partCombine #'(2 . 20)  \BBIZZxADAMusicLHA \BBIZZxADAMusicLHB
BBIZZxADAMusicLyrics = \relative c''''{ \BBIZZxADAMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8. c16 c4. c8 c8. c16 c4 c4 c8. c16 c2 c4 c2 c8. c16 c4. c8 c8. c16 c4 c4 c8. c16 c2 c4 c2 c8. c16 c4. c8 c8. c16 c4 c4 c8. c16 c4. c8 c8. c16 c4 c4 c8. c16 c4. c8 c8. c16 c4 c4 c8. c16 c2 c4 c2
}

BBIZAxFGMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 66
    \time 3/4
    \key as \major
    \partial 4
    
}
BBIZAxFGMusicRHA = \relative c'{ \BBIZAxFGMusicGlobal \clef "treble"
    aes'8 bes |  \nbp c4. aes8 bes c | %2
\nbp bes aes4. \lbp aes8 f | %3
\nbp ees4. aes8 g aes | %4
\nbp bes2 \lbp aes8 bes | %5
\nbp c4. aes8 bes c | %6
\nbp bes aes4. \lbp aes8 f | %7
\nbp ees4. aes8 bes8. g16 | %8
\nbp aes2 \cbp c8 \postCho des | %9
\nbp ees4. c8 des c | %10
\nbp c bes4. \lbp bes8 c | %11
\nbp des4. bes8 c des | %12
\nbp c2 \lbp c8 bes | %13
\nbp aes4. bes8 aes g | %14
\nbp f aes4. \lbp aes8 bes | %15
\nbp c4. aes8 bes8. g16 \nbp aes2 \he
}
BBIZAxFGMusicRHB = \relative c'{ \BBIZAxFGMusicGlobal \clef "treble"
    c8 des | ees4. ees8 ees ees | %2
des c4. c8 des | c4. ees8 ees ees | %4
ees2 c8 des | ees4. ees8 ees ees | %6
des c4. f8 des | c4. c8 des8. des16 | %8
c2 ees8 ees | ees4. ees8 ees ees | %10
ees ees4. ees8 ees | ees4. ees8 ees ees | %12
ees2 ees8 des | c4. des8 c ees | %14
des f4. ees8 f | ees4. ees8 ees8. ees16 ees2
}
BBIZAxFGMusicRH =  \partCombine #'(2 . 20)  \BBIZAxFGMusicRHA \BBIZAxFGMusicRHB
BBIZAxFGMusicLHA = \relative c{ \BBIZAxFGMusicGlobal \clef "bass"
    aes'8 aes | aes4. aes8 g g | %2
aes aes4. aes8 aes | aes4. aes8 des c | %4
g2 aes8 aes | aes4. aes8 g g | %6
aes aes4. aes8 aes | aes4. aes8 g8. bes16 | %8
aes2 \pcAO aes8 bes | %9
c4. \pcAO aes8 bes \pcAO aes | %10
aes g4. g8 aes | bes4. g8 aes bes \pcAO | %12
aes2 aes8 ees | ees4. ees8 ees aes | %14
aes aes4. aes8 aes | aes4. c8 des8. bes16 c2
}
BBIZAxFGMusicLHB = \relative c{ \BBIZAxFGMusicGlobal \clef "bass"
    aes8 aes | aes4. c8 ees ees | %2
aes, aes4. aes8 aes | aes4. c8 bes aes | %4
ees'2 aes,8 aes | aes4. c8 ees ees | %6
aes, aes4. des8 des | %7
ees4. ees8 ees8. ees16 | aes,2 aes'8 aes | %9
aes4. aes8 g aes | ees ees4. ees8 ees | %11
ees4. ees8 ees ees | aes2 aes,8 aes | %13
aes4. aes8 aes c | des des4. c8 des | %15
ees4. ees8 ees8. ees16 aes,2
}
BBIZAxFGMusicLH =  \partCombine #'(2 . 20)  \BBIZAxFGMusicLHA \BBIZAxFGMusicLHB
BBIZAxFGMusicLyrics = \relative c''''{ \BBIZAxFGMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8 c8 c4. c8 c8 c8 c8 c4. c8 c8 c4. c8 c8 c8 c2 c8 c8 c4. c8 c8 c8 c8 c4. c8 c8 c4. c8 c8. c16 c2 c8 c8 c4. c8 c8 c8 c8 c4. c8 c8 c4. c8 c8 c8 c2 c8 c8 c4. c8 c8 c8 c8 c4. c8 c8 c4. c8 c8. c16 c2
}

BBIZBxBDEMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 64
    \time 3/4
    \key bes \major
    \partial 4
    
}
BBIZBxBDEMusicRHA = \relative c'{ \BBIZBxBDEMusicGlobal \clef "treble"
    \pcAO bes8 d |  \nbp f4. f8 g f | %2
\nbp f bes4. \lbp bes8 bes | %3
\nbp bes4. bes8 a g | %4
\nbp f2 \lbp f8 f |  \nbp a4. f8 a bes | %6
\nbp c c4. \lbp d8 d | %7
\nbp c4. g8 a g \pcAO | %8
\nbp f2 \fb f8 f | %9
\nbp bes4. bes8 bes c | %10
\nbp d d4. \lbp d8 d | %11
\nbp d4. c8 bes a \pcAO | %12
\nbp g2 \fb g8 a |  \nbp bes4. bes8 a g | %14
\nbp g f4. \lbp f8 f |  \nbp f4. f8 f f \nbp f2 \he
}
BBIZBxBDEMusicRHB = \relative c'{ \BBIZBxBDEMusicGlobal \clef "treble"
    bes8 bes | d4. d8 ees d | d d4. d8 f | %3
g4. g8 f ees | d2 c8 c | f4. c8 f d | %6
f f4. f8 f | e4. e8 f e | f2 ees8 ees | %9
d4. d8 d ees | f f4. f8 f | %11
fis4. a8 g fis | g2 ees8 f | %13
g4. g8 f ees | ees d4. d8 d | %15
c4. d8 ees ees d2
}
BBIZBxBDEMusicRH =  \partCombine #'(2 . 20)  \BBIZBxBDEMusicRHA \BBIZBxBDEMusicRHB
BBIZBxBDEMusicLHA = \relative c{ \BBIZBxBDEMusicGlobal \clef "bass"
    d8 f | bes4. bes8 bes bes | %2
bes f4. f8 bes | bes4. bes8 bes bes | %4
bes2 a8 a | c4. a8 c bes | %6
a a4. bes8 bes | g4. c8 c bes | a2 a8 a | %9
bes4. f8 f f | bes bes4. bes8 bes | %11
a4. d8 d c | bes2 bes8 bes | %13
ees4. ees8 bes bes | bes bes4. bes8 bes | %15
a4. bes8 c c bes2
}
BBIZBxBDEMusicLHB = \relative c{ \BBIZBxBDEMusicGlobal \clef "bass"
    bes8 bes | bes4. bes8 bes bes | %2
bes bes4. bes8 d | ees4. ees8 ees ees | %4
bes2 f'8 f | f4. f8 f f | %6
f f4. bes,8 bes | c4. c8 c c | f2 f8 f | %9
bes,4. bes8 bes bes | bes bes4. bes8 bes | %11
d4. d8 d d | g2 ees8 ees | %13
ees4. ees8 ees ees | bes bes4. bes8 bes | %15
f'4. f8 f f bes,2
}
BBIZBxBDEMusicLH =  \partCombine #'(2 . 20)  \BBIZBxBDEMusicLHA \BBIZBxBDEMusicLHB
BBIZBxBDEMusicLyrics = \relative c''''{ \BBIZBxBDEMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8 c8 c4. c8 c8 c8 c8 c4. c8 c8 c4. c8 c8 c8 c2 c8 c8 c4. c8 c8 c8 c8 c4. c8 c8 c4. c8 c8 c8 c2 c8 c8 c4. c8 c8 c8 c8 c4. c8 c8 c4. c8 c8 c8 c2 c8 c8 c4. c8 c8 c8 c8 c4. c8 c8 c4. c8 c8 c8 c2
}

BBIZCxCHIMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 104
    \time 4/4
    \key d \major
    \partial 4
    
}
BBIZCxCHIMusicRHA = \relative c'{ \BBIZCxCHIMusicGlobal \clef "treble"
    fis4 |  \nbp fis fis fis fis | %2
\nbp g2. \lbp g4 |  \nbp e e e fis | %4
\nbp e2. \lbp e4 |  \nbp fis fis a a | %6
d d \set Score.tempoHideNote = ##t \tempo 4 = 52  \fpre d \fpost \set Score.tempoHideNote = ##t \tempo 4 = 104   \lbp d, |  \nbp d fis fis e \pcAO | %8
\nbp d2. \cbp \pcAO d4 \postCho | %9
\nbp g4. g8 g4 d | %10
\nbp fis2. \lbp fis4 | %11
\nbp b4. b8 b4 fis |  \nbp a2. \lbp a4 | %13
\nbp d4. d8 d4 cis | cis b a \lbp g | %15
\nbp fis4. \pcAO d8 fis4 e \pcAO \nbp d2. \he
}
BBIZCxCHIMusicRHB = \relative c'{ \BBIZCxCHIMusicGlobal \clef "treble"
    d4 | d e d d | d2. d4 | d cis d d | %4
cis2. cis4 | d d e e | d d b b | %7
a d cis cis | d2. d4 | bes4. bes8 d4 bes | %10
d2. e4 | d4. d8 d4 d | cis2. g'4 | %13
fis4. d8 fis4 e | e d fis e | %15
d4. d8 cis4 cis d2.
}
BBIZCxCHIMusicRH =  \partCombine #'(2 . 20)  \BBIZCxCHIMusicRHA \BBIZCxCHIMusicRHB
BBIZCxCHIMusicLHA = \relative c{ \BBIZCxCHIMusicGlobal \clef "bass"
    a'4 | a ais b c | b2. b4 | a a gis gis | %4
a2. a4 | a a a g | g fis e eis | %7
fis a a g | fis2. fis4 | g4. g8 g4 g | %10
a2. ais4 | fis4. fis8 fis4 fis8 [gis] | %12
a2. a4 | a4. a8 ais4 ais | ais b b b | %15
a4. fis8 a4 g fis2.
}
BBIZCxCHIMusicLHB = \relative c{ \BBIZCxCHIMusicGlobal \clef "bass"
    d4 | d cis b a | g2. g4 | a a b e | %4
a,2. a4 | d d cis cis | b a \fpre g \fpostbelow gis | %7
a a a a | d2. d4 | g,4.  g8  bes4 g | %10
d'2. cis4 | b4. b8 d4 b | a2. cis4 | %13
d4. fis8 fis4 fis | g g dis e | %15
a,4. a8 a4 a d2.
}
BBIZCxCHIMusicLH =  \partCombine #'(2 . 20)  \BBIZCxCHIMusicLHA \BBIZCxCHIMusicLHB
BBIZCxCHIMusicLyrics = \relative c''''{ \BBIZCxCHIMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c4 c4 c4 c4 c2. c4 c4 c4 c4 c4 c2. c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c2. c4 c4. c8 c4 c4 c2. c4 c4. c8 c4 c4 c2. c4 c4. c8 c4 c4 c4 c4 c4 c4 c4. c8 c4 c4 c2.
}

BBIZDxBAEMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 2 = 64
    \time 4/4
    \key c \major
    \partial 4*3
    
}
BBIZDxBAEMusicRHA = \relative c'{ \BBIZDxBAEMusicGlobal \clef "treble"
    g'4 a e | g2 (a)~| \nbp  %2
a4 \lbp \pcAO c, f \pcAO c |  \nbp e1~| \nbp  %4
e4 \pcAO \lbp c \pcAO b \pcAO c | %5
d1~| \nbp d4 \lbp a' g f |  \nbp e1~| \nbp %8
e4 \lbp g a e | g2 a~ \nbp | %10
a4 \lbp \pcAO c, f \pcAO c |  \nbp e1~| \nbp  %12
e4 \lbp g a c | b1~ \nbp | b4 a g \pcAp b, | %15
\nbp c1~| \nbp c4 \pcAu \lbp e f g | %17
a4. b8 c2~ \nbp | c4 \lbp c b a | %19
a4. g8 g2~ \nbp | g4 \lbp g f e | %21
g4. d8 d2~ \nbp | d4 \lbp a' g f | %23
f4. e8 e2~ \nbp| e4 \lbp e f g | %25
a4. b8 c2~ \nbp | c4 \lbp c b a | %27
a4. g8 g2~ \nbp | g4 \lbp g f e | %29
g4. d8 d2~\nbp | d4 \lbp f e d \pcAp | %31
\nbp c1~ \nbp c4 \he
}
BBIZDxBAEMusicRHB = \relative c'{ \BBIZDxBAEMusicGlobal \clef "treble"
    e4 e c | e2 (e)~| e4 c c c | c1~| %4
c4 c b c | b1~| b4 b b b | c1~| %8
c4 e e c | e2 (e2~| e4) c c c | c1~| %12
c4 e e e | f1~| f4 f f b, | c1~| %16
c4 c d e | f4. g8 a2~| a4 a g f | %19
f4. e8 e2~| e4 e d c | b4. b8 b2~| %22
b4 f' e d | d4. c8 c2~| c4 c d e | %25
f4. g8 a2~| a4 a g f | f4. e8 e2~| %28
e4 e d c | b4. b8 b2~| b4 b b b | %31
c1~c4
}
BBIZDxBAEMusicRH =  \partCombine #'(2 . 20)  \BBIZDxBAEMusicRHA \BBIZDxBAEMusicRHB
BBIZDxBAEMusicLHA = \relative c{ \BBIZDxBAEMusicGlobal \clef "bass"
    c'4 c g | c1~| c4 a a aes | g1~| %4
g4 e ees e | f1~| f4 f e d | g1~| %8
g4 c c g | c1~| c4 a a aes | g1~| %12
g4 c c c | d1~| d4 c b b | e,1~| %16
e4 g g c | c4. c8 f2~| f4 f c c | %19
c4. c8 c2~| c4 c g g | g4. g8 g2~| %22
g4 g g g | g4. g8 g2~| g4 g g c | %25
c4. c8 f2~| f4 f c c | c4. c8 c2~| %28
c4 c g g | g4. g8 g2~| g4 g g f | %31
e1~e4
}
BBIZDxBAEMusicLHB = \relative c{ \BBIZDxBAEMusicGlobal \clef "bass"
    c4 c c | c1~| c4 f f f | c1~| %4
c4 c c c | g1~| g4 g g g | c1~| %8
c4 c c c | c1~| c4 f f f | c1~| %12
c4 c c c | g'1~| g4 g g g | c,1~| %16
c4 c c c | f4. f8 f2~| f4 f f f | %19
c4. c8 c2~| c4 c c c | g4. g8 g2~| %22
g4 g g g | c4. c8 c2~| c4 c c c | %25
f4. f8 f2~| f4 f f f | c4. c8 c2~| %28
c4 c c c | g4. g8 g2~| g4 g g g | %31
c1~c4
}
BBIZDxBAEMusicLH =  \partCombine #'(2 . 20)  \BBIZDxBAEMusicLHA \BBIZDxBAEMusicLHB
BBIZDxBAEMusicLyrics = \relative c''''{ \BBIZDxBAEMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c4 c4 c2 s2 s4 c4 c4 c4 c1  s4 c4 c4 c4 c1  s4 c4 c4 c4 c1  s4 c4 c4 c4 c2 c2  s4 c4 c4 c4 c1  s4 c4 c4 c4 c1  s4 c4 c4 c4 c1  s4 c4 c4 c4 c4. c8 c2  s4 c4 c4 c4 c4. c8 c2. c4 c4 c4 c4. c8 c2. c4 c4 c4 c4. c8 c2. c4 c4 c4 c4. c8 c2. c4 c4 c4 c4. c8 c2. c4 c4 c4 c4. c8 c2. c4 c4 c4 c1
}

BBIZExAIZMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 2 = 76
    \time 6/4
    \key g \major
    
}
BBIZExAIZMusicRHA = \relative c'{ \BBIZExAIZMusicGlobal \clef "treble"
    b'2 b4 d (c) b | a2 a4 c (b) a \pcAO | %2
g2 g4 a2 a4 |  \nbp b2.~b2 r4 | %4
b2 b4 d (c) b | a2 a4 c (b) a | %6
g (a) b a2 a4 \pcAp | %7
\nbp g2.~g2 \pcAu r4 \cbp | %8
c2 \postCho c4 g2 a4 |  \nbp b2.~b2 r4 | %10
a2 a4 cis2 a4 |  \nbp d2. (d2) r4 | %12
b2 b4 d (c) b | a2 a4 c (b) a | %14
g (a) b a2 a4 \pcAp \nbp g2.~g2 \he
}
BBIZExAIZMusicRHB = \relative c'{ \BBIZExAIZMusicGlobal \clef "treble"
    d2 d4 d2 d4 | fis2 d4 d2 fis4 | %2
g2 e4 e2 d4 | d2.~d2 r4 | %4
d2 g4 g (fis) g | fis2 d4 d2 d4 | %6
d2 g4 g2 fis4 | g2.~g2 r4 | %8
e2 e4 e2 ees4 | d2.~d2 r4 | %10
d2 d4 e2 e4 | d2. (fis2) r4 | %12
d2 g4 g (fis) g | fis2 d4 d2 d4 | %14
d2 g4 g2 fis4 g2.~g2
}
BBIZExAIZMusicRH =  \partCombine #'(2 . 20)  \BBIZExAIZMusicRHA \BBIZExAIZMusicRHB
BBIZExAIZMusicLHA = \relative c{ \BBIZExAIZMusicGlobal \clef "bass"
    b'2 b4 b (a) \pcAO g | %1
d'2 fis,4 fis (g) c | b2 c4 c2 fis,4 | %3
g2.~g2 r4 | b2 d4 d2 d4 | %5
d2 fis,4 a (g) fis | g (fis) d' e2 c4 | %7
b2.~b2 r4 | g2 g4 g2 g4 | g2.~g2 r4 | %10
fis2 fis4 a2 g4 | fis2. (c'2) r4 | %12
b2 d4 d2 d4 | d2 fis,4 a (g) fis | %14
g (fis) d' e2 c4 b2.~b2
}
BBIZExAIZMusicLHB = \relative c{ \BBIZExAIZMusicGlobal \clef "bass"
    g'2 g4 g (fis) g | d2 d4 d2 d4 | %2
e2 c4 a2 d4 | g,2.~g2 r4 | %4
g'2 g4 b (a) g | d2 d4 fis, (g) a | %6
b (a) g c2 d4 | g,2.~g2 r4 | %8
c2 c4 c2 c4 | g2.~g2 r4 | %10
a2 a4 a2 cis4 | d2. (d2) r4 | %12
g2 g4 b (a) g | d2 d4 fis, (g) a | %14
b (a) g c2 d4 g,2.~g2
}
BBIZExAIZMusicLH =  \partCombine #'(2 . 20)  \BBIZExAIZMusicLHA \BBIZExAIZMusicLHB
BBIZExAIZMusicLyrics = \relative c''''{ \BBIZExAIZMusicGlobal \clef "treble"
    \hideNotes \voiceFour c2 c4 c4  s4 c4 c2 c4 c4  s4 c4 c2 c4 c2 c4 c2. s2 s4 c2 c4 c4  s4 c4 c2 c4 c4  s4 c4 c4  s4 c4 c2 c4 c2. s2 s4 c2 c4 c2 c4 c2. s2 s4 c2 c4 c2 c4 c2. s2 s4 c2 c4 c4  s4 c4 c2 c4 c4  s4 c4 c4  s4 c4 c2 c4 c2.
}

BBIZFxAFDMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 64
    \time 4/4
    \key es \major
    \partial 4.
    
}
BBIZFxAFDMusicRHA = \relative c'{ \BBIZFxAFDMusicGlobal \clef "treble"
    g'8 bes aes | %1
g4. \pcAO bes,8 ees g bes aes | %2
\nbp g4 f4. \lbp f8 aes g | %3
f4. g8 aes c c bes | %4
g2~g8 \lbp bes ees d | %5
c4. bes8 g g aes g | %6
f4 c4. \lbp c8 d ees | %7
g4. aes8 g f g f \pcAp ees2~ees8 \pcAu \he
}
BBIZFxAFDMusicRHB = \relative c'{ \BBIZFxAFDMusicGlobal \clef "treble"
    ees8 ees ees | ees4. bes8 bes ees ees ees | %2
ees4 d4. d8 d ees | d4. d8 d aes' aes g | %4
ees2~ees8 g g bes | %5
aes4. g8 ees ees ees ees | %6
c4 aes4. aes8 bes c | ees4. ees8 d d d d ees2~ees8
}
BBIZFxAFDMusicRH =  \partCombine #'(2 . 20)  \BBIZFxAFDMusicRHA \BBIZFxAFDMusicRHB
BBIZFxAFDMusicLHA = \relative c{ \BBIZFxAFDMusicGlobal \clef "bass"
    bes'8 d c | bes4. g8 g bes bes c | %2
bes4 aes4. aes8 f bes | %3
aes4. g8 f bes bes bes | %4
bes2~bes8 ees bes ees | %5
ees4. ees8 bes bes c bes | %6
aes4 ees4. ees8 ees aes | %7
bes4. c8 bes aes bes aes g2~g8
}
BBIZFxAFDMusicLHB = \relative c{ \BBIZFxAFDMusicGlobal \clef "bass"
    ees8 ees ees | ees4. ees8 ees ees g, aes | %2
bes4 bes4. bes8 bes bes | %3
bes4. bes8 bes bes d d | %4
ees2~ees8 ees ees g | %5
aes4. ees8 ees ees ees ees | %6
aes,4 aes4. aes8 aes f | %7
bes4. bes8 bes bes bes bes ees2~ees8
}
BBIZFxAFDMusicLH =  \partCombine #'(2 . 20)  \BBIZFxAFDMusicLHA \BBIZFxAFDMusicLHB
BBIZFxAFDMusicLyrics = \relative c''''{ \BBIZFxAFDMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8 c8 c8 c4. c8 c8 c8 c8 c8 c4 c4. c8 c8 c8 c4. c8 c8 c8 c8 c8 c4.  s4 c8 c8 c8 c4. c8 c8 c8 c8 c8 c4 c8  s4 c8 c8 c8 c4. c8 c8 c8 c8 c8 c8 c2
}

BBIZGxICMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 120
    \time 12/8
    \key g \major
    \partial 8*3
    
}
BBIZGxICMusicRHA = \relative c'{ \BBIZGxICMusicGlobal \clef "treble"
    g'4 a8 |  \nbp b4. a4 g8 a4. g4 e8 | %2
\nbp d1 r8 \lbp g4 a8 | %3
\nbp b4. b4 b8 d4. d4 b8 | %4
\nbp a1 r8 \lbp g4 a8 | %5
\nbp b4. a4 g8 a4. g4 e8 | %6
\nbp d1 r8 \lbp g4 a8 | %7
\nbp b4. a4 g8 a4. g4 fis8 | %8
\nbp g1 r8 \cbp b4 \postCho c8 | %9
\nbp d2.~d4. d4 d8 | %10
\nbp a2.~a4. \lbp a4 b8 | %11
\nbp c4. c4 c8 c4. b4 a8 | %12
\nbp b2.~b4. \lbp b4 c8 | %13
\nbp d2.~d4. b4 a8 | %14
\nbp g2.~g4. \lbp fis4 e8 | %15
\nbp d4. g4 b8 a4. g4 fis8 \nbp g2.~g4. \he
}
BBIZGxICMusicRHB = \relative c'{ \BBIZGxICMusicGlobal \clef "treble"
    d4 d8 | g4. d4 d8 e4. e4 c8 | %2
b1 r8 d4 d8 | d4. d4 d8 g4. g4 d8 | %4
d1 r8 d4 d8 | g4. d4 d8 e4. e4 c8 | %6
b1 r8 d4 d8 | d4. d4 d8 e4. d4 d8 | %8
d1 r8 g4 a8 | b2.~b4. b4 g8 | %10
fis2.~fis4. fis4 g8 | %11
fis4. fis4 fis8 fis4. g4 fis8 | %12
g2.~g4. g4 a8 | b2.~b4. g4 d8 | %14
e2.~e4. d4 c8 | b4. d4 d8 d4. d4 d8 d2.~d4.
}
BBIZGxICMusicRH =  \partCombine #'(2 . 20)  \BBIZGxICMusicRHA \BBIZGxICMusicRHB
BBIZGxICMusicLHA = \relative c{ \BBIZGxICMusicGlobal \clef "bass"
    b'4 c8 | d4. d4 d8 c4. g4 g8 | %2
g1 r8 g4 fis8 \pcAO | %3
g4. \pcAO g4 \pcAO g8 b4. b4 \pcAO g8 | %4
fis1 r8 b4 c8 | d4. d4 d8 c4. g4 g8 | %6
g1 r8 g4 fis8 \pcAO | %7
g4. fis4 g8 c4. b4 a8 | b1 r8 r4. | %9
r g4 a8 b4. \pcAO d4 \pcAO d8 | %10
d2.~d4. d4 d8 | d4. d4 d8 d4. d4 d8 | %12
d4. d4 d8 d4. \pcAp r | %13
r \pcAu g,4 a8 b4. d4 d8 | %14
c4. c4 c8 c4. g4 g8 | g4. b4 d8 c4. b4 a8 b2.~b4.
}
BBIZGxICMusicLHB = \relative c{ \BBIZGxICMusicGlobal \clef "bass"
    g'4 g8 | g4. b,4 b8 c4. c4 c8 | %2
g1 r8 b4 d8 | g4. g4 g8 g4. g4 g8 | %4
d1 r8 g4 g8 | g4. b,4 b8 c4. c4 c8 | %6
g1 r8 b4 d8 | g4. c,4 b8 c4. d4 d8 | %8
g1 r8 r4. | r g,4 g8 g4. r | %10
r d'4 d8 d4. d4 d8 | d4. d4 d8 d4. d4 d8 | %12
g4. g,4 g8 g4. g4 g8 | %13
g4. g4 g8 g4. g4 b8 | c4. c4 c8 c4. c4 c8 | %15
d4. d4 d8 d4. d4 d8 g2.~g4.
}
BBIZGxICMusicLH =  \partCombine #'(2 . 20)  \BBIZGxICMusicLHA \BBIZGxICMusicLHB
BBIZGxICMusicLyrics = \relative c''''{ \BBIZGxICMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c8 c4. c4 c8 c4. c4 c8 c1  s8 c4 c8 c4. c4 c8 c4. c4 c8 c1  s8 c4 c8 c4. c4 c8 c4. c4 c8 c1  s8 c4 c8 c4. c4 c8 c4. c4 c8 c1  s8 c4 c8 c2.  s4. c4 c8 c2.  s4. c4 c8 c4. c4 c8 c4. c4 c8 c2.  s4. c4 c8 c2.  s4. c4 c8 c2.  s4. c4 c8 c4. c4 c8 c4. c4 c8 c2.
}

BBIZHxCEIMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 74
    \time 6/8
    \key g \major
    \partial 8
    
}
BBIZHxCEIMusicRHA = \relative c'{ \BBIZHxCEIMusicGlobal \clef "treble"
    \pcAO d8 |  \nbp b'4 b8 b4 a8 | %2
\nbp a g2 \lbp g8 |  \nbp g4 a8 g4 e8 | %4
\nbp d4.~d4 \lbp d8 | %5
\nbp b'4 b8 b4 a8 | a g2 \lbp b8 | %7
\nbp b4 a8 cis4 a8 | %8
\nbp d4.~d4 \lbp d8 | %9
\nbp a4 b8 c4 c8 | c b2 \lbp b8 | %11
\nbp b4 fis8 b4 a8 | %12
\nbp g4.~g4 \lbp g8 | %13
\nbp g4 g8 g4 e8 |  \nbp e d2 \lbp g8 | %15
\nbp b4 b8 b4 a8 | %16
\nbp g4.~g4 \cbp b8 \postCho | %17
\nbp d4 d8 d4 b8 | a g2 \lbp b8 | %19
\nbp d4 d8 d4 b8 | %20
\nbp a4.~a4 \pcAO \lbp d,8 | %21
\nbp b'4 b8 b4 d8 | d c2 \lbp a8 | %23
\nbp g4 b8 b4 a8 \nbp g4.~g4 \he
}
BBIZHxCEIMusicRHB = \relative c'{ \BBIZHxCEIMusicGlobal \clef "treble"
    d8 | d4 d8 d4 c8 | c b2 b8 | %3
c4 c8 c4 c8 | b4.~b4 b8 | d4 d8 d4 c8 | %6
c b2 d8 | d4 d8 g4 g8 | %8
fis4.~fis4 fis8 | fis4 fis8 fis4 fis8 | %10
fis g2 d8 | dis4 dis8 dis4 dis8 | %12
e4.~e4 e8 | e4 e8 e4 c8 | c b2 b8 | %15
d4 d8 d4 c8 | b4.~b4 g'8 | g4 g8 g4 g8 | %18
fis d2 g8 | g4 g8 g4 g8 | %20
fis4.~fis4 d8 | d4 d8 d4 f8 | %22
e e2 e8 | d4 d8 d4 c8 b4.~b4
}
BBIZHxCEIMusicRH =  \partCombine #'(2 . 20)  \BBIZHxCEIMusicRHA \BBIZHxCEIMusicRHB
BBIZHxCEIMusicLHA = \relative c{ \BBIZHxCEIMusicGlobal \clef "bass"
    d8 | g4 g8 g4 fis8 | fis d2 d8 | %3
e4 e8 e4 g8 | g4.~g4 g8 | %5
g4 g8 g4 fis8 | fis d2 g8 | %7
fis4 fis8 a4 a8 | a4.~a4 a8 | %9
c4 b8 a4 a8 | a \pcAp g2 \pcAu g8 | %11
fis4 fis8 fis4 b8 | b4.~b4 b8 | %13
c4 c8 c4 g8 | g g2 g8 | g4 g8 g4 fis8 | %16
g4.~g4 \pcAO g8 | b4 b8 b4 d8 | %18
c b2 d8 | b4 b8 b4 d8 | %20
d4.~d4 fis,8 | g4 g8 g4 g8 | %22
g g2 c8 | b4 g8 g4 fis8 g4.~g4
}
BBIZHxCEIMusicLHB = \relative c{ \BBIZHxCEIMusicGlobal \clef "bass"
    d8 | g,4 g8 g4 d'8 | d g,2 g8 | %3
c4 c8 c4 c8 | g4.~g4 g8 | g4 g8 g4 d'8 | %6
d g,2 g8 | a4 a8 a4 cis8 | %8
d4.~d4 d8 | d4 d8 d4 d8 | d g2 g,8 | %11
b4 b8 b4 b8 | e4.~e4 e8 | c4 c8 c4 c8 | %14
g g2 g8 | d'4 d8 d4 d8 | g,4.~g4 g'8 | %17
g4 g8 g4 g8 | d g2 g8 | g4 g8 g4 g8 | %20
d4.~d4 d8 | g,4 g8 g4 b8 | %22
c c2 c8 | d4 d8 d4 d8 g,4.~g4
}
BBIZHxCEIMusicLH =  \partCombine #'(2 . 20)  \BBIZHxCEIMusicLHA \BBIZHxCEIMusicLHB
BBIZHxCEIMusicLyrics = \relative c''''{ \BBIZHxCEIMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8 c4 c8 c4 c8 c8 c2 c8 c4 c8 c4 c8 c4.  s4 c8 c4 c8 c4 c8 c8 c4  s4 c8 c4 c8 c4 c8 c4.  s4 c8 c4 c8 c4 c8 c8 c8  s4. c8 c4 c8 c4 c8 c4.  s4 c8 c4 c8 c4 c8 c8 c2 c8 c4 c8 c4 c8 c4.  s4 c8 c4 c8 c4 c8 c8 c4  s4 c8 c4 c8 c4 c8 c4.  s4 c8 c4 c8 c4 c8 c8 c8  s4. c8 c4 c8 c4 c8 c4.
}

BBIZIxFBMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 2 = 100
    \time 6/4
    \key des \major
    
}
BBIZIxFBMusicRHA = \relative c'{ \BBIZIxFBMusicGlobal \clef "treble"
    aes'2. f2 ees4 \pcAO | des f1 aes4 | %2
bes2. ges2 bes4 |  \nbp aes2.~aes2 r4 | %4
des2. c2 bes4 | aes f1 r4 | f2. ees2 f4 | %7
\nbp ees2.~ees2 r4 | %8
aes2. f2 ees4 \pcAO | des f1 aes4 | %10
bes2. ges2 bes4 |  \nbp aes2.~aes2 r4 | %12
des2. ees2 des4 | des bes1 bes4 | %14
aes2. ees2 f4 \pcAp | %15
\nbp des2.~des2 \pcAu r4 \cbp | %16
aes'2. \postCho f2 des'4 | c2.~c2 r4 | %18
bes2. ges2 bes4 |  \nbp aes2.~aes2 r4 | %20
des2. ees2 des4 | des bes1 bes4 | %22
aes2. ees2 f4 \pcAp \nbp des2.~des2 \pcAu \he
}
BBIZIxFBMusicRHB = \relative c'{ \BBIZIxFBMusicGlobal \clef "treble"
    f2. des2 des4 | des des1 f4 | %2
ges2. des2 ges4 | f2.~f2 r4 | %4
f2. aes2 ges4 | f des1 r4 | %6
des2. des2 des4 | c2.~c2 r4 | %8
des2. des2 des4 | des des1 f4 | %10
ges2. des2 ges4 | f2.~f2 r4 | %12
f2. ges2 f4 | ges ges1 ges4 | f2. c2 c4 | %15
des2.~des2 r4 | f2. des2 f4 | %17
ges2.~ges2 r4 | ges2. ees2 ges4 | %19
f2.~f2 r4 | f2. ges2 f4 | %21
ges ges1 ges4 | f2. c2 c4 des2.~des2
}
BBIZIxFBMusicRH =  \partCombine #'(2 . 20)  \BBIZIxFBMusicRHA \BBIZIxFBMusicRHB
BBIZIxFBMusicLHA = \relative c{ \BBIZIxFBMusicGlobal \clef "bass"
    des'2. aes2 ges4 | f aes1 des4 | %2
des2. bes2 des4 | des2.~des2 r4 | %4
aes2. des2 des4 | des aes1 r4 | %6
bes2. g2 g4 | aes2.~aes2 r4 | %8
f2. aes2 ges4 | f aes1 des4 | %10
des2. bes2 des4 | des2.~des2 r4 | %12
aes2. aes2 aes4 | bes des1 des4 | %14
des2. ges,2 aes4 | f2.~f2 r4 | %16
des'2. aes2 aes4 | aes2.~aes2 r4 | %18
c2. c2 c4 | des2.~des2 r4 | %20
aes2. aes2 aes4 | bes des1 des4 | %22
des2. ges,2 aes4 f2.~f2
}
BBIZIxFBMusicLHB = \relative c{ \BBIZIxFBMusicGlobal \clef "bass"
    des2. des2 des4 | des des1 des4 | %2
ges2. ges2 ges4 | des2.~des2 r4 | %4
des2. des2 des4 | des des1 r4 | %6
bes2. ees2 ees4 | aes,2.~aes2 r4 | %8
des2. des2 des4 | des des1 des4 | %10
ges2. ges2 ges4 | des2.~des2 r4 | %12
des2. des2 des4 | ges ges1 ges4 | %14
aes2. aes,2 aes4 | des2.~des2 r4 | %16
des2. des2 des4 | ees2.~ees2 r4 | %18
aes2. aes2 aes4 | des,2.~des2 r4 | %20
des2. des2 des4 | ges ges1 ges4 | %22
aes2. aes,2 aes4 des2.~des2
}
BBIZIxFBMusicLH =  \partCombine #'(2 . 20)  \BBIZIxFBMusicLHA \BBIZIxFBMusicLHB
BBIZIxFBMusicLyrics = \relative c''''{ \BBIZIxFBMusicGlobal \clef "treble"
    \hideNotes \voiceFour c2. c2 c4 c4 c1 c4 c2. c2 c4 c2. s2 s4 c2. c2 c4 c4 c2 s2 s4 c2. c2 c4 c2. s2 s4 c2  s4 c2 c4 c4 c1 c4 c2. c2 c4 c2. s2 s4 c2  s4 c2 c4 c4 c1 c4 c2. c2 c4 c2. s2 s4 c2. c2 c4 c2. s2 s4 c2. c2 c4 c2. s2 s4 c2. c2 c4 c4 c1 c4 c2. c2 c4 c2.
}

BBIAZxACCMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 70
    \time 6/8
    \key as \major
    
}
BBIAZxACCMusicRHA = \relative c'{ \BBIAZxACCMusicGlobal \clef "treble"
    c'8 bes aes ees4 aes8 |  \nbp aes4. g | %2
des'8 c bes f4 g8 |  \nbp f4. (ees) | %4
c'8 bes aes ees4 aes8 |  \nbp g4. bes | %6
bes8 c bes aes g f \pcAp | %7
\nbp ees4.~ees4 \pcAu r8 \cbp | %8
bes'4. \postCho ees,  | %9
aes ees4 r8 | aes aes aes aes g aes | %11
bes4 c8 des4. | c8 des c bes4 bes16 bes | %13
ees4 aes,8 \set Score.tempoHideNote = ##t \tempo 4 = 35  \fpre des4. \fpost \set Score.tempoHideNote = ##t \tempo 4 = 70   | c8 bes aes ees aes c bes4. aes \he
}
BBIAZxACCMusicRHB = \relative c'{ \BBIAZxACCMusicGlobal \clef "treble"
    ees8 des c c4 ees8 | des4. des | %2
ees8 ees ees des4 des8 | c2. | %4
ees8 des c c4 ees8 | ees4. ees | %6
d8 d d d4 d8 | ees4.~ees4 r8 | %8
des4. des | c c4 r8 | c c c d d d | %11
ees4. g | ees8 f ees ees4 ees16 ees | %13
ees4 ges8 f4. | ees8 ees ees c c ees des4. c
}
BBIAZxACCMusicRH =  \partCombine #'(2 . 20)  \BBIAZxACCMusicRHA \BBIAZxACCMusicRHB
BBIAZxACCMusicLHA = \relative c{ \BBIAZxACCMusicGlobal \clef "bass"
    aes'8 aes aes aes4 aes8 | bes4. bes | %2
g8 aes g bes4 bes8 | aes2. | %4
aes8 aes aes aes4 aes8 | bes4. g | %6
f8 aes g f bes aes | g4.~g4 r8 | %8
g4. bes | aes aes4 r8 | %10
aes aes aes bes bes bes | %11
g4 aes8 bes4. \pcAO | %12
aes8 \pcAO aes \pcAO aes g4 g16 g | %13
aes4 aes8 aes4. | aes8 des c aes aes aes g4. aes
}
BBIAZxACCMusicLHB = \relative c{ \BBIAZxACCMusicGlobal \clef "bass"
    aes8 aes aes aes4 c8 | bes4. ees | %2
ees8 ees ees ees4 ees8 | aes,2. | %4
aes8 aes aes aes4 c8 | bes4. bes | %6
bes8 bes bes bes4 bes8 | ees4.~ees4 r8 | %8
ees4. g | aes aes,4 r8 | %10
f' f f bes, bes bes | ees4. ees | %12
aes8 aes aes ees4 des16 des | c4 c8 \fpre des4. \fpostbelow | %14
ees8 ees ees ees ees ees ees4. aes,
}
BBIAZxACCMusicLH =  \partCombine #'(2 . 20)  \BBIAZxACCMusicLHA \BBIAZxACCMusicLHB
BBIAZxACCMusicLyrics = \relative c''''{ \BBIAZxACCMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8 c8 c8 c4 c8 c4. c4. c8 c8 c8 c4 c8 c4.  s4. c8 c8 c8 c4 c8 c4. c4. c8 c8 c8 c8 c8 c8 c4. s4 s8 c4. c4. c4. c4  s8 c8 c8 c8 c8 c8 c8 c4 c8 c4. c8 c8 c8 c4 c16 c16 c4 c8 c4. c8 c8 c8 c8 c8 c8 c4. c4.
}

BBIAAxACGMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 90
    \time 4/4
    \key des \major
    
}
BBIAAxACGMusicRHA = \relative c'{ \BBIAAxACGMusicGlobal \clef "treble"
    f4. ees8 \pcAO des4 ees | f aes bes aes | %2
des2 bes4 aes | aes f ees2 | %4
f4. ees8 \pcAO des4 ees | f aes bes aes | %6
des4. bes8 aes4 f | %7
ees4. \pcAO des8 \pcAO des2 \cbp | %8
des'4. \postCho des8 des4 des | %9
ees c des aes | bes4. bes8 bes4 des | %11
c bes aes2 | f4. ees8 \pcAO des4 ees | %13
f aes bes aes | des4. bes8 aes4 f ees4. des8 des2 \he
}
BBIAAxACGMusicRHB = \relative c'{ \BBIAAxACGMusicGlobal \clef "treble"
    des4. des8 des4 des | des f ges f | %2
f2 ges4 f | f des c2 | %4
des4. des8 des4 des | des f ges f | %6
aes4. ges8 f4 des | c4. des8 des2 | %8
f4. f8 f4 f | ges ees f f | %10
ges4. ges8 ges4 bes | aes ges f2 | %12
des4. des8 des4 des | des f ges f | %14
f4. ges8 f4 des c4. aes8 aes2
}
BBIAAxACGMusicRH =  \partCombine #'(2 . 20)  \BBIAAxACGMusicRHA \BBIAAxACGMusicRHB
BBIAAxACGMusicLHA = \relative c{ \BBIAAxACGMusicGlobal \clef "bass"
    aes'4. ges8 f4 ges | aes des des des | %2
aes2 des4 des | des aes aes2 | %4
aes4. ges8 f4 ges | aes des des des | %6
des4. des8 \pcAO aes4 aes | ges4. f8 f2 | %8
aes4. aes8 aes4 aes \pcAO | %9
aes aes aes des | des4. des8 des4 des | %11
des des des2 | aes4. ges8 f4 ges | %13
aes des des des | des4. des8 des4 aes ges4. f8 f2
}
BBIAAxACGMusicLHB = \relative c{ \BBIAAxACGMusicGlobal \clef "bass"
    des4. des8 des4 des | des des des des | %2
des2 des4 des | des des aes2 | %4
des4. des8 des4 des | des des des des | %6
f4. ges8 aes4 aes, | aes4. des8 des2 | %8
des4. des8 des4 des | aes' aes, des des | %10
ges4. ges8 ges4 ges | ges ges des2 | %12
des4. des8 des4 des | des des des des | %14
des4. des8 des4 des aes4. des8 des2
}
BBIAAxACGMusicLH =  \partCombine #'(2 . 20)  \BBIAAxACGMusicLHA \BBIAAxACGMusicLHB
BBIAAxACGMusicLyrics = \relative c''''{ \BBIAAxACGMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4. c8 c4 c4 c4 c4 c4 c4 c2 c4 c4 c4 c4 c2 c4. c8 c4 c4 c4 c4 c4 c4 c4. c8 c4 c4 c4. c8 c2 c4. c8 c4 c4 c4 c4 c4 c4 c4. c8 c4 c4 c4 c4 c2 c4. c8 c4 c4 c4 c4 c4 c4 c4. c8 c4 c4 c4. c8 c2
}

BBIABxDIMoreSylBMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 8 = 100
    \time 2/4
    \key es \major
    
}
BBIABxDIMoreSylBMusicRHA = \relative c'{ \BBIABxDIMoreSylBMusicGlobal \clef "treble"
    bes'8. bes16 c8 bes \pcAO | %1
g8. \pcAO bes,16 ees8 f |  \nbp ees4 d | %3
bes'8. bes16 c8 bes | %4
aes8. \pcAO bes,16 d8 f | %5
\nbp ees ([g] bes4) | %6
bes8. bes16 c8 bes \pcAO | %7
g8. \pcAO bes,16 ees8 f |  \nbp ees4 d | %9
bes'8. bes16 c8 bes | %10
aes8. \pcAO bes,16 d8 f |  \nbp ees2 | %12
ees'8. ees16 d8 c | aes8. ees'16 d8 c | %14
c [bes] g4 | bes8. bes16 c8 bes | %16
aes8. \pcAO bes,16 d8 f \pcAO | %17
\nbp ees ([g] bes4) | %18
ees8. ees16 d8 c | aes8. ees'16 d8 c | %20
c [bes] g4 | bes8. bes16 c8 bes | %22
aes8. \pcAO bes,16 d8 f \pcAO ees2 \he
}
BBIABxDIMoreSylBMusicRHB = \relative c'{ \BBIABxDIMoreSylBMusicGlobal \clef "treble"
    ees8. ees16 ees8 ees | %1
g8. bes,16 bes8 bes | bes4 bes | %3
d8. d16 d8 ees | d8. bes16 bes8 d | bes2 | %6
ees8. ees16 ees8 ees | %7
g8. bes,16 bes8 bes | bes4 bes | %9
d8. d16 d8 ees | d8. bes16 bes8 d | bes2 | %12
ees8. ees16 ees8 ees | %13
ees8. ees16 ees8 ees | ees4 ees | %15
ees8. ees16 ees8 ees | d8. bes16 bes8 d | %17
ees2 | ees8. ees16 ees8 ees | %19
ees8. ees16 ees8 ees | ees4 ees | %21
ees8. ees16 ees8 ees | d8. bes16 bes8 d ees2
}
BBIABxDIMoreSylBMusicRH =  \partCombine #'(2 . 20)  \BBIABxDIMoreSylBMusicRHA \BBIABxDIMoreSylBMusicRHB
BBIABxDIMoreSylBMusicLHA = \relative c{ \BBIABxDIMoreSylBMusicGlobal \clef "bass"
    g'8. g16 aes8 g | bes8. g16 g8 aes | %2
g4 f | f8. f16 aes8 g | f8. d16 f8 aes | %5
g2 | g8. g16 aes8 g | bes8. g16 g8 aes | %8
g4 f | f8. f16 aes8 g | f8. d16 f8 aes | %11
g2 | g8. g16 aes8 aes | %13
aes8. aes16 aes8 aes | aes g bes4 | %15
bes8. bes16 \pcAO aes8 bes | %16
bes8. aes16 aes8 aes | g ([bes] g4) | %18
g8. g16 aes8 aes | aes8. aes16 aes8 aes | %20
aes [g] bes4 | %21
bes8. bes16 \pcAO aes8 bes | %22
bes8. aes16 aes8 aes g2
}
BBIABxDIMoreSylBMusicLHB = \relative c{ \BBIABxDIMoreSylBMusicGlobal \clef "bass"
    ees8. ees16 ees8 ees | %1
ees8. ees16 ees8 ees | bes4 bes | %3
bes8. bes16 bes8 bes | %4
bes8. bes16 bes8 bes | ees2 | %6
ees8. ees16 ees8 ees | %7
ees8. ees16 ees8 ees | bes4 bes | %9
bes8. bes16 bes8 bes | %10
bes8. bes16 bes8 bes | ees2 | %12
ees8. ees16 aes,8 aes | c8. c16 aes8 aes | %14
ees'4 ees | g8. g16 aes8 g | %16
f8. f16 bes,8 bes | ees2 | %18
ees8. ees16 aes,8 aes | c8. c16 aes8 aes | %20
ees'4 ees | g8. g16 aes8 g | %22
f8. f16 bes,8 bes ees2
}
BBIABxDIMoreSylBMusicLH =  \partCombine #'(2 . 20)  \BBIABxDIMoreSylBMusicLHA \BBIABxDIMoreSylBMusicLHB
BBIABxDIMoreSylBMusicLyrics = \relative c''''{ \BBIABxDIMoreSylBMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8. c16 c8 c8 c8. c16 c8 c8 c4 c4 c8. c16 c8 c8 c8. c16 c8 c8 c8 s8 s4 c8. c16 c8 c8 c8. c16 c8 c8 c4 c4 c8. c16 c8 c8 c8. c16 c8 c8 c2 c8. c16 c8 c8 c8. c16 c8 c8 c8  s8 c4 c8. c16 c8 c8 c8. c16 c8 c8 c8 s8 s4 c8. c16 c8 c8 c8. c16 c8 c8 c8 c8 c4 c8. c16 c8 c8 c8. c16 c8 c8 c2
}

BBIACxBHIMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 68
    \time 3/4
    \key g \major
    \partial 4
    
}
BBIACxBHIMusicRHA = \relative c'{ \BBIACxBHIMusicGlobal \clef "treble"
    d4 |  \nbp d8 b' b4 g8 [a] | %2
g fis fis4 \lbp d | %3
\nbp d8 c' c4 a8 [b] | %4
a g g4 \postSegnoMark \lbp d' | %5
\nbp d8 b b4 a8 [b] | a g g4 \lbp a | %7
\nbp b8 d, b'4 a | %8
\nbp g2 \postFine \cbp d'4 \postCho | %9
\nbp d8 b d4 e |  \nbp a,2 \lbp c4 | %11
\nbp c8 a c4 d \nbp b2 \postDS \he
}
BBIACxBHIMusicRHB = \relative c'{ \BBIACxBHIMusicGlobal \clef "treble"
    b4 | b8 d d4 b | c8 c c4 c | %3
c8 d d4 c8 [d] | c b b4 g' | %5
g8 g g4 fis8 [f] | e e e4 e | %7
d8 b d4 c | b2 g'4 | g8 g g4 g | %10
fis2 fis4 | a8 fis a4 fis g2
}
BBIACxBHIMusicRH =  \partCombine #'(2 . 20)  \BBIACxBHIMusicRHA \BBIACxBHIMusicRHB
BBIACxBHIMusicLHA = \relative c{ \BBIACxBHIMusicGlobal \clef "bass"
    \pcAp g'4 | g8 g g4 g \pcAu | %2
a8 a a4 fis | fis8 a a4 fis \pcAp | %4
g8 g g4 \pcAu b | b8 d d4 c8 [b] | %6
c c c4 g | g8 g fis4 fis | g2 b4 | %9
b8 d b4 c | c8 c c4 a | a8 d d4 d d8 d d4
}
BBIACxBHIMusicLHB = \relative c{ \BBIACxBHIMusicGlobal \clef "bass"
    g'4 | g8 g g4 g | d8 d d4 d | d8 d d4 d | %4
g8 g g4 g | g8 g g4 g | c,8 c c4 c | %7
d8 d d4 d | g,2 g'4 | g8 g g4 c, | %10
d8 d d4 d | d8 d d4 d g8 g g4
}
BBIACxBHIMusicLH =  \partCombine #'(2 . 20)  \BBIACxBHIMusicLHA \BBIACxBHIMusicLHB
BBIACxBHIMusicLyrics = \relative c''''{ \BBIACxBHIMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c8 c8 c4 c8  s8 c8 c8 c4 c4 c8 c8 c4 c8  s8 c8 c8 c4 c4 c8 c8 c4 c8  s8 c8 c8 c4 c4 c8 c8 c4 c4 c2 c4 c8 c8 c4 c4 c2 c4 c8 c8 c4 c4 c2
}

BBIADxDAAMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 2 = 64
    \time 4/4
    \key bes \major
    
}
BBIADxDAAMusicRHA = \relative c'{ \BBIADxDAAMusicGlobal \clef "treble"
    f2 f4 f | f2. f4 | g g g f | %3
\nbp f2. \lbp f4 |  \nbp bes2 c | %5
d4 c bes g | f2 f4 (ees) \nbp d1 \he
}
BBIADxDAAMusicRHB = \relative c'{ \BBIADxDAAMusicGlobal \clef "treble"
    d2 c8 [d] ees4 | d2. d4 | %2
ees ees ees ees | d2. d4 | ees2 e | %5
f4 f f ees | d2 c bes1
}
BBIADxDAAMusicRH =  \partCombine #'(2 . 20)  \BBIADxDAAMusicRHA \BBIADxDAAMusicRHB
BBIADxDAAMusicLHA = \relative c{ \BBIADxDAAMusicGlobal \clef "bass"
    bes'2 a8 [bes] c4 | bes2. bes4 | %2
bes c c c | bes2. bes4 | bes2 bes | %5
bes4 a bes bes | bes2 a f1
}
BBIADxDAAMusicLHB = \relative c{ \BBIADxDAAMusicGlobal \clef "bass"
    bes2 f'4 f | bes,2. bes4 | %2
ees c8 [bes] a4 a | bes2. aes'4 | %4
g2 ges | f4 ees d ees | f2 f, bes1
}
BBIADxDAAMusicLH =  \partCombine #'(2 . 20)  \BBIADxDAAMusicLHA \BBIADxDAAMusicLHB
BBIADxDAAMusicLyrics = \relative c''''{ \BBIADxDAAMusicGlobal \clef "treble"
    \hideNotes \voiceFour c2 c4 c4 c2. c4 c4 c4 c4 c4 c2. c4 c2 c2 c4 c4 c4 c4 c2 c4  s4 c1
}

BBIAExGZMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 98
    \time 4/4
    \key as \major
    
}
BBIAExGZMusicRHA = \relative c'{ \BBIAExGZMusicGlobal \clef "treble"
    aes'4 aes aes4. g8 | f4 g aes2 | %2
bes4 bes c \pcAO ees, | f bes \pcAO g2 | %4
bes4 des c4. aes8 | g4 bes aes2 | %6
aes4 bes aes aes aes4. g8 aes2 \he
}
BBIAExGZMusicRHB = \relative c'{ \BBIAExGZMusicGlobal \clef "treble"
    ees4 ees des4. des8 | des4 des c2 | %2
ees4 ees ees ees | ees des g2 | %4
ees4 ees ees4. ees8 | des4 des c2 | %6
f4 f ees ees ees4. ees8 ees2
}
BBIAExGZMusicRH =  \partCombine #'(2 . 20)  \BBIAExGZMusicRHA \BBIAExGZMusicRHB
BBIAExGZMusicLHA = \relative c{ \BBIAExGZMusicGlobal \clef "bass"
    c'4 c bes4. bes8 | aes4 bes \pcAO aes2 | %2
bes4 des c aes | aes f bes2 | %4
bes4 bes c4. c8 | bes4 g aes2 | %6
des4 des c bes8 [aes] bes4. bes8 c2
}
BBIAExGZMusicLHB = \relative c{ \BBIAExGZMusicGlobal \clef "bass"
    aes'4 aes ees4. ees8 | ees4 ees aes2 | %2
g4 g aes c, | des des ees2 | %4
g4 g aes4. aes8 | ees4 ees f2 | %6
des4 des ees ees ees4. ees8 aes,2
}
BBIAExGZMusicLH =  \partCombine #'(2 . 20)  \BBIAExGZMusicLHA \BBIAExGZMusicLHB
BBIAExGZMusicLyrics = \relative c''''{ \BBIAExGZMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c4 c4. c8 c4 c4 c2 c4 c4 c4 c4 c4 c4 c2 c4 c4 c4. c8 c4 c4 c2 c4 c4 c4 c4 c4. c8 c2
}

BBIAFxBGFMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 104
    \time 4/4
    \key es \major
    
}
BBIAFxBGFMusicRHA = \relative c'{ \BBIAFxBGFMusicGlobal \clef "treble"
    g'4. g8 g4 f | f \pcAO ees \pcAO ees g | %2
bes4. bes8 c4 bes |  \nbp bes1 | %4
g4 bes ees d | c bes bes g | g g bes g | %7
\nbp f1 | g4 aes g f | %9
f \pcAO ees \pcAO ees g | bes bes ees d | %11
\nbp c1 | ees4 d c bes | bes c c bes | %14
bes g f \pcAO ees \pcAO \nbp ees1 \he
}
BBIAFxBGFMusicRHB = \relative c'{ \BBIAFxBGFMusicGlobal \clef "treble"
    ees4. ees8 d4 d | d ees ees ees | %2
ees4. ees8 ees4 ees | ees1 | %4
ees4 ees ees ees | ees d ees ees | %6
ees ees ees ees | d1 | ees4 ees ees d | %9
d ees ees ees | g g g bes | aes1 | %12
ees4 ees ees d | ees ees ees ees | %14
ees ees d ees ees1
}
BBIAFxBGFMusicRH =  \partCombine #'(2 . 20)  \BBIAFxBGFMusicRHA \BBIAFxBGFMusicRHB
BBIAFxBGFMusicLHA = \relative c{ \BBIAFxBGFMusicGlobal \clef "bass"
    bes'4. bes8 bes4 aes | aes g g bes | %2
g4. g8 aes4 g | g1 | bes4 g bes bes | %5
aes aes g bes | bes bes g bes | bes1 | %8
bes4 c bes aes | aes g g bes | %10
ees ees bes ees | ees1 | %12
bes4 bes aes aes | g aes aes g | %14
g bes aes g g1
}
BBIAFxBGFMusicLHB = \relative c{ \BBIAFxBGFMusicGlobal \clef "bass"
    ees4. ees8 bes4 bes | bes ees ees ees | %2
ees4. ees8 aes,4 ees' | ees1 | %4
ees4 ees g, g | aes bes ees ees | %6
ees ees ees ees | bes1 | %8
ees4 aes, bes bes | bes ees ees ees | %10
ees ees ees g | aes1 | g4 g, aes bes | %13
ees aes, aes ees' | bes bes bes ees ees1
}
BBIAFxBGFMusicLH =  \partCombine #'(2 . 20)  \BBIAFxBGFMusicLHA \BBIAFxBGFMusicLHB
BBIAFxBGFMusicLyrics = \relative c''''{ \BBIAFxBGFMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4. c8 c4 c4 c4 c4 c4 c4 c4. c8 c4 c4 c1 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c1 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c1 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c1
}

BBIAGxAZCMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 64
    \time 3/4
    \key as \major
    \partial 4
    
}
BBIAGxAZCMusicRHA = \relative c'{ \BBIAGxAZCMusicGlobal \clef "treble"
    c'8 c |  \nbp c4. aes8 bes c | %2
\nbp bes4 aes \lbp aes8. aes16 | %3
\nbp aes4. bes8 aes f | %4
\nbp ees2 \lbp ees8 ees | %5
\nbp aes4. ees8 aes bes | %6
\nbp c c4. \lbp aes8. aes16 | %7
\nbp bes4. bes8 aes c | %8
\nbp bes2 \lbp c8 c | %9
\nbp c4. aes8 bes c | %10
\nbp bes4 aes \lbp aes8. aes16 | %11
\nbp aes4. bes8 aes8. f16 | %12
\nbp ees2 \lbp ees8 ees | %13
\nbp aes4. ees8 aes bes | %14
\nbp c c4. \lbp aes8. bes16 | %15
\nbp c4. aes8 bes8. bes16 | %16
\nbp aes2 \cbp des8. \postCho des16 | %17
\nbp des4. des8 aes bes | %18
\nbp c4 c \lbp ees8. ees16 | %19
\nbp ees4. c8 bes aes | %20
\nbp bes2 \lbp c8 des | %21
\nbp ees4. c8 bes aes | %22
\nbp f4 aes \lbp aes8 bes | %23
\nbp c4. aes8 bes bes \nbp aes2 \he
}
BBIAGxAZCMusicRHB = \relative c'{ \BBIAGxAZCMusicGlobal \clef "treble"
    ees8 ees | ees4. c8 des ees | %2
des4 c ees8. ees16 | f4. f8 f des | %4
c2 c8 c | c4. c8 ees ees | %6
ees ees4. ees8. ees16 | d4. d8 d d | %8
ees2 ees8 ees | ees4. c8 des ees | %10
des4 c ees8. ees16 | f4. f8 f8. des16 | %12
c2 c8 c | c4. c8 c ees | %14
ees ees4. c8. des16 | %15
ees4. c8 des8. des16 | c2 f8. f16 | %17
f4. f8 f fes | ees4 ees ees8. ees16 | %19
ees4. ees8 ees f | g2 ees8 ees | %21
aes4. ees8 ees ees | des4 f f8 fes | %23
ees4. ees8 ees ees ees2
}
BBIAGxAZCMusicRH =  \partCombine #'(2 . 20)  \BBIAGxAZCMusicRHA \BBIAGxAZCMusicRHB
BBIAGxAZCMusicLHA = \relative c{ \BBIAGxAZCMusicGlobal \clef "bass"
    aes'8 aes | aes4. ees8 ees aes | %2
aes4 aes aes8. aes16 | aes4. des8 des aes | %4
aes2 aes8 aes | ees4. aes8 aes g \pcAO | %6
aes \pcAO aes4. aes8. aes16 | %7
aes4. f8 bes aes | g2 aes8 aes | %9
aes4. ees8 ees aes | g4 aes aes8. aes16 | %11
des4. des8 des8. aes16 | aes2 aes8 aes | %13
ees4. aes8 aes g \pcAO | %14
aes \pcAO aes4. aes8. aes16 | %15
aes4. aes8 g8. g16 | aes2 aes8. aes16 | %17
aes4. aes8 aes aes | aes4 aes c8. c16 | %19
c4. \pcAO aes8 bes d | %20
ees2 \pcAO aes,8 bes | c4. aes8 g aes | %22
aes4 aes aes8 aes | aes4. c8 des des c2
}
BBIAGxAZCMusicLHB = \relative c{ \BBIAGxAZCMusicGlobal \clef "bass"
    aes8 aes | aes4. aes8 aes aes | %2
aes4 aes c8. c16 | des4. des8 des des | %4
aes2 aes8 aes | aes4. aes8 c ees | %6
aes aes4. c,8. c16 | bes4. bes8 bes bes | %8
ees2 aes,8 aes | aes4. aes8 aes aes | %10
ees'4 aes, c8. c16 | %11
des4. des8 des8. des16 | aes2 aes8 aes | %13
aes4. aes8 aes ees' | aes aes4. f8. fes16 | %15
ees4. ees8 ees8. ees16 | %16
aes,2 des8. des16 | des4. des8 des des | %18
aes4 aes aes'8. aes16 | aes4. aes8 g f | %20
ees2 aes8 aes | aes4. aes,8 bes c | %22
des4 des des8 des | ees4. ees8 ees ees aes,2
}
BBIAGxAZCMusicLH =  \partCombine #'(2 . 20)  \BBIAGxAZCMusicLHA \BBIAGxAZCMusicLHB
BBIAGxAZCMusicLyrics = \relative c''''{ \BBIAGxAZCMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8 c8 c4. c8 c8 c8 c4 c4 c8. c16 c4. c8 c8 c8 c2 c8 c8 c4. c8 c8 c8 c8 c4. c8. c16 c4. c8 c8 c8 c2 c8 c8 c4. c8 c8 c8 c4 c4 c8. c16 c4. c8 c8. c16 c2 c8 c8 c4. c8 c8 c8 c8 c4. c8. c16 c4. c8 c8. c16 c2 c8. c16 c4. c8 c8 c8 c4 c4 c8. c16 c4. c8 c8 c8 c2 c8 c8 c4. c8 c8 c8 c4 c4 c8 c8 c4. c8 c8 c8 c2
}

BBIAHxAFIMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 60
    \time 4/4
    \key d \major
    \partial 8
    
}
BBIAHxAFIMusicRHA = \relative c'{ \BBIAHxAFIMusicGlobal \clef "treble"
    a'8 |  \nbp a4. g8 fis4. fis8 | %2
fis g a b b4 \set Score.tempoHideNote = ##t \tempo 4 = 30  \fpre a8  \fpost \set Score.tempoHideNote = ##t \tempo 4 = 60   \lbp g | %3
\nbp g4. fis8 e4. d8 | %4
cis d e e a4. \lbp a8 | %5
\nbp a4. g8 fis4. fis8 | %6
fis g a b b4 \set Score.tempoHideNote = ##t \tempo 4 = 30  \fpre a8 \fpost \set Score.tempoHideNote = ##t \tempo 4 = 60   \lbp a | %7
\nbp d d cis b a4 \set Score.tempoHideNote = ##t \tempo 4 = 30  \fpre fis8 \fpost \set Score.tempoHideNote = ##t \tempo 4 = 60   b | %8
a4 g8 e \pcAO d2 \cbp | %9
e8 \postCho e e fis g2 | %10
fis8 fis fis g a4. \lbp a8 | %11
\nbp d d cis b a4 fis8 \lbp b \nbp a4 g8 e \pcAO \set Score.tempoHideNote = ##t \tempo 4 = 30  \fpre d4. \fpost \set Score.tempoHideNote = ##t \tempo 4 = 60   \he
}
BBIAHxAFIMusicRHB = \relative c'{ \BBIAHxAFIMusicGlobal \clef "treble"
    d8 | d4. d8 d4. d8 | d d d d d4 d8 cis | %3
cis4. d8 cis4. a8 | a a cis cis cis4. d8 | %5
d4. d8 d4. d8 | d d d d f4 fis8 d | %7
d d d d d4 d8 d | d4 cis8 cis d2 | %9
cis8 cis cis d e2 | d8 d d cis d4. d8 | %11
d d d d d4 d8 d d4 cis8 cis d4.
}
BBIAHxAFIMusicRH =  \partCombine #'(2 . 20)  \BBIAHxAFIMusicRHA \BBIAHxAFIMusicRHB
BBIAHxAFIMusicLHA = \relative c{ \BBIAHxAFIMusicGlobal \clef "bass"
    fis8 | fis4. b8 a4. a8 | %2
a e fis g g4 fis8 e | e4. a8 a4. fis8 | %4
e fis a a g4. fis8 | fis4. b8 a4. a8 | %6
a e fis g gis4 a8 a | %7
b b a \pcAO g fis4 a8 g | fis4 e8 g fis2 | %9
a8 a a a a2 | a8 a a a a4. a8 | %11
b b a \pcAO g fis4 a8 g fis4 e8 g fis4.
}
BBIAHxAFIMusicLHB = \relative c{ \BBIAHxAFIMusicGlobal \clef "bass"
    d8 | d4. d8 d4. d8 | d d d d d4 \fpre d8 \fpostbelow a | %3
a4. a8 a4. a8 | a a a a a4. d8 | %5
d4. d8 d4. d8 | d d d d d4 \fpre d8 \fpostbelow fis | %7
g g g g d4 \fpre d8 \fpostbelow  g, | a4 a8 a d2 | %9
a8 a e' d cis2 | d8 d d e fis4. fis8 | %11
g g g g d4 d8 g, a4 a8 a \fpre d4. \fpostbelow
}
BBIAHxAFIMusicLH =  \partCombine #'(2 . 20)  \BBIAHxAFIMusicLHA \BBIAHxAFIMusicLHB
BBIAHxAFIMusicLyrics = \relative c''''{ \BBIAHxAFIMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8 c4. c8 c4. c8 c8 c8 c8 c8 c4 c8 c8 c4. c8 c4. c8 c8 c8 c8 c8 c4. c8 c4. c8 c4. c8 c8 c8 c8 c8 c4 c8 c8 c8 c8 c8 c8 c4 c8 c8 c4 c8 c8 c2 c8 c8 c8 c8 c2 c8 c8 c8 c8 c4. c8 c8 c8 c8 c8 c4 c8 c8 c4 c8 c8 c4.
}

BBIAIxCHEMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 92
    \time 4/4
    \key es \major
    
}
BBIAIxCHEMusicRHA = \relative c'{ \BBIAIxCHEMusicGlobal \clef "treble"
    bes'4. a8 c4 bes | bes4. g8 bes4 aes | %2
g4. f8 aes4. g8 | g4. f8 \pcAO ees2 | %4
bes'4. a8 c4 bes | bes4. g8 bes4 aes | %6
g4. f8 aes f \pcAO c d |  \nbp ees2. r4 | %8
f4. g8 aes [g] f4 | g4. c8 bes4 g | %10
f4. g8 aes [g] f4 | g4. c8 bes2 | %12
bes4. g8 ees'4. d8 | %13
c (d4) c8 bes4 g \pcAO | %14
ees4. f8 g (bes4) aes8 | %15
g4. f8 \pcAO ees2 \cbp | %16
bes'4. \postCho a8 c4 bes |  \nbp g2 f | %18
aes4. g8 aes4 c |  \nbp bes2 g | %20
bes4. a8 bes4 ees | d c bes \lbp aes | %22
\nbp g4. bes8 aes4 f \pcAO \nbp ees2. \he
}
BBIAIxCHEMusicRHB = \relative c'{ \BBIAIxCHEMusicGlobal \clef "treble"
    ees4. ees8 ees4 ees | e4. e8 f4 f | %2
d4. d8 d4. d8 | d4. d8 ees2 | %4
ees4. ees8 ees4 ees | e4. e8 f4 f | %6
d4. d8 d d c bes | bes2. r4 | %8
d4. ees8 d4 d | ees4. ees8 ees4 ees | %10
d4. ees8 f [ees] d4 | ees4. ees8 ees2 | %12
ees4. ees8 ees4. ees8 | %13
ees4. ees8 ees4 ees | %14
ees4. ees8 ees4. ees8 | ees4. d8 ees2 | %16
ees4. ees8 ees4 ees | ees2 d | %18
f4. e8 f4 d | ees2 ees | g4. fis8 g4 bes | %21
bes aes g f | ees4. ees8 d4 d ees2.
}
BBIAIxCHEMusicRH =  \partCombine #'(2 . 20)  \BBIAIxCHEMusicRHA \BBIAIxCHEMusicRHB
BBIAIxCHEMusicLHA = \relative c{ \BBIAIxCHEMusicGlobal \clef "bass"
    g'4. ges8 aes4 g | g4. c8 c4 c | %2
bes4. aes8 f4. bes8 | bes4. aes8 g2 | %4
g4. ges8 aes4 g | g4. c8 c4 c | %6
bes4. aes8 f aes aes aes | g2. r4 | %8
aes4. g8 f4 bes | bes4. aes8 g4 bes | %10
bes4. bes8 bes4 bes | bes4. aes8 g2 | %12
g4. bes8 bes4. bes8 \pcAO | %13
aes4. aes8 g4 bes | c4. b8 bes4. c8 | %15
bes4. aes8 g2 | g4. ges8 aes4 g | %17
bes2 bes | bes4. bes8 bes4 aes | g2 bes | %20
ees4. ees8 ees4 ees | ees ees ees c | %22
bes4. g8 f4 aes g2.
}
BBIAIxCHEMusicLHB = \relative c{ \BBIAIxCHEMusicGlobal \clef "bass"
    ees4. ees8 ees4 ees | c4. c8 f4 f | %2
bes,4. bes8 bes4. bes8 | bes4. bes8 ees2 | %4
ees4. ees8 ees4 ees | c4. c8 f4 f | %6
bes,4. bes8 bes bes bes bes | ees2. r4 | %8
bes4. bes8 bes4 bes | ees4. ees8 ees4 ees | %10
bes4. bes8 bes4 bes | ees4. ees8 ees2 | %12
ees4. ees8 g4. g8 | aes4. aes,8 ees'4 ees | %14
aes,4. aes8 bes (g4) aes8 | %15
bes4. bes8 ees2 | ees4. ees8 ees4 ees | %17
ees2 bes | bes4. bes8 bes4 bes | %19
ees2 ees | ees4. ees8 ees4 g | %21
aes aes ees aes, | bes4. bes8 bes4 bes ees2.
}
BBIAIxCHEMusicLH =  \partCombine #'(2 . 20)  \BBIAIxCHEMusicLHA \BBIAIxCHEMusicLHB
BBIAIxCHEMusicLyrics = \relative c''''{ \BBIAIxCHEMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4. c8 c4 c4 c4. c8 c4 c4 c4. c8 c4. c8 c4. c8 c2 c4. c8 c4 c4 c4. c8 c4 c4 c4. c8 c8 c8 c8 c8 c2.  s4 c4. c8 c8  s8 c4 c4. c8 c4 c4 c4. c8 c8  s8 c4 c4. c8 c2 c4. c8 c4. c8 c8  s4 c8 c4 c4 c4. c8 c8  s4 c8 c4. c8 c2 c4. c8 c4 c4 c2 c2 c4. c8 c4 c4 c2 c2 c4. c8 c4 c4 c4 c4 c4 c4 c4. c8 c4 c4 c2.
}

BBIBZxAHHMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 124
    \time 4/4
    \key as \major
    \accidentalStyle Score.modern
}
BBIBZxAHHMusicRHA = \relative c'{ \BBIBZxAHHMusicGlobal \clef "treble"
    ees4 aes g f |  \nbp f2 ees | ees4 f g f | %3
\nbp ees1 | c'4 f, des' c | %5
\nbp bes2 \pcAO f | aes4 g f ees | %7
\nbp aes1 | c4 aes g f | %9
\nbp f2 e  | f4 g aes bes | %11
\nbp c1 | c4 f, des' c |  \nbp bes2 f | %14
aes4 g f ees \nbp aes1 \he
}
BBIBZxAHHMusicRHB = \relative c'{ \BBIBZxAHHMusicGlobal \clef "treble"
    c4 ees ees ees | des2 des | %2
des4 des des des | c1 | ees4 ees ees ees | %5
des2 f | des4 des des des | c1 | %8
f4 f c c | des2 des | c4 c c f | e1 | %12
ees4 ees ees ees | des2 des | %14
des4 des des des c1
}
BBIBZxAHHMusicRH =  \partCombine #'(2 . 20)  \BBIBZxAHHMusicRHA \BBIBZxAHHMusicRHB
BBIBZxAHHMusicLHA = \relative c{ \BBIBZxAHHMusicGlobal \clef "bass"
    aes'4 c c c | g2 g | g4 aes bes g | %3
aes1 \pcAO | aes4 \pcAO aes a a | %5
bes2 bes | bes4 bes aes g | aes1 \pcAO | %8
aes4 c bes aes | bes2 bes | \pcAO aes4 bes aes f | %11
g1 | a4 a a a | bes2 bes | %14
bes4 bes aes g aes1
}
BBIBZxAHHMusicLHB = \relative c{ \BBIBZxAHHMusicGlobal \clef "bass"
    aes4 aes aes aes | bes2 bes | %2
ees4 ees ees ees | aes,1 | aes'4 aes f f | %5
bes,2 des | ees4 ees ees ees | aes,1 | %8
aes'4 f e f | g2 g | aes4 e f des | c1 | %12
f4 f f f | bes,2 bes | ees4 ees ees ees aes,1
}
BBIBZxAHHMusicLH =  \partCombine #'(2 . 20)  \BBIBZxAHHMusicLHA \BBIBZxAHHMusicLHB
BBIBZxAHHMusicLyrics = \relative c''''{ \BBIBZxAHHMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c4 c4 c4 c2 c2 c4 c4 c4 c4 c1 c4 c4 c4 c4 c2 c2 c4 c4 c4 c4 c1 c4 c4 c4 c4 c2 c2 c4 c4 c4 c4 c1 c4 c4 c4 c4 c2 c2 c4 c4 c4 c4 c1
}

BBIBAxAGHMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 2 = 72
    \time 4/4
    \key d \major
    
}
BBIBAxAGHMusicRHA = \relative c'{ \BBIBAxAGHMusicGlobal \clef "treble"
    d4 d e e \pcAO |  \nbp d1 | %2
fis4 fis g g |  \nbp fis1 | b4 b a a | %5
\nbp g1 \pcAO | d4 fis fis e \pcAO \nbp d1 \he
}
BBIBAxAGHMusicRHB = \relative c'{ \BBIBAxAGHMusicGlobal \clef "treble"
    a4 a cis cis | d1 | d4 d cis cis | d1 | %4
d4 d d d | d1 | d4 d cis b8 [cis] d1
}
BBIBAxAGHMusicRH =  \partCombine #'(2 . 20)  \BBIBAxAGHMusicRHA \BBIBAxAGHMusicRHB
BBIBAxAGHMusicLHA = \relative c{ \BBIBAxAGHMusicGlobal \clef "bass"
    fis4 fis g g | fis1 | a4 a a a | %3
a1 \pcAO | g4 \pcAO g a c | b1 | %6
g4 gis a g fis1
}
BBIBAxAGHMusicLHB = \relative c{ \BBIBAxAGHMusicGlobal \clef "bass"
    d4 d a a | d1 | d4 d e a, | d1 | %4
g4 g fis fis | g1 | b,4 b a a d1
}
BBIBAxAGHMusicLH =  \partCombine #'(2 . 20)  \BBIBAxAGHMusicLHA \BBIBAxAGHMusicLHB
BBIBAxAGHMusicLyrics = \relative c''''{ \BBIBAxAGHMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c4 c4 c4 c1 c4 c4 c4 c4 c1 c4 c4 c4 c4 c1 c4 c4 c4 c4 c1
}

BBIBBxBDMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 98
    \time 4/4
    \key as \major
    \partial 4
    
}
BBIBBxBDMusicRHA = \relative c'{ \BBIBBxBDMusicGlobal \clef "treble"
    ees4 |  \nbp ees ees c'4. bes8 | %2
\nbp aes2. \lbp aes4 | %3
\nbp bes4. bes8 \pcAO aes4 bes | %4
\nbp c2. \pcAO \lbp c4 | %5
\nbp des4. des8 des4 bes | %6
c4. c8 c4 \lbp \pcAO aes | %7
\nbp bes4. bes8 c4 bes \pcAO | %8
\nbp aes2. \lbp \pcAO aes4 | %9
\nbp bes4. bes8 \pcAO aes4 bes | %10
\nbp c2. \lbp c4 |  \nbp c4. c8 bes4 c | %12
\nbp des2. \lbp des4 | %13
\nbp c ees ees c | %14
c aes aes \lbp f \pcAO | %15
\nbp ees aes c4. bes8 \pcAO \nbp aes2. \he
}
BBIBBxBDMusicRHB = \relative c'{ \BBIBBxBDMusicGlobal \clef "treble"
    c4 | c c ees4. ees8 | ees2. ees4 | %3
g4. g8 aes4 g | aes2. c4 | %5
f,4. f8 f4 ees | ees4. ees8 ees4 aes | %7
g4. g8 aes4 g | aes2. aes4 | %9
g4. g8 aes4 g | aes2. aes4 | %11
aes4. aes8 g4 ges | f2. f4 | %13
ees aes aes aes | aes ees f des | %15
ees ees aes4. g8 aes2.
}
BBIBBxBDMusicRH =  \partCombine #'(2 . 20)  \BBIBBxBDMusicRHA \BBIBBxBDMusicRHB
BBIBBxBDMusicLHA = \relative c{ \BBIBBxBDMusicGlobal \clef "bass"
    aes'4 | aes aes  ees'4. des8 | %2
c2. c4 | ees4. des8 c4 ees | %4
ees2. \pcAO aes,4 | %5
aes4. aes8 aes4 g \pcAO | %6
aes4. \pcAO aes8 c4  ees | %7
ees4. ees8 ees4 des | c2.  ees4 | %9
des4. des8 c4 ees | ees2. ees4 | %11
ees4. ees8 ees4 \pcAO aes, | %12
aes2. aes4 \pcAO | aes c c ees | %14
ees ees des aes | aes c ees4. des8 c2.
}
BBIBBxBDMusicLHB = \relative c{ \BBIBBxBDMusicGlobal \clef "bass"
    aes4 | aes aes aes'4. aes8 | aes2. aes4 | %3
ees4. ees8 ees4 ees | aes2. aes4 | %5
des,4. des8 des4 ees | aes4. aes8 aes4 c, | %7
ees4. ees8 ees4 ees | aes,2. c4 | %9
ees4. ees8 ees4 ees | aes2. aes4 | %11
aes4. aes8 ees4 aes | des,2. des4 | %13
aes' aes aes aes | aes c, des des | %15
c aes ees'4. ees8 aes,2.
}
BBIBBxBDMusicLH =  \partCombine #'(2 . 20)  \BBIBBxBDMusicLHA \BBIBBxBDMusicLHB
BBIBBxBDMusicLyrics = \relative c''''{ \BBIBBxBDMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c4 c4 c4. c8 c2. c4 c4. c8 c4 c4 c2. c4 c4. c8 c4 c4 c4. c8 c4 c4 c4. c8 c4 c4 c2. c4 c4. c8 c4 c4 c2. c4 c4. c8 c4 c4 c2. c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4. c8 c2.
}

BBIBCxBZMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 82
    \time 3/4
    \key es \major
    
}
BBIBCxBZMusicRHA = \relative c'{ \BBIBCxBZMusicGlobal \clef "treble"
    bes'2 aes8 g | f aes4. \lbp g8 f | %2
\nbp ees4. g8 bes aes |  \nbp g2 r4 | %4
bes2 aes8 g | f aes4. \lbp g8 f | %6
ees2 f4 | %7
\nbp ees2 \pcAO \lbp ees8 \pcAO ees | %8
\nbp c'2 c4 | %9
\nbp c8 bes4. \pcAO \lbp ees,8 g | %10
\nbp bes4. g8 g f | %11
\nbp f2 \pcAO \lbp ees8 \pcAO ees | %12
\nbp c'2 c4 | %13
\nbp c8 bes4. \pcAO \lbp ees,8 aes | %14
g2 f4 |  \nbp ees2 r4 \cbp | %16
bes' \postCho g c8. [g16] | %17
bes8. [aes16] aes4 \lbp aes8 aes | %18
\nbp d4. c8 bes aes |  \nbp c4 (bes) r | %20
bes g c8. [g16] | %21
bes8. [aes16] aes4 \lbp aes8 aes | %22
\nbp aes aes  aes4. d,8 \nbp ees2 r4 \he
}
BBIBCxBZMusicRHB = \relative c'{ \BBIBCxBZMusicGlobal \clef "treble"
    g'2 f8 ees | c c4. c8 c | bes4. ees8 d f | %3
ees2 r4 | g2 f8 ees | c c4. c8 c | %6
bes2 bes4 | bes2 ees8 ees | ees2 aes4 | %9
aes8 g4. ees8 ees | g4. ees8 ees ees | %11
d2 ees8 ees | ees2 aes4 | %13
aes8 g4. ees8 ees | ees2 d4 | g,2 r4 | %16
g' ees aes8. [ees16] | %17
g8. [f16] f4 f8 f | aes4. aes8 g f | %19
aes4 (g) r | g ees aes8. [ees16] | %21
g8. [f16] f4 f8 ees | d c bes4. bes8 bes2 r4
}
BBIBCxBZMusicRH =  \partCombine #'(2 . 20)  \BBIBCxBZMusicRHA \BBIBCxBZMusicRHB
BBIBCxBZMusicLHA = \relative c{ \BBIBCxBZMusicGlobal \clef "bass"
    bes'2 bes8 bes | aes ees4. ees8 aes | %2
g4. bes8 bes bes | bes2 r4 | %4
bes2 bes8 bes | aes ees4. ees8 aes | %6
g2 aes4 | g2 \pcAO ees8 \pcAO ees | aes2 ees'4 | %9
ees8 ees4. g,8 bes | ees4. bes8 c a | %11
bes2 \pcAO ees,8 \pcAO ees | aes2 ees'4 | %13
ees8 ees4. g,8 c | bes2 aes4 | g2 r4 | %16
ees' bes ees8. [bes16] | d4 d d8 d | %18
f4. d8 d d | ees2 r4 | %20
ees bes ees8. bes16 | bes4 bes bes8 bes | %22
bes bes bes4. aes8 g2 r4
}
BBIBCxBZMusicLHB = \relative c{ \BBIBCxBZMusicGlobal \clef "bass"
    ees2 d8 ees | aes, aes4. aes8 aes | %2
bes4. bes8 bes d | ees2 r4 | ees2 d8 ees | %5
aes, aes4. aes8 aes | bes2 bes4 | %7
ees2 ees8 ees | aes,2 aes'4 | %9
ees8 ees4. ees8 ees | ees4. ees8 c c | %11
bes2 ees8 ees | aes,2 aes'4 | %13
ees8 ees4. ees8 aes, | bes2 bes4 | %15
ees2 r4 | ees ees ees8. [ees16] | %17
bes'4 bes bes8 bes | bes4. bes8 bes bes | %19
ees,2 r4 | ees ees ees8. ees16 | %21
bes4 bes bes8 bes | bes bes bes4. bes8 ees2 r4
}
BBIBCxBZMusicLH =  \partCombine #'(2 . 20)  \BBIBCxBZMusicLHA \BBIBCxBZMusicLHB
BBIBCxBZMusicLyrics = \relative c''''{ \BBIBCxBZMusicGlobal \clef "treble"
    \hideNotes \voiceFour c2 c8 c8 c8 c4. c8 c8 c4. c8 c8 c8 c2  s4 c2 c8 c8 c8 c4. c8 c8 c2 c4 c2 c8 c8 c2 c4 c8 c4. c8 c8 c4. c8 c8 c8 c2 c8 c8 c2 c4 c8 c4. c8 c8 c2 c4 c2  s4 c4 c4 c8.  s16 c8.  s16 c4 c8 c8 c4. c8 c8 c8 c4 s4 s4 c4 c4 c8.  s16 c8.  s16 c4 c8 c8 c8 c8 c4. c8 c2
}

BBIBDxBCMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 76
    \time 6/8
    \key g \major
    \partial 8
    
}
BBIBDxBCMusicRHA = \relative c'{ \BBIBDxBCMusicGlobal \clef "treble"
    \pcAO d8 \pcAO |  \nbp d4 g8 g4 a8 | %2
\nbp g4. fis4 \lbp g8 | %3
\nbp a4 gis8 a4 b8 | %4
\nbp g4.~g4 \pcAO \lbp d8 \pcAO | %5
\nbp d4 b'8 b4 c8 | %6
\nbp b4. a4 \lbp a8 | %7
\nbp a4 fis8 g4 e8 \pcAp | %8
\nbp d4.~d4 \pcAu \pcAO \lbp d8 | %9
\nbp c'4 c8 b4 b8 | a4 a8 g4 \lbp g8 | %11
\nbp e4 e8 a4 g8 | fis4. e \pcAO | %13
\nbp d~ \set Score.tempoHideNote = ##t \tempo 4 = 38  \fpre d \fpost \set Score.tempoHideNote = ##t \tempo 4 = 76   \cbp | d4 \postCho g8 g4 a8 | %15
\nbp g4. fis \pcAO | d4 a'8 a4 b8 | %17
\nbp a4. g | b4 c8 d4 b8 | c4 a8 b4 g8 | %20
\nbp a2. | b4 d8 c4 a8 | g4 g8 fis4 a8 \nbp g4.~g4 \he
}
BBIBDxBCMusicRHB = \relative c'{ \BBIBDxBCMusicGlobal \clef "treble"
    d8 | d4 d8 d4 d8 | d4. d4 d8 | %3
fis4 fis8 fis4 fis8 | d4.~d4 d8 | %5
d4 g8 g4 g8 | e4. e4 g8 | %7
fis4 d8 e4 cis8 | d4.~d4 d8 | %9
d4 d8 d4 d8 | d4 d8 d4 d8 | %11
cis4 cis8 cis4 cis8 | d4. cis | d (c) | %14
b4 d8 d4 d8 | d4. d | d4 d8 fis4 fis8 | %17
d4. d | g4 a8 b4 g8 | a4 d,8 d4 d8 | %20
fis2. | g4 f8 e4 e8 | d4 d8 d4 d8 d4.~d4
}
BBIBDxBCMusicRH =  \partCombine #'(2 . 20)  \BBIBDxBCMusicRHA \BBIBDxBCMusicRHB
BBIBDxBCMusicLHA = \relative c{ \BBIBDxBCMusicGlobal \clef "bass"
    b'8 | b4 b8 b4 c8 | b4. a4 b8 | %3
c4 b8 c4 d8 | b4.~b4 b8 | b4 d8 d4 e8 | %6
d4. c4 e8 | d4 a8 a4 g8 | %8
fis4.~fis4 fis8 | fis4 fis8 g4 g8 | %10
c4 c8 b4 b8 \pcAO | a4 a8 e4 a8 | a4. g | %13
fis4. ~fis | g4 b8 b4 c8 | b4. a | %16
c4 c8 c4 d8 | c4. b | d4 d8 d4 d8 | %19
d4 d8  d4 b8 | d2. | %21
d4 b8 g4 c8 | b4 b8 a4 c8 b4.~b4
}
BBIBDxBCMusicLHB = \relative c{ \BBIBDxBCMusicGlobal \clef "bass"
    g'8 | g4 g8 g4 g8 | d4. d4 d8 | %3
d4 d8 d4 d8 | g4.~g4 g8 | g4 g8 g4 g8 | %6
c,4. c4 cis8 | d4 d8 a4 a8 | d4.~d4 d8 | %9
d4 d8 d4 d8 | d4 d8 g4 g8 | a4 a,8 a4 a8 | %12
a4. a | d4. ~ \fpre d \fpostbelow | g,4 g'8 g4 g8 | d4. d | %16
fis4 fis8 d4 d8 | g4. g | g4 fis8 g4 g8 | %19
fis4 fis8 g4 g8 | d2. | g4 g8 c,4 c8 | %22
d4 d8 d4 d8 g4.~g4
}
BBIBDxBCMusicLH =  \partCombine #'(2 . 20)  \BBIBDxBCMusicLHA \BBIBDxBCMusicLHB
BBIBDxBCMusicLyrics = \relative c''''{ \BBIBDxBCMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8 c4 c8 c4 c8 c4. c4 c8 c4 c8 c4 c8 c4.  s4 c8 c4 c8 c4 c8 c4. c4 c8 c4 c8 c4 c8 c4.  s4 c8 c4 c8 c4 c8 c4 c8 c4 c8 c4 c8 c4 c8 c4. c4. c4.  s4. c4 c8 c4 c8 c4. c4. c4 c8 c4 c8 c4. c4. c4 c8 c4 c8 c4 c8 c4 c8 c2. c4 c8 c4 c8 c4 c8 c4 c8 c4.
}

BBIBExDZFMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 2 = 84
    \time 4/4
    \key es \major
    
}
BBIBExDZFMusicRHA = \relative c'{ \BBIBExDZFMusicGlobal \clef "treble"
    g'2 g4 aes | bes2. ees,4 | d2 f | %3
\nbp ees1 | g2 aes4 bes | c2 f, | %6
\nbp f1 | d'2 c4 bes | ees2. bes4 | %9
aes2 bes |  \nbp g1 | bes2 aes4 f \pcAO | %12
c2 d \nbp ees1 \he
}
BBIBExDZFMusicRHB = \relative c'{ \BBIBExDZFMusicGlobal \clef "treble"
    ees2 ees4 d | ees2. bes4 | bes2 bes | %3
bes1 | ees2 d4 ees | ees2 ees | d1 | %7
f2 f4 f | ees2. ees4 | ees2 d | ees1 | %11
des2 c4 c | c2 bes bes1
}
BBIBExDZFMusicRH =  \partCombine #'(2 . 20)  \BBIBExDZFMusicRHA \BBIBExDZFMusicRHB
BBIBExDZFMusicLHA = \relative c{ \BBIBExDZFMusicGlobal \clef "bass"
    bes'2 bes4 bes | bes2. g4 | f2 aes | g1 | %4
bes2 bes4 bes \pcAO | aes2 c \pcAO | %6
bes1 | bes2 bes4 bes | bes2. bes4 | %9
c2 bes | bes1 | ees,2 ees4 f | %12
aes (g) f (aes) g1
}
BBIBExDZFMusicLHB = \relative c{ \BBIBExDZFMusicGlobal \clef "bass"
    ees2 ees4 f | g2. bes,4 | bes2 bes | %3
ees1 | ees2 f4 g | aes2 a | bes1 | %7
aes2 aes4 aes | g2. g4 | f2 bes, | ees1 | %11
g,2 aes4 aes | aes2 bes ees1
}
BBIBExDZFMusicLH =  \partCombine #'(2 . 20)  \BBIBExDZFMusicLHA \BBIBExDZFMusicLHB
BBIBExDZFMusicLyrics = \relative c''''{ \BBIBExDZFMusicGlobal \clef "treble"
    \hideNotes \voiceFour c2 c4 c4 c2. c4 c2 c2 c1 c2 c4 c4 c2 c2 c1 c2 c4 c4 c2. c4 c2 c2 c1 c2 c4 c4 c2 c2 c1
}

BBIBFxBFHMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 104
    \time 4/4
    \key as \major
    \partial 4
    
}
BBIBFxBFHMusicRHA = \relative c'{ \BBIBFxBFHMusicGlobal \clef "treble"
    ees4 |  \nbp ees ees c'4. bes8 | %2
\nbp aes2. \lbp aes4 | %3
\nbp bes4. bes8 \pcAO aes4 bes | %4
\nbp c2. \lbp c4 | %5
\nbp des4. des8 des4 bes | %6
c4. c8 c4 \lbp aes | %7
\nbp bes4. bes8 c4 bes \pcAO | %8
\nbp aes2. \lbp aes4 | %9
\nbp bes4. bes8 \pcAO aes4 bes | %10
\nbp c2. \lbp c4 |  \nbp c4. c8 bes4 c | %12
\nbp des2. \lbp des4 | %13
\nbp c ees ees c | %14
c aes aes \lbp f \pcAO | %15
\nbp ees aes c4. bes8 \pcAO \nbp aes2. \he
}
BBIBFxBFHMusicRHB = \relative c'{ \BBIBFxBFHMusicGlobal \clef "treble"
    c4 | c c ees4. ees8 | ees2. ees4 | %3
g4. g8 aes4 g | aes2. aes4 | %5
f4. f8 f4 ees | ees4. ees8 ees4 ees | %7
g4. g8 aes4 g | aes2. ees4 | %9
g4. g8 aes4 g | aes2. aes4 | %11
aes4. aes8 g4 ges | f2. f4 | %13
ees aes aes aes | aes ees f des | %15
ees ees aes4. g8 aes2.
}
BBIBFxBFHMusicRH =  \partCombine #'(2 . 20)  \BBIBFxBFHMusicRHA \BBIBFxBFHMusicRHB
BBIBFxBFHMusicLHA = \relative c{ \BBIBFxBFHMusicGlobal \clef "bass"
    aes'4 | aes aes  ees'4. des8 | %2
c2. c4 | ees4. des8 c4 ees | %4
ees2. \pcAO aes,4 | %5
aes4. aes8 aes4 g \pcAO | %6
aes4. \pcAO aes8 c4  ees | %7
ees4. ees8 ees4 des | c2.  ees4 | %9
des4. des8 c4 ees | ees2. ees4 | %11
ees4. ees8 ees4 \pcAO aes, | %12
aes2. aes4 \pcAO | aes c c ees | %14
ees  ees des aes | aes c ees4. des8 c2.
}
BBIBFxBFHMusicLHB = \relative c{ \BBIBFxBFHMusicGlobal \clef "bass"
    aes4 | aes aes aes'4. aes8 | aes2. aes4 | %3
ees4. ees8 ees4 ees | aes2. aes4 | %5
des,4. des8 des4 ees | aes4. aes8 aes4 c, | %7
ees4. ees8 ees4 ees | aes,2. c4 | %9
ees4. ees8 ees4 ees | aes2. aes4 | %11
aes4. aes8 ees4 aes | des,2. des4 | %13
aes' aes aes aes | aes c, des des | %15
c aes ees'4. ees8 aes,2.
}
BBIBFxBFHMusicLH =  \partCombine #'(2 . 20)  \BBIBFxBFHMusicLHA \BBIBFxBFHMusicLHB
BBIBFxBFHMusicLyrics = \relative c''''{ \BBIBFxBFHMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c4 c4 c4. c8 c2. c4 c4. c8 c4 c4 c2. c4 c4. c8 c4 c4 c4. c8 c4 c4 c4. c8 c4 c4 c2. c4 c4. c8 c4 c4 c2. c4 c4. c8 c4 c4 c2. c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4. c8 c2.
}

BBIBHxCBHMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 96
    \time 9/8
    \key des \major
    \partial 8*3
    
}
BBIBHxCBHMusicRHA = \relative c'{ \BBIBHxCBHMusicGlobal \clef "treble"
    f4 ges8 |  \nbp aes4.~aes4 aes8 des4 c8 | %2
\nbp c4. bes \lbp ges4 f8  | %3
\nbp ees4.~ees4  ees8 aes [ges] ees | %4
\nbp f2. \lbp f4 ges8 | %5
\nbp aes4.~aes4 aes8 des4 des8 | %6
\nbp des4. bes \lbp ees4 des8 | %7
\nbp c4.~c4 c8 c [bes] c | %8
\nbp des4.~des \cbp bes4 \postCho aes8 | %9
\nbp aes4. ees c'4 c8 | %10
\nbp des4. f, \lbp bes4 aes8 | %11
\nbp aes4. ees c'4 c8 | %12
\nbp des2. \lbp f,4 ges8 | %13
\nbp aes4.~aes4 aes8 des4 des8 | %14
\nbp des4. bes \lbp ees4 des8 | %15
\nbp c4.~c4 c8 c [bes] c \nbp des4.~des \he
}
BBIBHxCBHMusicRHB = \relative c'{ \BBIBHxCBHMusicGlobal \clef "treble"
    des4 ees8 | f4.~f4 f8 f4 aes8 | %2
aes4. ges ees4 des8 | %3
c4.~c4 c8 c4 c8 | des2. des4 ees8 | %5
f4.~f4 f8 f4 aes8 | bes4. ges ges4 bes8 | %7
aes4.~aes4 aes8 ges4 ges8 | %8
f4.~f ges4 f8 | c4. c ees4 ges8 | %10
f4. des ges4 f8 | c4. c aes'4 ges8 | %12
f2. des4 ees8 | f4.~f4 f8 f4 aes8 | %14
ges4. ges ges4 bes8 | %15
aes4.~aes4 aes8 ges4 ges8 f4.~f
}
BBIBHxCBHMusicRH =  \partCombine #'(2 . 20)  \BBIBHxCBHMusicRHA \BBIBHxCBHMusicRHB
BBIBHxCBHMusicLHA = \relative c{ \BBIBHxCBHMusicGlobal \clef "bass"
    aes'4 aes8 | des4.~des4 des8 des4 des8 | %2
des4. des bes4 bes8 | %3
\pcAp aes4.~aes4 \pcAu aes8 ees4 aes8 | aes2. aes4 aes8 | %5
des4.~des4 des8 aes4 des8 | %6
des4. des bes4 ees8 | %7
ees4.~ees4 ees8 aes,4 aes8 | %8
aes4.~aes des4 aes8 | %9
aes4. aes \pcAO aes4 \pcAO aes8 | %10
aes4. aes des4 aes8 | aes4. aes aes4 aes8 | %12
aes2. aes4 aes8 | %13
des4.~des4 des8 aes4 des8 | %14
bes4. \pcAO ges bes4 ees8 | %15
ees4.~ees4 ees8 aes,4 aes8 aes4.~aes
}
BBIBHxCBHMusicLHB = \relative c{ \BBIBHxCBHMusicGlobal \clef "bass"
    des4 des8 | des4.~des4 des8 des4 f8 | %2
ges4. ges ges4 ges8 | %3
aes4.~aes4 aes,8 aes4 aes8 | %4
des2. des4 des8 | %5
des4.~des4 des8 des4 f8 | %6
ges4. ges ges4 ges8 | %7
aes4.~aes4 aes8 aes,4 aes8 | %8
des4.~des des4 des8 | %9
aes4. aes aes'4 aes8 | %10
des,4. des des4 des8 | %11
aes4. aes aes4 aes8 | des2. des4 des8 | %13
des4.~des4 des8 des4 f8 | %14
ges4. ges ees4 ees8 | %15
aes4.~aes4 aes8 aes,4 aes8 des4.~des
}
BBIBHxCBHMusicLH =  \partCombine #'(2 . 20)  \BBIBHxCBHMusicLHA \BBIBHxCBHMusicLHB
BBIBHxCBHMusicLyrics = \relative c''''{ \BBIBHxCBHMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c8 c4.  s4 c8 c4 c8 c4. c4. c4 c8 c4.  s4 c8 c8  s8 c8 c2. c4 c8 c4.  s4 c8 c4 c8 c4. c4. c4 c8 c4.  s4 c8 c8  s8 c8 c4.  s4. c4 c8 c4. c4. c4 c8 c4. c4. c4 c8 c4. c4. c4 c8 c2. c4 c8 c4.  s4 c8 c4 c8 c4. c4. c4 c8 c4.  s4 c8 c8  s8 c8 c4.
}

BBIBIxABEMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 2 = 64
    \time 4/4
    \key des \major
    
}
BBIBIxABEMusicRHA = \relative c'{ \BBIBIxABEMusicGlobal \clef "treble"
    f2 f4 f | aes2 aes \pcAO | %2
des, ges4 ges |  \nbp f2. r4 | %4
bes2 bes4 bes | aes2 f4 f | f2 ees4 ees | %7
\nbp ees2. r4 | f2 f4 f | aes2 aes | %10
bes c4 des |  \nbp c2. r4 | des2 c4 bes | %13
aes2 f4 aes | aes2 aes4. ges8 | %15
\nbp f2. r4 | bes2 c4 des | %17
des2 \pcAO des,4 ees | %18
f2 f4. ees8 \pcAO \nbp des2. r4 \he
}
BBIBIxABEMusicRHB = \relative c'{ \BBIBIxABEMusicGlobal \clef "treble"
    des2 des4 des | ees2 ees | des des4 des | %3
des2. r4 | des2 ges4 ges | f2 des4 des | %6
des2 bes4 des | c2. r4 | des2 des4 des | %9
ees2 f | ges ges4 f | ees2. r4 | %12
aes2 aes4 ges | f2 des4 des | c2 c4. c8 | %15
des2. r4 | ges2 ges4 ges | f2 des4 des | %18
des2 c4. c8 des2. r4
}
BBIBIxABEMusicRH =  \partCombine #'(2 . 20)  \BBIBIxABEMusicRHA \BBIBIxABEMusicRHB
BBIBIxABEMusicLHA = \relative c{ \BBIBIxABEMusicGlobal \clef "bass"
    aes'2 aes4 aes | aes2 ees | f bes4 bes | %3
aes2. r4 | ges (bes) des des | %5
des2 aes4 aes | bes2 g4 g | aes2. r4 | %8
aes2 aes4 aes | aes2 des | %10
des aes4 aes \pcAO | aes2. r4 | %12
aes (des) des des | des2 aes4 f | %14
ees2 ees4. aes8 | aes2. r4 | des2 c4 bes | %17
aes2 g4 g | aes2 aes4. ges8 f2. r4
}
BBIBIxABEMusicLHB = \relative c{ \BBIBIxABEMusicGlobal \clef "bass"
    des2 des4 des | c2 c | %2
bes ges4 ges8 [bes] | des2. r4 | %4
ges2 ges4 ges | des2 des4 des | %6
bes2 ees4 ees | aes,2. r4 | %8
des2 des4 des | c2 des | ges ees4 des | %11
aes'2. r4 | f2 ges4 ges | des2 des4 des | %14
aes2 aes4. aes8 | des2. r4 | %16
ges,2 ges4 ges | aes2 beses4 beses | %18
aes2 aes4. aes8 des2. r4
}
BBIBIxABEMusicLH =  \partCombine #'(2 . 20)  \BBIBIxABEMusicLHA \BBIBIxABEMusicLHB
BBIBIxABEMusicLyrics = \relative c''''{ \BBIBIxABEMusicGlobal \clef "treble"
    \hideNotes \voiceFour c2 c4 c4 c2 c2 c2 c4 c4 c2.  s4 c2 c4 c4 c2 c4 c4 c2 c4 c4 c2.  s4 c2 c4 c4 c2 c2 c2 c4 c4 c2.  s4 c2 c4 c4 c2 c4 c4 c2 c4. c8 c2.  s4 c2 c4 c4 c2 c4 c4 c2 c4. c8 c2.
}

BBICZxCACMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 70
    \time 6/8
    \key f \major
    \partial 8
    
}
BBICZxCACMusicRHA = \relative c'{ \BBICZxCACMusicGlobal \clef "treble"
    f8 |  \nbp a4 a8 a4 g8 | %2
f4 f8 f4 \lbp a8 |  \nbp g4 g8 c4 bes8 | %4
\nbp a4.~a4 \lbp f8 | %5
\nbp a4 a8 a4 g8 | f4 f8 f4 \lbp a8 | %7
\nbp g4 g8 a4 g8 | %8
\nbp f4.~f4 r8 \cbp | %9
c'4. \postCho c8 b c | d4 d8 c4. | %11
a8 a a c4 a8 |  \nbp g4.~g4 \lbp g8 | %13
\nbp a4 a8 bes4 bes8 | %14
c4 c8 \set Score.tempoHideNote = ##t \tempo 4 = 35  \fpre d4  \fpost \set Score.tempoHideNote = ##t \tempo 4 = 70   \lbp g,8 |  \nbp f e f a4 g8 \nbp f4.~f4 \he
}
BBICZxCACMusicRHB = \relative c'{ \BBICZxCACMusicGlobal \clef "treble"
    c8 | f4 f8 f4 c8 | c4 c8 c4 f8 | %3
e4 e8 e4 e8 | f4.~f4 c8 | f4 f8 f4 c8 | %6
c4 c8 c4 f8 | e4 e8 f4 c8 | c4.~c4 r8 | %9
f4. f8 f f | f4 f8 f4. | f8 f f f4 f8 | %12
e4.~e4 e8 | f4 f8 e4 e8 | f4 f8 f4 d8 | %15
c c c f4 e8 c4.~c4
}
BBICZxCACMusicRH =  \partCombine #'(2 . 20)  \BBICZxCACMusicRHA \BBICZxCACMusicRHB
BBICZxCACMusicLHA = \relative c{ \BBICZxCACMusicGlobal \clef "bass"
    a'8 | c4 c8 c4 bes8 | a4 a8 a4 c8 | %3
c4 c8 g4 c8 | c4.~c4 a8 | %5
c4 c8 c4 bes8 | a4 a8 a4 c8 | %7
bes4 bes8 c4 bes8 | a4.~a4 r8 | %9
a4. a8 aes a | bes4 bes8 a4. | %11
c8 c c c4 c8 | c4.~c4 c8 | c4 c8 c4 c8 | %14
c4 ees8  d4  bes8 | a g a c4 bes8 a4.~a4
}
BBICZxCACMusicLHB = \relative c{ \BBICZxCACMusicGlobal \clef "bass"
    f8 | f4 f8 f4 f8 | f4 f8 f4 f8 | %3
c4 c8 c4 c8 | f4.~f4 f8 | f4 f8 f4 f8 | %6
f4 f8 f4 f8 | c4 c8 c4 c8 | f4.~f4 r8 | %9
f4. f8 f f | bes,4 d8 f4. | f8 f f a4 f8 | %12
c4.~c4 c8 | f4 f8 g4 g8 | %14
a4 a8 \fpre bes4 \fpostbelow bes,8 | c c c c4 c8 f4.~f4
}
BBICZxCACMusicLH =  \partCombine #'(2 . 20)  \BBICZxCACMusicLHA \BBICZxCACMusicLHB
BBICZxCACMusicLyrics = \relative c''''{ \BBICZxCACMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8 c4 c8 c4 c8 c4 c8 c4 c8 c4 c8 c4 c8 c4.  s4 c8 c4 c8 c4 c8 c4 c8 c4 c8 c4 c8 c4 c8 c4. s4 s8 c4. c8 c8 c8 c4 c8 c4. c8 c8 c8 c4 c8 c4.  s4 c8 c4 c8 c4 c8 c4 c8 c4 c8 c8 c8 c8 c4 c8 c4.
}

BBICAxBDCMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 82
    \time 3/4
    \key d \major
    \partial 4
    
}
BBICAxBDCMusicRHA = \relative c'{ \BBICAxBDCMusicGlobal \clef "treble"
    a'4 |  \nbp a4. gis8 b a | %2
\nbp fis2 \pcAO \lbp d4 | %3
\nbp e4. fis8 g a |  \nbp fis2 \lbp a4 | %5
\nbp a4. a8 g fis | b cis d4 \lbp b | %7
\nbp a4. \pcAO d,8 e fis \pcAO | %8
\nbp d2 r4 \cbp | %9
d'4. \postCho d8 e cis |  \nbp d2 r4 | %11
b4. d8 cis b |  \nbp a2 r4 | %13
a4. a8 g fis | b cis d4 \lbp b | %15
\nbp a4. \pcAO d,8 e fis \pcAO \nbp d2 \he
}
BBICAxBDCMusicRHB = \relative c'{ \BBICAxBDCMusicGlobal \clef "treble"
    d4 | d4. d8 d d | d2 d4 | %3
cis4. d8 e cis | d2 d4 | d4. d8 cis d | %6
d g fis4 d | d4. d8 cis cis | d2 r4 | %9
fis4. fis8 g e | fis2 r4 | d4. d8 d d | %12
d2 r4 | d4. d8 cis d | d g fis4 d | %15
d4. d8 cis cis d2
}
BBICAxBDCMusicRH =  \partCombine #'(2 . 20)  \BBICAxBDCMusicRHA \BBICAxBDCMusicRHB
BBICAxBDCMusicLHA = \relative c{ \BBICAxBDCMusicGlobal \clef "bass"
    fis4 | fis4. eis8 g fis | a2 fis4 | %3
a4. a8 a a | a2 fis4 | %5
fis4. a8 a  d | b a a4 g | %7
fis4. fis8 g a | fis2 r4 | a4. a8 b a | %10
a2 r4 \pcAO | g4. b8 a \pcAO g | %12
fis2 r4 | fis4. a8 a  d | %14
b a a4 g | fis4. fis8 g a fis2
}
BBICAxBDCMusicLHB = \relative c{ \BBICAxBDCMusicGlobal \clef "bass"
    d4 | d4. d8 d d | d2 d4 | a4. a8 a a | %4
d2 d4 | d4. fis8 e d | g e d4 g, | %7
a4. a8 a a | d2 r4 | d4. d8 g, a | %10
d2 r4 | g4. g8 g g | d2 r4 | %13
d4. fis8 e d | g e d4 g, | a4. a8 a a d2
}
BBICAxBDCMusicLH =  \partCombine #'(2 . 20)  \BBICAxBDCMusicLHA \BBICAxBDCMusicLHB
BBICAxBDCMusicLyrics = \relative c''''{ \BBICAxBDCMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c4. c8 c8 c8 c2 c4 c4. c8 c8 c8 c2 c4 c4. c8 c8 c8 c8 c8 c4 c4 c4. c8 c8 c8 c2  s4 c4. c8 c8 c8 c2  s4 c4. c8 c8 c8 c2  s4 c4. c8 c8 c8 c8 c8 c4 c4 c4. c8 c8 c8 c2
}

BBICBxCFMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 60
    \time 2/4
    \key as \major
    
}
BBICBxCFMusicRHA = \relative c'{ \BBICBxCFMusicGlobal \clef "treble"
    ees4 d8 ees | f4. ees8 | ees c' bes aes | %3
\nbp aes4 g | bes g8 aes | %5
bes4 c \pcAO | ees,8 \pcAO ees g8. f16 | %7
\nbp ees2 | ees4 d8 ees | f4. ees8 | %10
aes c ees des |  \nbp c4 bes | %12
ees des8 c | f,4 bes | %14
aes8 g c8. bes16 \pcAO \nbp aes2 \he
}
BBICBxCFMusicRHB = \relative c'{ \BBICBxCFMusicGlobal \clef "treble"
    c4 b8 c | des4. c8 | c ees ees ees | %3
ees4 ees | ees ees8 ees | ees4 ees | %6
ees8 ees d8. d16 | ees4 (des) | c b8 c | %9
des4. c8 | ees ees ees f | ees4 ees | %12
ees ees8 ees | des4 f | ees8 ees g8. g16 aes2
}
BBICBxCFMusicRH =  \partCombine #'(2 . 20)  \BBICBxCFMusicRHA \BBICBxCFMusicRHB
BBICBxCFMusicLHA = \relative c{ \BBICBxCFMusicGlobal \clef "bass"
    aes'4 aes8 aes | aes4. aes8 | %2
aes aes aes aes | c4 bes | g bes8 c | %5
g4 aes | g8 g bes8. aes16 | g2 | %8
aes4 aes8 aes | aes4. aes8 | %10
aes aes aes aes | aes4 g | aes g8 aes | %13
aes4 des | c8 bes ees8. des16 c2
}
BBICBxCFMusicLHB = \relative c{ \BBICBxCFMusicGlobal \clef "bass"
    aes4 aes8 aes | aes4. aes8 | aes aes c c | %3
ees4 ees | ees ees8 ees | ees4 aes, | %6
bes8 bes bes8. bes16 | ees2 | %8
aes,4 aes8 aes | aes4. aes8 | %10
c aes c des | ees4 ees | c bes8 aes | %13
des4 bes | ees8 ees ees8. ees16 aes,2
}
BBICBxCFMusicLH =  \partCombine #'(2 . 20)  \BBICBxCFMusicLHA \BBICBxCFMusicLHB
BBICBxCFMusicLyrics = \relative c''''{ \BBICBxCFMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c8 c8 c4. c8 c8 c8 c8 c8 c4 c4 c4 c8 c8 c4 c4 c8 c8 c8. c16 c2 c4 c8 c8 c4. c8 c8 c8 c8 c8 c4 c4 c4 c8 c8 c4 c4 c8 c8 c8. c16 c2
}

BBICCxAGIMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 100
    \time 4/4
    \key des \major
    
}
BBICCxAGIMusicRHA = \relative c'{ \BBICCxAGIMusicGlobal \clef "treble"
    aes'4. bes8 aes4 f | des'4. ees8 des4 bes | %2
aes4. bes8 aes4 f \pcAO |  \nbp ees2. r4 | %4
aes4. bes8 aes4 f | des'4. ees8 des4 bes | %6
c4. des8 c4 bes |  \nbp aes1 \cbp | %8
des4. \postCho des8 des4. des8 | %9
des4 aes f aes | bes4. bes8 bes4 des | %11
\nbp c2. r4 | des4. des8 des4 des | %13
ees des c bes | aes aes bes c \nbp des2. \he
}
BBICCxAGIMusicRHB = \relative c'{ \BBICCxAGIMusicGlobal \clef "treble"
    f4. ges8 f4 des | f4. ges8 f4 f | %2
f4. ges8 f4 des | ees2. r4 | %4
f4. ges8 f4 des | f4. ges8 f4 f | %6
ees4. f8 ees4 ees | c1 | f4. f8 f4. f8 | %9
f4 f des f | ges4. ges8 ges4 ges | %11
ees2. r4 | f4. ges8 aes4 f | %13
ges ges aes ges | f f ges ges f2.
}
BBICCxAGIMusicRH =  \partCombine #'(2 . 20)  \BBICCxAGIMusicRHA \BBICCxAGIMusicRHB
BBICCxAGIMusicLHA = \relative c{ \BBICCxAGIMusicGlobal \clef "bass"
    des'4. des8 des4 aes | %1
aes4. aes8 aes4 des | des4. des8 des4 aes | %3
c2. r4 | des4. des8 des4 aes | %5
aes4. aes8 aes4 des | aes4. aes8 aes4 g | %7
aes1 | aes4. aes8 aes4. aes8 | %9
aes4 des aes des | %10
des4. des8 des4 bes \pcAO | aes2. r4 | %12
aes4. aes8 aes4 aes | bes bes c des | %14
des des c ees des2.
}
BBICCxAGIMusicLHB = \relative c{ \BBICCxAGIMusicGlobal \clef "bass"
    des4. des8 des4 des | des4. des8 des4 des | %2
des4. des8 des4 des | aes'2. r4 | %4
des,4. des8 des4 des | %5
des4. des8 des4 des | ees4. ees8 ees4 ees | %7
aes,1 | des4. des8 des4. des8 | %9
des4 des des des | ges4. ges8 ges4 ges | %11
aes2. r4 | des,4. ees8 f4 des | %13
ges ges ges ges | aes aes aes aes des,2.
}
BBICCxAGIMusicLH =  \partCombine #'(2 . 20)  \BBICCxAGIMusicLHA \BBICCxAGIMusicLHB
BBICCxAGIMusicLyrics = \relative c''''{ \BBICCxAGIMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4. c8 c4 c4 c4. c8 c4 c4 c4. c8 c4 c4 c2.  s4 c4. c8 c4 c4 c4. c8 c4 c4 c4. c8 c4 c4 c1 c4. c8 c4. c8 c4 c4 c4 c4 c4. c8 c4 c4 c2.  s4 c4. c8 c4 c4 c4 c4 c4 c4 c4 c4 c4 c4 c2.
}

BBICDxAECMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 74
    \time 6/8
    \key es \major
    
}
BBICDxAECMusicRHA = \relative c'{ \BBICDxAECMusicGlobal \clef "treble"
    g'8 ges g aes4 g8 | g4. f4 r8 | %2
f e f g4 f8 |  \nbp ees4.~ees4 r8 | %4
bes' a bes ees4 bes8 | d4. c4 r8 | %6
aes g aes bes4 aes8 \pcAp | %7
\nbp g4.~g4 \pcAu r8 \cbp | %8
c \postCho c c bes4 \pcAO ees,8 | %9
aes4. g4 r8 | g g g c4 g8 | %11
\nbp bes4. (aes4) r8 | aes g aes d4 c8 | %13
bes4. g4 r8 | ees d ees g4 f8 \nbp ees4.~ees4 \he
}
BBICDxAECMusicRHB = \relative c'{ \BBICDxAECMusicGlobal \clef "treble"
    ees8 ees ees ees4 ees8 | ees4. d4 r8 | %2
d d d d4 d8 | bes4.~bes4 r8 | %4
ees ees ees g4 ees8 | ees4. ees4 r8 | %6
d d d d4 d8 | g4.~g4 r8 | %8
ees ees ees ees4 ees8 | d4. ees4 r8 | %10
ees ees ees e4 e8 | g4. (f4) r8 | %12
d d d aes'4 d,8 | ees4. ees4 r8 | %14
a, a a bes [ees] d bes4.~bes4
}
BBICDxAECMusicRH =  \partCombine #'(2 . 20)  \BBICDxAECMusicRHA \BBICDxAECMusicRHB
BBICDxAECMusicLHA = \relative c{ \BBICDxAECMusicGlobal \clef "bass"
    bes'8 a bes c4 bes8 | bes4. aes4 r8 | %2
aes g aes bes4 aes8 | g4.~g4 r8 | %4
g ges g bes4 bes8 | bes4. aes4 r8 | %6
f e f g4 f8 | bes4.~bes4 r8 \pcAO | %8
aes \pcAO aes \pcAO aes bes4 bes8 | %9
bes4. bes4 r8 | bes bes bes g4 c8 | %11
c4.~c4 r8 | bes bes bes bes4 aes8 | %13
g4. bes4 r8 | f f f ees [bes'] aes g4.~g4
}
BBICDxAECMusicLHB = \relative c{ \BBICDxAECMusicGlobal \clef "bass"
    ees8 ees ees ees4 ees8 | bes4. bes4 r8 | %2
bes bes bes bes4 bes8 | ees4.~ees4 r8 | %4
ees ees ees ees4 g8 | aes4. aes,4 r8 | %6
bes bes bes bes4 bes8 | ees4.~ees4 r8 | %8
aes aes aes g4 g8 | f4. ees4 r8 | %10
ees ees des c4 c8 | f4.~f4 r8 | %12
bes, bes bes bes4 bes8 | ees4. ees4 r8 | %14
c c c bes4 bes8 ees4.~ees4
}
BBICDxAECMusicLH =  \partCombine #'(2 . 20)  \BBICDxAECMusicLHA \BBICDxAECMusicLHB
BBICDxAECMusicLyrics = \relative c''''{ \BBICDxAECMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8 c8 c8 c4 c8 c4. c4  s8 c8 c8 c8 c4 c8 c4. s4 s8 c8 c8 c8 c4 c8 c4. c4  s8 c8 c8 c8 c4 c8 c4. s4 s8 c8 c8 c8 c4 c8 c4. c4  s8 c8 c8 c8 c4 c8 c4. s4 s8 c8 c8 c8 c4 c8 c4. c4  s8 c8 c8 c8 c4 c8 c4.
}

BBICExCAHMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 64
    \time 3/4
    \key d \major
    \partial 4
    
}
BBICExCAHMusicRHA = \relative c'{ \BBICExCAHMusicGlobal \clef "treble"
    d8. e16 | %1
\nbp fis4 d  \times 2/3 {e8 [d]  \pcAOb e}  | %2
\nbp fis4 a \lbp b8. a16 | %3
\nbp a4. fis8  \times 2/3 {\pcAOb fis [ \pcAOb e] \pcAOb d}  | %4
\nbp e2 \pcAp \lbp d8. \pcAu e16 | %5
\nbp fis4 d  \times 2/3 {e8 [d] \pcAOb e}  | %6
\nbp fis4 a \lbp d8. b16 | %7
\nbp a4. \pcAO d,8 fis8. e16 \pcAp | %8
\nbp d2 \cbp \pcAu a'8. \postCho a16 | %9
\nbp b4 d \times 2/3 {d8 [cis] b} | %10
\nbp a4 fis \lbp a8. a16 | %11
\nbp b4. d8 cis8. b16 | %12
\nbp a2 \pcAO \lbp d,8. e16 | %13
\nbp fis4 d  \times 2/3 {e8 [d] \pcAO e} | %14
\nbp fis4 a \lbp d8. b16 | %15
\nbp a4. fis8 fis8. e16 \pcAp \nbp d2 \pcAu \he
}
BBICExCAHMusicRHB = \relative c'{ \BBICExCAHMusicGlobal \clef "treble"
    d8. cis16 | %1
d4 a \times 2/3 {cis8 [d] cis} | %2
d4 fis g8. fis16 | %3
fis4. d8 \times 2/3 {d [cis] d} | %4
cis2 d8. cis16 | %5
d4 a \times 2/3 {cis8 [d] cis} | %6
d4 d d8. d16 | d4. d8 d8. cis16 | %8
d2 fis8. fis16 | %9
g4 b \times 2/3 {b8 [a] g} | %10
fis4 d fis8. fis16 | g4. b8 a8. g16 | %12
fis2 d8. cis16 | %13
d4 a \times 2/3 {cis8 [d] cis} | %14
d4 fis g8. g16 | fis4. d8 d8. cis16 d2
}
BBICExCAHMusicRH =  \partCombine #'(2 . 20)  \BBICExCAHMusicRHA \BBICExCAHMusicRHB
BBICExCAHMusicLHA = \relative c{ \BBICExCAHMusicGlobal \clef "bass"
    fis8. g16 | a4 fis \times 2/3 {a a8} | %2
a4 d d8. d16 | %3
d4. a8 \times 2/3 {a [g] fis} | %4
a2 fis8. g16 | %5
a4 fis \times 2/3 {a a8} | %6
a4 fis b8. g16 | fis4. fis8 a8. g16 | %8
fis2 d'8. d16 | d4 d \times 2/3 {d d8} | %10
d4 a d8. d16 | d4. d8 d8. d16 | %12
d2 fis,8. g16 | %13
a4 fis \times 2/3 {a a8} | %14
a4 d b8. d16 | d4. a8 a8. g16 fis2
}
BBICExCAHMusicLHB = \relative c{ \BBICExCAHMusicGlobal \clef "bass"
    d8. d16 | d4 d \times 2/3 {a a8} | %2
d4 d d8. d16 | %3
d4. d8 \times 2/3 {d [d] d} | %4
a2 d8. d16 | d4 d \times 2/3 {a a8} | %6
d4 d g,8. b16 | d4. d8 a8. a16 | %8
d2 d8. d16 | g4 g \times 2/3 {g g8} | %10
d4 d d8. d16 | g4. g8 g8. g16 | %12
d2 d8. d16 | d4 d \times 2/3 {a a8} | %14
d4 d g8. g16 | d4. d8 a8. a16 d2
}
BBICExCAHMusicLH =  \partCombine #'(2 . 20)  \BBICExCAHMusicLHA \BBICExCAHMusicLHB
BBICExCAHMusicLyrics = \relative c''''{ \BBICExCAHMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8. c16 c4 c4 c8*2/3  s8*2/3 c8*2/3 c4 c4 c8. c16 c4. c8 c8*2/3  s8*2/3 c8*2/3 c2 c8. c16 c4 c4 c8*2/3  s8*2/3 c8*2/3 c4 c4 c8. c16 c4. c8 c8. c16 c2 c8. c16 c4 c4 c8*2/3  s8*2/3 c8*2/3 c4 c4 c8. c16 c4. c8 c8. c16 c2 c8. c16 c4 c4 c8*2/3  s8*2/3 c8*2/3 c4 c4 c8. c16 c4. c8 c8. c16 c2
}

BBICFxEDMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 2 = 84
    \time 4/2
    \key g \major
    
}
BBICFxEDMusicRHA = \relative c'{ \BBICFxEDMusicGlobal \clef "treble"
    \pcAO d2 \pcAO d g g | a a b g | %2
d' d e c | a d b1 | b2 b a b | %5
g a g fis | g e d g g fis g1 \he
}
BBICFxEDMusicRHB = \relative c'{ \BBICFxEDMusicGlobal \clef "treble"
    d2 d b d | e d d d | a' g g g | %3
g fis g1 | g2 g fis fis | e e e dis | %6
d c b d d d d1
}
BBICFxEDMusicRH =  \partCombine #'(2 . 20)  \BBICFxEDMusicRHA \BBICFxEDMusicRHB
BBICFxEDMusicLHA = \relative c{ \BBICFxEDMusicGlobal \clef "bass"
    b'2 a g g | g fis g b | d b c e | %3
d d d1 | e2 b c b | b c b a | g g g g a a b1
}
BBICFxEDMusicLHB = \relative c{ \BBICFxEDMusicGlobal \clef "bass"
    g'2 fis e b | c d g, g' | fis g c, c | %3
d d g1 | e2 e e dis | e a, b b | %6
b c g b d d g,1
}
BBICFxEDMusicLH =  \partCombine #'(2 . 20)  \BBICFxEDMusicLHA \BBICFxEDMusicLHB
BBICFxEDMusicLyrics = \relative c''''{ \BBICFxEDMusicGlobal \clef "treble"
    \hideNotes \voiceFour c2 c2 c2 c2 c2 c2 c2 c2 c2 c2 c2 c2 c2 c2 c1 c2 c2 c2 c2 c2 c2 c2 c2 c2 c2 c2 c2 c2 c2 c1
}

BBICGxHMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 60
    \time 3/4
    \key es \major
    \partial 4.
    
}
BBICGxHMusicRHA = \relative c'{ \BBICGxHMusicGlobal \clef "treble"
    bes'8 bes aes | g4. aes8 bes c | %2
\nbp bes4. \pcAO \lbp ees,8 g bes | %3
bes4. g8 g f |  \nbp f4. \lbp g8 aes bes | %5
c4. ees8 d c | %6
\nbp bes4. \lbp ees8 ees g, | %7
bes4. \pcAO ees,8 g f \pcAO | %8
\nbp ees4. \cbp g8 \postCho f aes | %9
aes4. f8 aes g | %10
\nbp g4. \lbp bes8 bes g | %11
g4. \pcAO ees8 g f | %12
\nbp f4. \lbp g8 aes bes | c4. ees8 d c | %14
\nbp bes4. \lbp ees8 ees g, | %15
bes4. \pcAO ees,8 g f \pcAO \nbp ees4. \he
}
BBICGxHMusicRHB = \relative c'{ \BBICGxHMusicGlobal \clef "treble"
    g'8 g f | ees4. f8 g aes | %2
g4. ees8 ees g | f4. ees8 ees d | %4
d4. ees8 d ees | ees4. ees8 ees ees | %6
g4. g8 g ees | ees4. ees8 ees d | %8
ees4. ees8 d f | f4. d8 f ees | %10
ees4. g8 g ees | ees4. ees8 ees d | %12
d4. ees8 d ees | ees4. ees8 f aes | %14
g4. g8 g ees | g4. ees8 ees d ees4.
}
BBICGxHMusicRH =  \partCombine #'(2 . 20)  \BBICGxHMusicRHA \BBICGxHMusicRHB
BBICGxHMusicLHA = \relative c{ \BBICGxHMusicGlobal \clef "bass"
    bes'8 bes bes | bes4. bes8 bes bes | %2
ees4. g,8 bes ees | d4. bes8 bes bes | %4
bes4. bes8 bes bes \pcAO | %5
aes4. c8 bes c | ees4. bes8 bes bes | %7
g4. g8 bes aes | g4. r4 bes8 | %9
bes bes bes r4 bes8 | %10
bes bes bes ees ees bes | %11
bes bes bes r4 bes8 | %12
bes bes bes bes bes bes \pcAO | %13
aes \pcAO aes \pcAO aes r4 ees'8 | %14
ees ees ees r4 ees8 | %15
ees bes bes g bes aes g4.
}
BBICGxHMusicLHB = \relative c{ \BBICGxHMusicGlobal \clef "bass"
    ees8 ees ees | ees4. ees8 ees ees | %2
ees4. ees8 ees ees | bes4. bes8 bes bes | %4
bes4. ees8 f g | aes4. aes8 aes aes | %6
ees4. ees8 ees ees | ees4. ees8 bes bes | %8
ees4. r4 bes8 | bes bes bes r4 ees8 | %10
ees ees ees ees ees ees | %11
ees ees ees r4 bes8 | bes bes bes ees f g | %13
aes aes aes r4 aes8 | ees ees ees r4 ees8 | %15
ees ees ees ees bes bes ees4.
}
BBICGxHMusicLH =  \partCombine #'(2 . 20)  \BBICGxHMusicLHA \BBICGxHMusicLHB
BBICGxHMusicLyrics = \relative c''''{ \BBICGxHMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4. c8 c8 c8 c4.
}

BBICHxAGMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 120
    \time 4/4
    \key g \major
    
}
BBICHxAGMusicRHA = \relative c'{ \BBICHxAGMusicGlobal \clef "treble"
    b'2 a4. g8 | g4. e8 e2 \pcAO | d g4 b | %3
\nbp a1 | b2 a4. g8 | g4. e8 e2 | %6
d4 (g) fis a |  \nbp g1 | d'2 e4. d8 | %9
d4. b8 d2 | d e4. d8 | d4. b8 a2 | %12
b a4. g8 | g4. e8 e2 | d4 (g) fis a \nbp g1 \he
}
BBICHxAGMusicRHB = \relative c'{ \BBICHxAGMusicGlobal \clef "treble"
    d2 c4. b8 | e4. c8 c2 | d d4 d | d1 | %4
d2 c4. b8 | e4. c8 c2 | b4 (d) d d | %7
d1 | g2 g4. g8 | g4. g8 g2 | g g4. g8 | %11
d4. d8 d2 | d c4. b8 | e4. c8 c2 | %14
b4 (d) d d d1
}
BBICHxAGMusicRH =  \partCombine #'(2 . 20)  \BBICHxAGMusicRHA \BBICHxAGMusicRHB
BBICHxAGMusicLHA = \relative c{ \BBICHxAGMusicGlobal \clef "bass"
    \pcAO g'2 fis4. g8 | c4. g8 g2 | b g4 g | %3
fis1 \pcAO | g2 fis4. g8 | c4. g8 g2 | %6
g4 (b) a c | b1 | b2 c4. b8 | %9
b4. d8 b2 | b c4. b8 | %11
a4. \pcAO g8 fis2 \pcAO | g fis4. g8 | %13
c4. g8 g2 | g4 (b) a c b1
}
BBICHxAGMusicLHB = \relative c{ \BBICHxAGMusicGlobal \clef "bass"
    g'2 d4. e8 | c4. c8 c2 | g b4 g | d'1 | %4
g2 d4. e8 | c4. c8 c2 | d d4 d | g,1 | %8
g'2 g4. g8 | g4. g8 g2 | g c,4. g'8 | %11
fis4. g8 d2 | g d4. e8 | c4. c8 c2 | %14
d d4 d g,1
}
BBICHxAGMusicLH =  \partCombine #'(2 . 20)  \BBICHxAGMusicLHA \BBICHxAGMusicLHB
BBICHxAGMusicLyrics = \relative c''''{ \BBICHxAGMusicGlobal \clef "treble"
    \hideNotes \voiceFour c2 c4. c8 c4. c8 c2 c2 c4 c4 c1 c2 c4. c8 c4. c8 c2 c4  s4 c4 c4 c1 c2 c4. c8 c4. c8 c2 c2 c4. c8 c4. c8 c2 c2 c4. c8 c4. c8 c2 c4  s4 c4 c4 c1
}

BBICIxHHMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 2 = 92
    \time 3/2
    \key es \major
    \partial 2
    
}
BBICIxHHMusicRHA = \relative c'{ \BBICIxHHMusicGlobal \clef "treble"
    g'2 |  \nbp g2. g4 f g | %2
\nbp bes2 aes \lbp g | %3
\nbp bes2. g4 f ees | %4
\nbp f2. r4 \lbp f2 |  \nbp g2. g4 f g | %6
\nbp bes2 aes \lbp g | %7
\nbp g2. f4 ees d |  \nbp ees1 r2 \cfb | %9
c' \postCho c c | bes1 \pcAO ees,2 | %11
aes1 aes2 |  \nbp g1. | g2 g g | %14
g (f) ees | ees1 d2 \nbp ees1 \he
}
BBICIxHHMusicRHB = \relative c'{ \BBICIxHHMusicGlobal \clef "treble"
    ees2 | ees2. ees4 d ees | d2 d ees | %3
ees2. ees4 ees c | d2. r4 d2 | %5
ees2. ees4 d ees | g2 f ees | %7
c2. c4 bes bes | bes1 r2 | ees ees ees | %10
ees1 ees2 | ees1 d2 | ees1. | %13
des2 des des | c1 bes2 | bes1 bes2 bes1
}
BBICIxHHMusicRH =  \partCombine #'(2 . 20)  \BBICIxHHMusicRHA \BBICIxHHMusicRHB
BBICIxHHMusicLHA = \relative c{ \BBICIxHHMusicGlobal \clef "bass"
    bes'2 | bes2. bes4 bes bes | %2
bes2 bes bes | g2. bes4 a a | %4
bes2. r4 bes2 | bes2. bes4 bes bes | %6
c2 c bes | \pcAO aes2. aes4 g f | g1 r2 | %9
aes aes aes | g1 c2 | c1 bes2 | bes1. | %13
bes2 bes bes | bes (aes) g | %15
f (g) aes g1
}
BBICIxHHMusicLHB = \relative c{ \BBICIxHHMusicGlobal \clef "bass"
    ees2 | ees2. ees4 aes g | f2 f ees | %3
ees2. ees4 c f | bes,2. r4 bes2 | %5
ees2. ees4 aes g | e2 f g | %7
aes2. aes,4 bes bes | ees1 r2 | %9
aes, aes aes | ees'1 c2 | f1 bes,2 | %12
ees1. | ees2 ees ees | aes,1 bes2 | %15
bes1 bes2 ees1
}
BBICIxHHMusicLH =  \partCombine #'(2 . 20)  \BBICIxHHMusicLHA \BBICIxHHMusicLHB
BBICIxHHMusicLyrics = \relative c''''{ \BBICIxHHMusicGlobal \clef "treble"
    \hideNotes \voiceFour c2 c2. c4 c4 c4 c2 c2 c2 c2. c4 c4 c4 c2.  s4 c2 c2. c4 c4 c4 c2 c2 c2 c2. c4 c4 c4 c1  s2 c2 c2 c2 c1 c2 c1 c2 c1. c2 c2 c2 c1 c2 c1 c2 c1
}

BBIDZxCEFMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 2 = 62
    \time 3/4
    \key g \major
    
}
BBIDZxCEFMusicRHA = \relative c'{ \BBIDZxCEFMusicGlobal \clef "treble"
    b'4 a g | g (fis) g | a (e) fis | %3
\nbp g2. | g4 fis e | d2 g4 | %6
g (fis) g |  \nbp a2. | b4 a g | %9
g (fis) g | a (e) fis |  \nbp g2. | %12
g4 fis e | d2 b'4 | a (b) a | %15
\nbp g2. \cbp | c4 \postCho c c | %17
b2 b4 | a2 a4 |  \nbp b2. | %20
b4 a g \pcAO | e2 g4 | a2 a4 \nbp g2. \he
}
BBIDZxCEFMusicRHB = \relative c'{ \BBIDZxCEFMusicGlobal \clef "treble"
    d4 d d | d2 d4 | e2 d4 | d2. | e4 d c | %5
b2 d4 | cis2 cis4 | d2. | d4 d d | %9
d2 d4 | e2 d4 | d2. | e4 d c | b2 d4 | %14
cis2 c4 | b2. | e4 e e | d2 g4 | %18
fis2 fis4 | g2. | d4 d d | e2 e4 | %22
fis2 fis4 d2.
}
BBIDZxCEFMusicRH =  \partCombine #'(2 . 20)  \BBIDZxCEFMusicRHA \BBIDZxCEFMusicRHB
BBIDZxCEFMusicLHA = \relative c{ \BBIDZxCEFMusicGlobal \clef "bass"
    \pcAO g'4 c b | b (c) b | c2 a4 | %3
b2. | g4 g g | g2 g4 | a2 g4 | %7
fis2. \pcAO | g4 c b | b (c) b | %10
c2 a4 | b2. | g4 g g | g2 g4 | g2 fis4 | %15
g2. | g4 g g \pcAO | g2 d'4 | d2 d4 | %19
d2. | d4 c b | c2 b4 | %22
d (a) c b2.
}
BBIDZxCEFMusicLHB = \relative c{ \BBIDZxCEFMusicGlobal \clef "bass"
    g'4 fis g | g (a) g | c,2 d4 | g,2. | %4
c4 c c | g2 b4 | a2 a4 | d2. | %8
g4 fis g | g (a) g | c,2 d4 | g,2. | %12
c4 c c | g2 g4 | a2 d4 | g,2. | c4 c c | %17
g'2 g4 | d2 d4 | g2. | g4 g g | c,2 e4 | %22
d2 d4 g,2.
}
BBIDZxCEFMusicLH =  \partCombine #'(2 . 20)  \BBIDZxCEFMusicLHA \BBIDZxCEFMusicLHB
BBIDZxCEFMusicLyrics = \relative c''''{ \BBIDZxCEFMusicGlobal \clef "treble"
    \hideNotes \voiceFour c4 c4 c4 c4  s4 c4 c4  s4 c4 c2. c4 c4 c4 c2 c4 c4  s4 c4 c2. c4 c4 c4 c4  s4 c4 c4  s4 c4 c2. c4 c4 c4 c2 c4 c4  s4 c4 c2. c4 c4 c4 c2 c4 c2 c4 c2. c4 c4 c4 c2 c4 c2 c4 c2.
}

BCAFFxBDFMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 96
    \time 9/8
    \key d \major
    \partial 8*3
    
}
BCAFFxBDFMusicRHA = \relative c'{ \BCAFFxBDFMusicGlobal \clef "treble"
    fis8 [b] a |  \nbp fis4. d d8 [cis] d | %2
\nbp fis4. e \lbp g8 [cis] b | %3
\nbp a4. g g8 [fis] e | %4
\nbp fis2. \lbp fis8 [b] a | %5
\nbp fis4. d a'8 [b] cis | %6
\nbp d4. a \lbp d8 [fis,] b | %7
\nbp a4. g e8 [a,] fis' | %8
\nbp d2. \lbp a'8 [fis] g | %9
\nbp a4. d a8 [fis] d | %10
\nbp d4. cis \lbp g'8 [cis] b | %11
\nbp a4. g g8 [fis] e | %12
\nbp fis2. \lbp a8 [b] cis | %13
\nbp d4. a d8 [a] d | %14
\nbp cis4. b \lbp a8 [b] fis | %15
\nbp a4. g e8 [a,] fis' \nbp d2. \he
}
BCAFFxBDFMusicRHB = \relative c'{ \BCAFFxBDFMusicGlobal \clef "treble"
    d4 d8 | d4. a a4 a8 | d4. cis e8 [g] g | %3
fis4. e e8 [d] cis | d2. d4 d8 | %5
d4. a g'4 g8 | fis4. fis fis8 [d] g | %7
fis4. e cis4 cis8 | a2. fis'8 [d] e | %9
fis4. fis fis8 [d] a | %10
a4. a e'8 [g] g | fis4. e e8 [d] cis | %12
d2. g4 g8 | fis4. fis fis4 a8 | %14
a4. g fis4 d8 | fis4. e cis4 cis8 a2.
}
BCAFFxBDFMusicRH =  \partCombine #'(2 . 20)  \BCAFFxBDFMusicRHA \BCAFFxBDFMusicRHB
BCAFFxBDFMusicLHA = \relative c{ \BCAFFxBDFMusicGlobal \clef "bass"
    a'8 [g] fis | a4. fis fis8 [e] fis | %2
a4. a cis4 d8 | cis4. cis a4 a8 | %4
a2. a8 [g] fis | a4. fis cis'4 a8 | %6
a4. a a4 d8 | d4. cis a4 a8 | %8
fis2. a4 a8 | d4. d a4 fis8 | %10
fis4. e a4 a8 | a4. a a4 a8 | %12
a2. cis4 \pcAO a8 | a4. d a4 d8 | %14
d4. d d4 d8 | a4. a g4 g8 fis2.
}
BCAFFxBDFMusicLHB = \relative c{ \BCAFFxBDFMusicGlobal \clef "bass"
    d4 d8 | d4. d d4 d8 | a4. a a'4 a8 | %3
a4. a a,4 a8 | d2. d4 d8 | d4. d a4 a8 | %6
d4. d d4 g,8 | a4. a a4 a8 | d2. d4 d8 | %9
d4. d d4 d8 | a4. a a4 a8 | a4. a a4 a8 | %12
d2. a'4 a8 | d,4. d d4 fis8 | %14
g4. g a4 a8 | a,4. a a4 a8 d2.
}
BCAFFxBDFMusicLH =  \partCombine #'(2 . 20)  \BCAFFxBDFMusicLHA \BCAFFxBDFMusicLHB
BCAFFxBDFMusicLyrics = \relative c''''{ \BCAFFxBDFMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8  s8 c8 c4. c4. c8  s8 c8 c4. c4. c8  s8 c8 c4. c4. c8  s8 c8 c2. c8  s8 c8 c4. c4. c8  s8 c8 c4. c4. c8  s8 c8 c4. c4. c8  s8 c8 c2. c8  s8 c8 c4. c4. c8  s8 c8 c4. c4. c8  s8 c8 c4. c4. c8  s8 c8 c2. c8  s8 c8 c4. c4. c8  s8 c8 c4. c4. c8  s8 c8 c4. c4. c8  s8 c8 c2.
}

CAFEBxGGNoChorusMusicGlobal = { 
    \set Staff.autoBeaming = ##f
\numericTimeSignature

    \set Score.tempoHideNote = ##t
    \tempo 4 = 60
    \time 6/8
    \key d \major
    \partial 8
    
}
CAFEBxGGNoChorusMusicRHA = \relative c'{ \CAFEBxGGNoChorusMusicGlobal \clef "treble"
    \pcAO d8 |  \nbp fis4 g8 a4 a8 | %2
b4 cis8 d4 \lbp b8 | %3
\nbp a4 fis8 fis [e] \pcAO d | %4
e4 fis8 e4 \pcAO \lbp d8 | %5
\nbp fis4 g8 a4 a8 | b4 cis8 d4 \lbp b8 | %7
\nbp a4 fis8 fis4 \pcAO d8 | %8
fis4 e8 \pcAO \set Score.tempoHideNote = ##t \tempo 4 = 30  \fpre d4 \fpost \set Score.tempoHideNote = ##t \tempo 4 = 60   \lbp a'8 | %9
\nbp d4 cis8 d4 b8 | a4 fis8 a4 \lbp a8 | %11
\nbp d4 cis8 d4 b8 | %12
a4 fis8 e4 \breathe \pcAO \lbp d8 | %13
\nbp fis4 g8 a4 a8 | b4 cis8 d4 \lbp b8 | %15
\nbp a4 fis8 fis4 \pcAO d8 fis4 e8 \pcAO \set Score.tempoHideNote = ##t \tempo 4 = 30  \fpre d4 \fpost \set Score.tempoHideNote = ##t \tempo 4 = 60   \he
}
CAFEBxGGNoChorusMusicRHB = \relative c'{ \CAFEBxGGNoChorusMusicGlobal \clef "treble"
    d8 | d4 e8 fis4 fis8 | g4 a8 b4 g8 | %3
fis4 d8 d [cis] d | cis4 d8 cis4 d8 | %5
d4 e8 fis4 fis8 | g4 a8 b4 g8 | %7
fis4 d8 d4 d8 | d4 cis8 d4 fis8 | %9
fis4 g8 a4 g8 | fis4 d8 fis4 fis8 | %11
fis4 g8 a4 g8 | fis4 d8 cis4 d8 | %13
d4 e8 fis4 fis8 | g4 a8 b4 g8 | %15
fis4 d8 d4 d8 d4 cis8 d4
}
CAFEBxGGNoChorusMusicRH =  \partCombine #'(2 . 20)  \CAFEBxGGNoChorusMusicRHA \CAFEBxGGNoChorusMusicRHB
CAFEBxGGNoChorusMusicLHA = \relative c{ \CAFEBxGGNoChorusMusicGlobal \clef "bass"
    fis8 | a4 a8 d4 d8 | d4 d8 d4 d8 | %3
d4 a8 a [g] fis | a4 a8 a4 fis8 | %5
a4 a8 d4 d8 | d4 d8 d4 d8 | %7
d4 a8 a4 a8 \pcAO | a4 g8 fis4 d'8 | %9
a4 a8 a4 d8 | d4 a8 a4 d8 | a4 a8 a4 d8 | %12
d4 a8 a4 fis8 | a4 a8 d4 d8 | %14
d4 d8 d4 d8 | d4 a8 a4 a8 \pcAO a4 g8 fis4
}
CAFEBxGGNoChorusMusicLHB = \relative c{ \CAFEBxGGNoChorusMusicGlobal \clef "bass"
    d8 | d4 d8 d4 d8 | g4 g8 g4 g8 | %3
d4 d8 d4 d8 | a4 a8 a4 d8 | d4 d8 d4 d8 | %6
g4 g8 g4 g8 | d4 d8 d4 fis8 | %8
a4 a,8 d4 \fpostbelow d8 | d4 e8 fis4 g8 | %10
d4 d8 d4 d8 | d4 e8 fis4 g8 | %12
d4 d8 a4 d8 | d4 d8 d4 d8 | g4 g8 g4 g8 | %15
d4 d8 d4 fis8 a4 a,8 d4 \fpostbelow
}
CAFEBxGGNoChorusMusicLH =  \partCombine #'(2 . 20)  \CAFEBxGGNoChorusMusicLHA \CAFEBxGGNoChorusMusicLHB
CAFEBxGGNoChorusMusicLyrics = \relative c''''{ \CAFEBxGGNoChorusMusicGlobal \clef "treble"
    \hideNotes \voiceFour c8 c4 c8 c4 c8 c4 c8 c4 c8 c4 c8 c4 c8 c4 c8 c4 c8 c4 c8 c4 c8 c4 c8 c4 c8 c4 c8 c4 c8 c4 c8 c4 c8 c4 c8 c4 c8 c4 c8 c4 c8 c4 c8 c4 c8 c4 c8 c4 c8 c4 c8 c4 c8 c4 c8 c4 c8 c4 c8 c4 c8 c4 c8 c4
}


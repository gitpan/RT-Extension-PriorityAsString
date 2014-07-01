#line 1
# !!!!!!!   DO NOT EDIT THIS FILE   !!!!!!!
# This file is machine-generated by lib/unicore/mktables from the Unicode
# database, Version 6.3.0.  Any changes made here will be lost!


# !!!!!!!   INTERNAL PERL USE ONLY   !!!!!!!
# This file is for internal use by core Perl only.  The format and even the
# name or existence of this file are subject to change without notice.  Don't
# use it directly.  Use Unicode::UCD to access the Unicode character data
# base.


package charnames;

# This module contains machine-generated tables and code for the
# algorithmically-determinable Unicode character names.  The following
# routines can be used to translate between name and code point and vice versa

{ # Closure

    # Matches legal code point.  4-6 hex numbers, If there are 6, the first
    # two must be 10; if there are 5, the first must not be a 0.  Written this
    # way to decrease backtracking.  The first regex allows the code point to
    # be at the end of a word, but to work properly, the word shouldn't end
    # with a valid hex character.  The second one won't match a code point at
    # the end of a word, and doesn't have the run-on issue
    my $run_on_code_point_re = qr/(?^aax: (?: 10[0-9A-F]{4} | [1-9A-F][0-9A-F]{4} | [0-9A-F]{4} ) \b)/;
    my $code_point_re = qr/(?^aa:\b(?^aax: (?: 10[0-9A-F]{4} | [1-9A-F][0-9A-F]{4} | [0-9A-F]{4} ) \b))/;

    # In the following hash, the keys are the bases of names which include
    # the code point in the name, like CJK UNIFIED IDEOGRAPH-4E01.  The value
    # of each key is another hash which is used to get the low and high ends
    # for each range of code points that apply to the name.
    my %names_ending_in_code_point = (
'CJK COMPATIBILITY IDEOGRAPH' => 
{
'high' => 
[
64109,
64217,
195101,
],
'low' => 
[
63744,
64112,
194560,
],
},
'CJK UNIFIED IDEOGRAPH' => 
{
'high' => 
[
19893,
40908,
173782,
177972,
178205,
],
'low' => 
[
13312,
19968,
131072,
173824,
177984,
],
},

    );

    # The following hash is a copy of the previous one, except is for loose
    # matching, so each name has blanks and dashes squeezed out
    my %loose_names_ending_in_code_point = (
'CJKCOMPATIBILITYIDEOGRAPH' => 
{
'high' => 
[
64109,
64217,
195101,
],
'low' => 
[
63744,
64112,
194560,
],
},
'CJKUNIFIEDIDEOGRAPH' => 
{
'high' => 
[
19893,
40908,
173782,
177972,
178205,
],
'low' => 
[
13312,
19968,
131072,
173824,
177984,
],
},

    );

    # And the following array gives the inverse mapping from code points to
    # names.  Lowest code points are first
    my @code_points_ending_in_code_point = (

{
'high' => 19893,
'low' => 13312,
'name' => 'CJK UNIFIED IDEOGRAPH',
},
{
'high' => 40908,
'low' => 19968,
'name' => 'CJK UNIFIED IDEOGRAPH',
},
{
'high' => 64109,
'low' => 63744,
'name' => 'CJK COMPATIBILITY IDEOGRAPH',
},
{
'high' => 64217,
'low' => 64112,
'name' => 'CJK COMPATIBILITY IDEOGRAPH',
},
{
'high' => 173782,
'low' => 131072,
'name' => 'CJK UNIFIED IDEOGRAPH',
},
{
'high' => 177972,
'low' => 173824,
'name' => 'CJK UNIFIED IDEOGRAPH',
},
{
'high' => 178205,
'low' => 177984,
'name' => 'CJK UNIFIED IDEOGRAPH',
},
{
'high' => 195101,
'low' => 194560,
'name' => 'CJK COMPATIBILITY IDEOGRAPH',
},
,

    );

    # Convert from code point to Jamo short name for use in composing Hangul
    # syllable names
    my %Jamo = (
4352 => 'G',
4353 => 'GG',
4354 => 'N',
4355 => 'D',
4356 => 'DD',
4357 => 'R',
4358 => 'M',
4359 => 'B',
4360 => 'BB',
4361 => 'S',
4362 => 'SS',
4363 => '',
4364 => 'J',
4365 => 'JJ',
4366 => 'C',
4367 => 'K',
4368 => 'T',
4369 => 'P',
4370 => 'H',
4449 => 'A',
4450 => 'AE',
4451 => 'YA',
4452 => 'YAE',
4453 => 'EO',
4454 => 'E',
4455 => 'YEO',
4456 => 'YE',
4457 => 'O',
4458 => 'WA',
4459 => 'WAE',
4460 => 'OE',
4461 => 'YO',
4462 => 'U',
4463 => 'WEO',
4464 => 'WE',
4465 => 'WI',
4466 => 'YU',
4467 => 'EU',
4468 => 'YI',
4469 => 'I',
4520 => 'G',
4521 => 'GG',
4522 => 'GS',
4523 => 'N',
4524 => 'NJ',
4525 => 'NH',
4526 => 'D',
4527 => 'L',
4528 => 'LG',
4529 => 'LM',
4530 => 'LB',
4531 => 'LS',
4532 => 'LT',
4533 => 'LP',
4534 => 'LH',
4535 => 'M',
4536 => 'B',
4537 => 'BS',
4538 => 'S',
4539 => 'SS',
4540 => 'NG',
4541 => 'J',
4542 => 'C',
4543 => 'K',
4544 => 'T',
4545 => 'P',
4546 => 'H',

    );

    # Leading consonant (can be null)
    my %Jamo_L = (
'' => 11,
'B' => 7,
'BB' => 8,
'C' => 14,
'D' => 3,
'DD' => 4,
'G' => 0,
'GG' => 1,
'H' => 18,
'J' => 12,
'JJ' => 13,
'K' => 15,
'M' => 6,
'N' => 2,
'P' => 17,
'R' => 5,
'S' => 9,
'SS' => 10,
'T' => 16,

    );

    # Vowel
    my %Jamo_V = (
'A' => 0,
'AE' => 1,
'E' => 5,
'EO' => 4,
'EU' => 18,
'I' => 20,
'O' => 8,
'OE' => 11,
'U' => 13,
'WA' => 9,
'WAE' => 10,
'WE' => 15,
'WEO' => 14,
'WI' => 16,
'YA' => 2,
'YAE' => 3,
'YE' => 7,
'YEO' => 6,
'YI' => 19,
'YO' => 12,
'YU' => 17,

    );

    # Optional trailing consonant
    my %Jamo_T = (
'B' => 17,
'BS' => 18,
'C' => 23,
'D' => 7,
'G' => 1,
'GG' => 2,
'GS' => 3,
'H' => 27,
'J' => 22,
'K' => 24,
'L' => 8,
'LB' => 11,
'LG' => 9,
'LH' => 15,
'LM' => 10,
'LP' => 14,
'LS' => 12,
'LT' => 13,
'M' => 16,
'N' => 4,
'NG' => 21,
'NH' => 6,
'NJ' => 5,
'P' => 26,
'S' => 19,
'SS' => 20,
'T' => 25,

    );

    # Computed re that splits up a Hangul name into LVT or LV syllables
    my $syllable_re = qr/(|B|BB|C|D|DD|G|GG|H|J|JJ|K|M|N|P|R|S|SS|T)(A|AE|E|EO|EU|I|O|OE|U|WA|WAE|WE|WEO|WI|YA|YAE|YE|YEO|YI|YO|YU)(B|BS|C|D|G|GG|GS|H|J|K|L|LB|LG|LH|LM|LP|LS|LT|M|N|NG|NH|NJ|P|S|SS|T)?/;

    my $HANGUL_SYLLABLE = "HANGUL SYLLABLE ";
    my $loose_HANGUL_SYLLABLE = "HANGULSYLLABLE";

    # These constants names and values were taken from the Unicode standard,
    # version 5.1, section 3.12.  They are used in conjunction with Hangul
    # syllables
    my $SBase = 0xAC00;
    my $LBase = 0x1100;
    my $VBase = 0x1161;
    my $TBase = 0x11A7;
    my $SCount = 11172;
    my $LCount = 19;
    my $VCount = 21;
    my $TCount = 28;
    my $NCount = $VCount * $TCount;

    sub name_to_code_point_special {
        my ($name, $loose) = @_;

        # Returns undef if not one of the specially handled names; otherwise
        # returns the code point equivalent to the input name
        # $loose is non-zero if to use loose matching, 'name' in that case
        # must be input as upper case with all blanks and dashes squeezed out.

        if ((! $loose && $name =~ s/$HANGUL_SYLLABLE//)
            || ($loose && $name =~ s/$loose_HANGUL_SYLLABLE//))
        {
            return if $name !~ qr/^$syllable_re$/;
            my $L = $Jamo_L{$1};
            my $V = $Jamo_V{$2};
            my $T = (defined $3) ? $Jamo_T{$3} : 0;
            return ($L * $VCount + $V) * $TCount + $T + $SBase;
        }

        # Name must end in 'code_point' for this to handle.
        return if (($loose && $name !~ /^ (.*?) ($run_on_code_point_re) $/x)
                   || (! $loose && $name !~ /^ (.*) ($code_point_re) $/x));

        my $base = $1;
        my $code_point = CORE::hex $2;
        my $names_ref;

        if ($loose) {
            $names_ref = \%loose_names_ending_in_code_point;
        }
        else {
            return if $base !~ s/-$//;
            $names_ref = \%names_ending_in_code_point;
        }

        # Name must be one of the ones which has the code point in it.
        return if ! $names_ref->{$base};

        # Look through the list of ranges that apply to this name to see if
        # the code point is in one of them.
        for (my $i = 0; $i < scalar @{$names_ref->{$base}{'low'}}; $i++) {
            return if $names_ref->{$base}{'low'}->[$i] > $code_point;
            next if $names_ref->{$base}{'high'}->[$i] < $code_point;

            # Here, the code point is in the range.
            return $code_point;
        }

        # Here, looked like the name had a code point number in it, but
        # did not match one of the valid ones.
        return;
    }

    sub code_point_to_name_special {
        my $code_point = shift;

        # Returns the name of a code point if algorithmically determinable;
        # undef if not

        # If in the Hangul range, calculate the name based on Unicode's
        # algorithm
        if ($code_point >= $SBase && $code_point <= $SBase + $SCount -1) {
            use integer;
            my $SIndex = $code_point - $SBase;
            my $L = $LBase + $SIndex / $NCount;
            my $V = $VBase + ($SIndex % $NCount) / $TCount;
            my $T = $TBase + $SIndex % $TCount;
            $name = "$HANGUL_SYLLABLE$Jamo{$L}$Jamo{$V}";
            $name .= $Jamo{$T} if $T != $TBase;
            return $name;
        }

        # Look through list of these code points for one in range.
        foreach my $hash (@code_points_ending_in_code_point) {
            return if $code_point < $hash->{'low'};
            if ($code_point <= $hash->{'high'}) {
                return sprintf("%s-%04X", $hash->{'name'}, $code_point);
            }
        }
        return;            # None found
    }
} # End closure

1;

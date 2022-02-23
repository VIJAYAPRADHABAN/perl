#!/usr/bin/perl

package Employee;
use Person;
use strict;
our @ISA = qw(Person);   
sub new {
   my ($class) = @_;
   my $self = $class->SUPER::new( $_[1], $_[2], $_[3] );
   # Add roll ,grade 
   $self->{_rollnumber}   = undef;
   $self->{_grade} = undef;
   bless $self, $class;
   return $self;
}

sub getFirstName {
   my( $self ) = @_;
   return $self->{_firstName};
}

sub setrollnumber{
   my ( $self, $roll ) = @_;
   $self->{_rollnumber} = $roll if defined($roll);
   return $self->{_rollnumber};
}

sub getroll {
   my( $self ) = @_;
   return $self->{_rollnumber};
}

sub setgrade{
   my ( $self, $grade ) = @_;
   $self->{_grade} = $grade if defined($grade);
   return $self->{_grade};
}

sub getroll {
   my( $self ) = @_;
   return $self->{_grade};
}

$myObject = Person->new();
$myObject->print_cnt();

1;
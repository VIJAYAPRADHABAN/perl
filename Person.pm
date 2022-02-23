#!/usr/bin/perl 

package Person;

sub new {
   my $class = shift;
   my $self = {
      _firstName => shift,
      _lastName  => shift,
      _bloodgroup       => shift,
   };
   print "First_Name : $self->{_firstName}\n";
   print "Last_Name : $self->{_lastName}\n";
   print "Blood_group : $self->{_bloodgroup}\n";
   bless $self, $class;
   return $self;
}
sub setFirstName {
   my ( $self, $firstName ) = @_;
   $self->{_firstName} = $firstName if defined($firstName);
   return $self->{_firstName};
}
sub setlastName {
   my ( $self, $lastName ) = @_;
   $self->{_lastName} = $lastName if defined($lastName);
   return $self->{_lastName};
}
sub setbloodgroup {
   my ( $self, $bloodgrp ) = @_;
   $self->{_bloodgroup} = $bloodgrp if defined($bloodgrp);
   return $self->{_bloodgroup};
}

sub getFirstName {
   my( $self ) = @_;
   return $self->{_firstName};
}

sub getlastName {
   my( $self ) = @_;
   return $self->{_lastName};
}

sub getbloodgroup {
   my( $self ) = @_;
   return $self->{_bloodgroup};
}
sub print_cnt{
   my $self = shift;
   $self->SUPER::print_cnt();
}
1;
#!/usr/bin/perl 

package Person;

sub new {
   my $class = shift;
   my $self = {
      _street => shift,
      _city  => shift,
      _state  => shift,
	   _zip  => shift,
   };
   # Print all the values just for clarification.
   print "street is $self->{_street}\n";
   print "city is $self->{_city}\n";
   print "state is $self->{_state}\n";
   print "zip is $self->{_zip}\n";
   bless $self, $class;
   return $self;
}
sub setstreet {
   my ( $self, $street ) = @_;
   $self->{_street} = $street if defined($street);
   return $self->{_street};
}
sub setcity {
   my ( $self, $city ) = @_;
   $self->{_city} = $city if defined($city);
   return $self->{_city};
}
sub setstate {
   my ( $self, $state ) = @_;
   $self->{_state} = $state if defined($state);
   return $self->{_state};
}
sub setzip {
   my ( $self, $zip ) = @_;
   $self->{_zip} = $zip if defined($zip);
   return $self->{_zip};
}

sub getstreet {
   my( $self ) = @_;
   return $self->{_street};
}

sub getcity {
   my( $self ) = @_;
   return $self->{_city};
}

sub getstate {
   my( $self ) = @_;
   return $self->{_state};
}
sub getzip {
   my( $self ) = @_;
   return $self->{_zip};
}
1;
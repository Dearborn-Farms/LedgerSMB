package LedgerSMB::Workflow::Persister::JournalEntry;

=head1 NAME

LedgerSMB::Workflow::Persister::Email - Attachment metadata

=head1 DESCRIPTION

This module provides e-mail attachment metadata to e-mail workflow.

The class inherits from LedgerSMB::Workflow::Persister::ExtraData; users are
expected to declare the email table and fields as "ExtraData" configuration.

=head1 METHODS

=cut


use warnings;
use strict;
use base qw( LedgerSMB::Workflow::Persister::ExtraData );

use Carp qw(croak);

=head2 create_workflow

Creates a new workflow and associates it with the transaction identified
by the C<trans_id> context parameter.

Throws an exception if the identified transaction already has a workflow
associated.

=cut

sub create_workflow {
    my ($self, $wf) = @_;

    return $self->SUPER::create_workflow( $wf );

}


1;

=head1 LICENSE AND COPYRIGHT

Copyright (C) 2020 The LedgerSMB Core Team

This file is licensed under the GNU General Public License version 2, or at your
option any later version.  A copy of the license should have been included with
your software.


package API::CPanel::Domain;

use strict;
use warnings;

use API::CPanel;
use Data::Dumper;


# ���������� ������ �������
sub list {
    my $params = shift;

    return API::CPanel::action_abstract(
	params       => $params,
	func         => 'listaccts',
	container    => 'acct',
	result_field => 'domain',
	want_hash    => '1',
    );
}

1;

package API::CPanel::Domain;

use strict;
use warnings;

use API::CPanel;
use Data::Dumper;

our $VERSION = 0.08;

# Возвращает список доменов
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


# Изменяет основной ип сайта
sub change_site_ip {
    my $params = shift;

    return API::CPanel::action_abstract(
        params         => $params,
        func           => 'setsiteip',
        container      => 'result',
        allowed_fields => 'ip user domain',
    );
}

1;

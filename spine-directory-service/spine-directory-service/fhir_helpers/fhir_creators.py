from fhirclient.models.endpoint import Endpoint


def create_endpoint_definition(address, endpoint_details):
    """
    Helper function to create a fhir endpoint definition
    :param endpoint_details: details of endpoint from routing/reliability handler
    :return: Endpoint
    """

    code = get_details(endpoint_details)
    endpoint = Endpoint({
        'name':'name',
        'address': address,
        'connectionType': 'connection_type',
        'payloadType': code
    })

    return endpoint


def get_details(endpoint_details):
    return endpoint_details.asJson()
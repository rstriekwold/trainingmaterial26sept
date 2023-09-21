*** Settings ***
Documentation                   Example / template for REST API automation
Library                         RequestsLibrary             # import library "RequestsLibrary" for REST API testing
Library                         OperatingSystem
Library                         DateTime                    # imported for date conversion in second test
Resource                        ../resources/common.resource
Library     QWeb
Suite Setup             Open Browser    about:blank    chrome




*** Test Cases ***

test API from json file with json argument
    ${CreateSession}=           Create Session              CRT                         https://api.eu-robotic.copado.com/pace
    ${headers}=                 Create Dictionary           X-AUTHORIZATION=${x-key}    Content-Type=application/json
    ${json}=                    Get File                    ${CURDIR}/../resources/test.json
    ${json_dict}=               Evaluate                    json.loads('''${json}''')                               json
    ${resp}=                    Post On Session             CRT                         /v4/projects/34282/jobs/41932/builds              headers=${headers}    json=${json_dict}
    Should Be Equal As Strings                              ${resp.status_code}         201
    Log                         ${resp.text}
    ${run_info}=                Get Field Value From Json                               ${resp.text}                data
    Log                         ${run_info}
    ${runid}=                   Get From Dictionary         ${run_info}                 id
    ${run_status}=              Get From Dictionary         ${run_info}                 status
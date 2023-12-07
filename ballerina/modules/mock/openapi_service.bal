// AUTO-GENERATED FILE.
// This file is auto-generated by the Ballerina OpenAPI tool.
import ballerina/http;

listener http:Listener ep0 = new (9090, config = {host: "localhost"});

service /gmail/v1 on ep0 {
    resource function get users/[string userId]/drafts(Xgafv? \$\.xgafv, string? access_token, Alt? alt,
            string? callback, string? fields, string? 'key, string? oauth_token, boolean? prettyPrint, string? quotaUser,
            string? upload_protocol, string? uploadType, boolean? includeSpamTrash, int? maxResults, string? pageToken,
            string? q)
        returns ListDraftsResponse {
        Draft draft = {
            id: "1",
            message: {
                id: "1",
                threadId: "1",
                labelIds: ["CUSTOMER"],
                snippet: "snippet",
                historyId: "1",
                payload: {
                    partId: "1",
                    mimeType: "text/plain",
                    filename: "filename",
                    headers: [{name: "name", value: "value"}],
                    body: {size: 1, data: "data"},
                    parts: [
                        {
                            partId: "1",
                            mimeType: "text/plain",
                            filename: "filename",
                            headers: [{name: "name", value: "value"}],
                            body: {size: 1, data: "data"},
                            parts: []
                        }
                    ]
                }
            }
        };
        ListDraftsResponse response = {drafts: [draft]};
        return response;
    }

    resource function post users/[string userId]/drafts(Xgafv? \$\.xgafv, string? access_token, Alt? alt,
            string? callback, string? fields, string? 'key, string? oauth_token, boolean? prettyPrint, string? quotaUser,
            string? upload_protocol, string? uploadType, @http:Payload Draft payload)
    returns OkDraft {
        return {
            body: {
                id: "1",
                message: {
                    id: "1",
                    threadId: "1"
                }
            }
        };
    }

    resource function post users/[string userId]/drafts/send(Xgafv? \$\.xgafv, string? access_token, Alt? alt,
            string? callback, string? fields, string? 'key, string? oauth_token, boolean? prettyPrint, string? quotaUser,
            string? upload_protocol, string? uploadType, @http:Payload Draft payload)
    returns OkMessage {
        return {
            body: {
                id: "1",
                threadId: "1",
                labelIds: ["CUSTOMER"],
                snippet: "snippet",
                historyId: "1",
                payload: {
                    partId: "1",
                    mimeType: "text/plain",
                    filename: "filename",
                    headers: [{name: "name", value: "value updated"}],
                    body: {size: 1, data: "data"},
                    parts: [
                        {
                            partId: "1",
                            mimeType: "text/plain",
                            filename: "filename",
                            headers: [{name: "name", value: "value"}],
                            body: {size: 1, data: "data"},
                            parts: []
                        }
                    ]
                }
            }
        };
    }

    resource function get users/[string userId]/drafts/[string id](Xgafv? \$\.xgafv, string? access_token, Alt? alt,
            string? callback, string? fields, string? 'key, string? oauth_token, boolean? prettyPrint, string? quotaUser,
            string? upload_protocol, string? uploadType, "minimal"|"full"|"raw"|"metadata"? format)
    returns Draft {
        return {
            id: "1",
            message: {
                id: "1",
                threadId: "1",
                labelIds: ["CUSTOMER"],
                snippet: "snippet",
                historyId: "1",
                payload: {
                    partId: "1",
                    mimeType: "text/plain",
                    filename: "filename",
                    headers: [{name: "name", value: "value"}],
                    body: {size: 1, data: "data"},
                    parts: [
                        {
                            partId: "1",
                            mimeType: "text/plain",
                            filename: "filename",
                            headers: [{name: "name", value: "value"}],
                            body: {size: 1, data: "data"},
                            parts: []
                        }
                    ]
                }
            }
        };
    }

    resource function put users/[string userId]/drafts/[string id](Xgafv? \$\.xgafv, string? access_token, Alt? alt,
            string? callback, string? fields, string? 'key, string? oauth_token, boolean? prettyPrint, string? quotaUser,
            string? upload_protocol, string? uploadType, @http:Payload Draft payload)
    returns Draft {
        return {
            id: "1",
            message: {
                id: "1",
                threadId: "1",
                labelIds: ["CUSTOMER"],
                snippet: "snippet",
                historyId: "1",
                payload: {
                    partId: "1",
                    mimeType: "text/plain",
                    filename: "filename",
                    headers: [{name: "name", value: "value updated"}],
                    body: {size: 1, data: "data"},
                    parts: [
                        {
                            partId: "1",
                            mimeType: "text/plain",
                            filename: "filename",
                            headers: [{name: "name", value: "value"}],
                            body: {size: 1, data: "data"},
                            parts: []
                        }
                    ]
                }
            }
        };
    }

    resource function delete users/[string userId]/drafts/[string id](Xgafv? \$\.xgafv, string? access_token, Alt? alt,
            string? callback, string? fields, string? 'key, string? oauth_token, boolean? prettyPrint, string? quotaUser,
            string? upload_protocol, string? uploadType)
    returns http:Ok {
        return http:OK;
    }

    resource function get users/[string userId]/history(Xgafv? \$\.xgafv, string? access_token, Alt? alt,
            string? callback, string? fields, string? 'key, string? oauth_token, boolean? prettyPrint, string? quotaUser,
            string? upload_protocol, string? uploadType,
            ("messageAdded"|"messageDeleted"|"labelAdded"|"labelRemoved")[]? historyTypes,
            string? labelId, int? maxResults, string? pageToken, string? startHistoryId)
    returns ListHistoryResponse {
        return {
            history: [
                {
                    id: "1",
                    messages: [
                        {
                            id: "1",
                            threadId: "1",
                            labelIds: ["CUSTOMER"],
                            snippet: "snippet",
                            historyId: "1",
                            payload: {
                                partId: "1",
                                mimeType: "text/plain",
                                filename: "filename",
                                headers: [{name: "name", value: "value"}],
                                body: {size: 1, data: "data"},
                                parts: [
                                    {
                                        partId: "1",
                                        mimeType: "text/plain",
                                        filename: "filename",
                                        headers: [{name: "name", value: "value"}],
                                        body: {size: 1, data: "data"},
                                        parts: []
                                    }
                                ]
                            }
                        }
                    ]
                }
            ],
            historyId: "1",
            nextPageToken: "nextPageToken"
        };
    }

    resource function get users/[string userId]/labels(Xgafv? \$\.xgafv, string? access_token, Alt? alt, string? callback,
            string? fields, string? 'key, string? oauth_token, boolean? prettyPrint, string? quotaUser,
            string? upload_protocol, string? uploadType)
    returns ListLabelsResponse {
        return {
            labels: [
                {
                    id: "1",
                    name: "CUSTOMER"
                }
            ]
        };
    }

    resource function post users/[string userId]/labels(Xgafv? \$\.xgafv, string? access_token, Alt? alt,
            string? callback, string? fields, string? 'key, string? oauth_token, boolean? prettyPrint, string? quotaUser,
            string? upload_protocol, string? uploadType, @http:Payload Label payload)
    returns OkLabel {
        return {
            body: {
                id: "1",
                name: "CUSTOMER"
            }
        };
    }

    resource function get users/[string userId]/labels/[string id](Xgafv? \$\.xgafv, string? access_token, Alt? alt,
            string? callback, string? fields, string? 'key, string? oauth_token, boolean? prettyPrint, string? quotaUser,
            string? upload_protocol, string? uploadType)
    returns Label {
        return {
            id: "1",
            name: "CUSTOMER"
        };
    }

    resource function put users/[string userId]/labels/[string id](Xgafv? \$\.xgafv, string? access_token, Alt? alt,
            string? callback, string? fields, string? 'key, string? oauth_token, boolean? prettyPrint, string? quotaUser,
            string? upload_protocol, string? uploadType, @http:Payload Label payload)
    returns Label {
        return {
            id: "1",
            name: "CUSTOMER"
        };
    }

    resource function delete users/[string userId]/labels/[string id](Xgafv? \$\.xgafv, string? access_token, Alt? alt,
            string? callback, string? fields, string? 'key, string? oauth_token, boolean? prettyPrint, string? quotaUser,
            string? upload_protocol, string? uploadType)
    returns http:Ok {
        return http:OK;
    }

    resource function patch users/[string userId]/labels/[string id](Xgafv? \$\.xgafv, string? access_token, Alt? alt,
            string? callback, string? fields, string? 'key, string? oauth_token, boolean? prettyPrint, string? quotaUser,
            string? upload_protocol, string? uploadType, @http:Payload Label payload)
    returns Label {
        return {
            id: "1",
            name: "CUSTOMER PATCHED"
        };
    }

    resource function get users/[string userId]/messages(Xgafv? \$\.xgafv, string? access_token, Alt? alt,
            string? callback, string? fields, string? 'key, string? oauth_token, boolean? prettyPrint, string? quotaUser,
            string? upload_protocol, string? uploadType, boolean? includeSpamTrash, string[]? labelIds, int? maxResults,
            string? pageToken, string? q)
    returns ListMessagesResponse {
        return {
            messages: [
                {
                    id: "1",
                    threadId: "1",
                    labelIds: ["CUSTOMER"],
                    snippet: "snippet",
                    historyId: "1",
                    payload: {
                        partId: "1",
                        mimeType: "text/plain",
                        filename: "filename",
                        headers: [{name: "name", value: "value"}],
                        body: {size: 1, data: "data"},
                        parts: [
                            {
                                partId: "1",
                                mimeType: "text/plain",
                                filename: "filename",
                                headers: [{name: "name", value: "value"}],
                                body: {size: 1, data: "data"},
                                parts: []
                            }
                        ]
                    }
                }
            ],
            nextPageToken: "nextPageToken"
        };
    }

    resource function post users/[string userId]/messages(Xgafv? \$\.xgafv, string? access_token, Alt? alt,
            string? callback, string? fields, string? 'key, string? oauth_token, boolean? prettyPrint, string? quotaUser,
            string? upload_protocol, string? uploadType, boolean? deleted, "receivedTime"|"dateHeader"? internalDateSource,
            @http:Payload Message payload)
    returns OkMessage {
        return {
            body: {
                id: "1",
                threadId: "1",
                labelIds: ["CUSTOMER"],
                snippet: "snippet",
                historyId: "1",
                payload: {
                    partId: "1",
                    mimeType: "text/plain",
                    filename: "filename",
                    headers: [{name: "name", value: "value"}],
                    body: {size: 1, data: "data"},
                    parts: [
                        {
                            partId: "1",
                            mimeType: "text/plain",
                            filename: "filename",
                            headers: [{name: "name", value: "value"}],
                            body: {size: 1, data: "data"},
                            parts: []
                        }
                    ]
                }
            }
        };
    }

    resource function post users/[string userId]/messages/batchDelete(Xgafv? \$\.xgafv, string? access_token, Alt? alt,
            string? callback, string? fields, string? 'key, string? oauth_token, boolean? prettyPrint, string? quotaUser,
            string? upload_protocol, string? uploadType, @http:Payload BatchDeleteMessagesRequest payload)
    returns http:Ok {
        return http:OK;
    }

    resource function post users/[string userId]/messages/batchModify(Xgafv? \$\.xgafv, string? access_token, Alt? alt,
            string? callback, string? fields, string? 'key, string? oauth_token, boolean? prettyPrint, string? quotaUser,
            string? upload_protocol, string? uploadType, @http:Payload BatchModifyMessagesRequest payload)
    returns http:Ok {
        return http:OK;
    }

    resource function post users/[string userId]/messages/'import(Xgafv? \$\.xgafv, string? access_token, Alt? alt,
            string? callback, string? fields, string? 'key, string? oauth_token, boolean? prettyPrint, string? quotaUser,
            string? upload_protocol, string? uploadType, boolean? deleted, "receivedTime"|"dateHeader"? internalDateSource,
            boolean? neverMarkSpam, boolean? processForCalendar, @http:Payload Message payload)
    returns OkMessage {
        return {
            body: {
                id: "1",
                threadId: "1",
                labelIds: ["CUSTOMER"],
                snippet: "snippet",
                historyId: "1",
                payload: {
                    partId: "1",
                    mimeType: "text/plain",
                    filename: "filename",
                    headers: [{name: "name", value: "value"}],
                    body: {size: 1, data: "data"},
                    parts: [
                        {
                            partId: "1",
                            mimeType: "text/plain",
                            filename: "filename",
                            headers: [{name: "name", value: "value"}],
                            body: {size: 1, data: "data"},
                            parts: []
                        }
                    ]
                }
            }
        };
    }

    resource function post users/[string userId]/messages/send(Xgafv? \$\.xgafv, string? access_token, Alt? alt,
            string? callback, string? fields, string? 'key, string? oauth_token, boolean? prettyPrint, string? quotaUser,
            string? upload_protocol, string? uploadType, @http:Payload Message payload)
    returns OkMessage {
        return {
            body: {
                id: "1",
                threadId: "1",
                labelIds: ["CUSTOMER"],
                snippet: "snippet",
                historyId: "1",
                payload: {
                    partId: "1",
                    mimeType: "text/plain",
                    filename: "filename",
                    headers: [{name: "name", value: "value"}],
                    body: {size: 1, data: "data"},
                    parts: [
                        {
                            partId: "1",
                            mimeType: "text/plain",
                            filename: "filename",
                            headers: [{name: "name", value: "value"}],
                            body: {size: 1, data: "data"},
                            parts: []
                        }
                    ]
                }
            }
        };
    }

    resource function get users/[string userId]/messages/[string id](Xgafv? \$\.xgafv, string? access_token, Alt? alt,
            string? callback, string? fields, string? 'key, string? oauth_token, boolean? prettyPrint, string? quotaUser,
            string? upload_protocol, string? uploadType, "minimal"|"full"|"raw"|"metadata"? format,
            string[]? metadataHeaders)
    returns Message {
        return {
            id: "1",
            threadId: "1",
            labelIds: ["CUSTOMER"],
            snippet: "snippet",
            historyId: "1",
            payload: {
                partId: "1",
                mimeType: "text/plain",
                filename: "filename",
                headers: [{name: "name", value: "value"}],
                body: {size: 1, data: "data"},
                parts: [
                    {
                        partId: "1",
                        mimeType: "text/plain",
                        filename: "filename",
                        headers: [{name: "name", value: "value"}],
                        body: {size: 1, data: "data"},
                        parts: []
                    }
                ]
            }
        };
    }

    resource function delete users/[string userId]/messages/[string id](Xgafv? \$\.xgafv, string? access_token, Alt? alt,
            string? callback, string? fields, string? 'key, string? oauth_token, boolean? prettyPrint, string? quotaUser,
            string? upload_protocol, string? uploadType)
    returns http:Ok {
        return http:OK;
    }

    resource function post users/[string userId]/messages/[string id]/modify(Xgafv? \$\.xgafv, string? access_token,
            Alt? alt, string? callback, string? fields, string? 'key, string? oauth_token, boolean? prettyPrint,
            string? quotaUser, string? upload_protocol, string? uploadType, @http:Payload ModifyMessageRequest payload)
    returns OkMessage {
        return {
            body: {
                id: "1",
                threadId: "1",
                labelIds: ["CUSTOMER"],
                snippet: "snippet",
                historyId: "1",
                payload: {
                    partId: "1",
                    mimeType: "text/plain",
                    filename: "filename",
                    headers: [{name: "name", value: "value"}],
                    body: {size: 1, data: "data"},
                    parts: [
                        {
                            partId: "1",
                            mimeType: "text/plain",
                            filename: "filename",
                            headers: [{name: "name", value: "value"}],
                            body: {size: 1, data: "data"},
                            parts: []
                        }
                    ]
                }
            }
        };
    }

    resource function post users/[string userId]/messages/[string id]/trash(Xgafv? \$\.xgafv, string? access_token,
            Alt? alt, string? callback, string? fields, string? 'key, string? oauth_token, boolean? prettyPrint,
            string? quotaUser, string? upload_protocol, string? uploadType)
    returns OkMessage {
        return {
            body: {
                id: "1",
                threadId: "1",
                labelIds: ["CUSTOMER"],
                snippet: "snippet",
                historyId: "1",
                payload: {
                    partId: "1",
                    mimeType: "text/plain",
                    filename: "filename",
                    headers: [{name: "name", value: "value"}],
                    body: {size: 1, data: "data"},
                    parts: [
                        {
                            partId: "1",
                            mimeType: "text/plain",
                            filename: "filename",
                            headers: [{name: "name", value: "value"}],
                            body: {size: 1, data: "data"},
                            parts: []
                        }
                    ]
                }
            }
        };
    }

    resource function post users/[string userId]/messages/[string id]/untrash(Xgafv? \$\.xgafv, string? access_token,
            Alt? alt, string? callback, string? fields, string? 'key, string? oauth_token, boolean? prettyPrint,
            string? quotaUser, string? upload_protocol, string? uploadType)
    returns OkMessage {
        return {
            body: {
                id: "1",
                threadId: "1",
                labelIds: ["CUSTOMER"],
                snippet: "snippet",
                historyId: "1",
                payload: {
                    partId: "1",
                    mimeType: "text/plain",
                    filename: "filename",
                    headers: [{name: "name", value: "value"}],
                    body: {size: 1, data: "data"},
                    parts: [
                        {
                            partId: "1",
                            mimeType: "text/plain",
                            filename: "filename",
                            headers: [{name: "name", value: "value"}],
                            body: {size: 1, data: "data"},
                            parts: []
                        }
                    ]
                }
            }
        };
    }

    resource function get users/[string userId]/messages/[string messageId]/attachments/[string id](Xgafv? \$\.xgafv,
            string? access_token, Alt? alt, string? callback, string? fields, string? 'key, string? oauth_token,
            boolean? prettyPrint, string? quotaUser, string? upload_protocol, string? uploadType)
    returns MessagePartBody {
        return {
            attachmentId: "1",
            size: 1,
            data: "data"
        };
    }

    resource function get users/[string userId]/profile(Xgafv? \$\.xgafv, string? access_token, Alt? alt,
            string? callback, string? fields, string? 'key, string? oauth_token, boolean? prettyPrint, string? quotaUser,
            string? upload_protocol, string? uploadType)
    returns Profile {
        return {
            emailAddress: "emailAddress",
            messagesTotal: 1,
            threadsTotal: 1,
            historyId: "1"
        };
    }

    resource function get users/[string userId]/threads(Xgafv? \$\.xgafv, string? access_token, Alt? alt,
            string? callback, string? fields, string? 'key, string? oauth_token, boolean? prettyPrint, string? quotaUser,
            string? upload_protocol, string? uploadType, boolean? includeSpamTrash, string[]? labelIds, int? maxResults,
            string? pageToken, string? q)
    returns ListThreadsResponse {
        return {
            threads: [
                {
                    id: "1",
                    historyId: "1",
                    messages: [
                        {
                            id: "1",
                            threadId: "1"
                        }
                    ]
                }
            ],
            nextPageToken: "nextPageToken"
        };
    }

    resource function get users/[string userId]/threads/[string id](Xgafv? \$\.xgafv, string? access_token, Alt? alt,
            string? callback, string? fields, string? 'key, string? oauth_token, boolean? prettyPrint, string? quotaUser,
            string? upload_protocol, string? uploadType, "full"|"metadata"|"minimal"? format, string[]? metadataHeaders)
    returns MailThread {
        return {
            id: "1",
            historyId: "1",
            messages: [
                {
                    id: "1",
                    threadId: "1",
                    labelIds: ["CUSTOMER"],
                    snippet: "snippet"
                }
            ]
        };
    }

    resource function delete users/[string userId]/threads/[string id](Xgafv? \$\.xgafv, string? access_token, Alt? alt,
            string? callback, string? fields, string? 'key, string? oauth_token, boolean? prettyPrint, string? quotaUser,
            string? upload_protocol, string? uploadType)
    returns http:Ok {
        return http:OK;
    }

    resource function post users/[string userId]/threads/[string id]/modify(Xgafv? \$\.xgafv, string? access_token,
            Alt? alt, string? callback, string? fields, string? 'key, string? oauth_token, boolean? prettyPrint,
            string? quotaUser, string? upload_protocol, string? uploadType, @http:Payload ModifyThreadRequest payload)
    returns OkMailThread {
        return {
            body: {
                id: "1",
                historyId: "1",
                messages: [
                    {
                        id: "1",
                        threadId: "1",
                        labelIds: ["CUSTOMER"],
                        snippet: "snippet"
                    }
                ]
            }
        };
    }

    resource function post users/[string userId]/threads/[string id]/trash(Xgafv? \$\.xgafv, string? access_token,
            Alt? alt, string? callback, string? fields, string? 'key, string? oauth_token, boolean? prettyPrint,
            string? quotaUser, string? upload_protocol, string? uploadType)
    returns OkMailThread {
        return {
            body: {
                id: "1",
                historyId: "1",
                messages: [
                    {
                        id: "1",
                        threadId: "1",
                        labelIds: ["CUSTOMER"],
                        snippet: "snippet"
                    }
                ]
            }
        };
    }

    resource function post users/[string userId]/threads/[string id]/untrash(Xgafv? \$\.xgafv, string? access_token,
            Alt? alt, string? callback, string? fields, string? 'key, string? oauth_token, boolean? prettyPrint,
            string? quotaUser, string? upload_protocol, string? uploadType)
    returns OkMailThread {
        return {
            body: {
                id: "1",
                historyId: "1",
                messages: [
                    {
                        id: "1",
                        threadId: "1",
                        labelIds: ["CUSTOMER"],
                        snippet: "snippet"
                    }
                ]
            }
        };
    }
}

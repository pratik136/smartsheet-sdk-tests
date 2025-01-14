# WireMock SmartSheet Server
A custom WireMock JAR with SmartSheet specific configuration

## Installation

Java Runtime Environment 8 is required to run WireMock

## How to Launch

Run the launch.sh script in a bash console:

```bash
$ sh launch.sh
```

This will launch a fully configured WireMock server running on port 8082.

## How to Use

The scenarios listed in the scenario section below can be called as specified. For example, the 'List Sheets' endpoint can be called by making a GET request to http://localhost:8082/sheets.

# Configured Scenarios
* [List Automation Rules](#list-automation-rules)
* [Get Automation Rule](#get-automation-rule)
* [Update Automation Rule](#update-automation-rule)
* [Delete Automation Rule](#delete-automation-rule)
* [Update Column - Change Type - Picklist](#update-column---change-type---picklist)
* [Update Column - Change Type - Contact List](#update-column---change-type---contact-list)
* [Change Agent Header - Can Be Passed](#change-agent-header---can-be-passed)
* [Assume User - Can Be Set](#assume-user---can-be-set)
* [Move row to another sheet](#move-row-to-another-sheet)
* [Copy row to another sheet](#copy-row-to-another-sheet)
* [Add Rows - Assign Values - String](#add-rows---assign-values---string)
* [Add Rows - Assign Values - Int](#add-rows---assign-values---int)
* [Add Rows - Assign Values - Bool](#add-rows---assign-values---bool)
* [Add Rows - Assign Formulae](#add-rows---assign-formulae)
* [Add Rows - Assign Values - Hyperlink](#add-rows---assign-values---hyperlink)
* [Add Rows - Assign Values - Hyperlink SheetID](#add-rows---assign-values---hyperlink-sheetid)
* [Add Rows - Assign Values - Hyperlink ReportID](#add-rows---assign-values---hyperlink-reportid)
* [Add Rows - Invalid - Assign Value and Formulae](#add-rows---invalid---assign-value-and-formulae)
* [Add Rows - Invalid - Assign Hyperlink URL and SheetId](#add-rows---invalid---assign-hyperlink-url-and-sheetid)
* [Add Rows - Location - Top](#add-rows---location---top)
* [Add Rows - Location - Bottom](#add-rows---location---bottom)
* [Update Rows - Assign Values - String](#update-rows---assign-values---string)
* [Update Rows - Assign Values - Int](#update-rows---assign-values---int)
* [Update Rows - Assign Values - Bool](#update-rows---assign-values---bool)
* [Update Rows - Assign Formulae](#update-rows---assign-formulae)
* [Update Rows - Assign Values - Hyperlink](#update-rows---assign-values---hyperlink)
* [Update Rows - Assign Values - Hyperlink SheetID](#update-rows---assign-values---hyperlink-sheetid)
* [Update Rows - Assign Values - Hyperlink ReportID](#update-rows---assign-values---hyperlink-reportid)
* [Update Rows - Invalid - Assign Value and Formulae](#update-rows---invalid---assign-value-and-formulae)
* [Update Rows - Invalid - Assign Hyperlink URL and SheetId](#update-rows---invalid---assign-hyperlink-url-and-sheetid)
* [Add Rows - Assign Object Value - Predecessor List](#add-rows---assign-object-value---predecessor-list)
* [Add Rows - Assign Object Value - Predecessor List (using floats)](#add-rows---assign-object-value---predecessor-list-(using-floats))
* [Update Rows - Clear Value - Text Number](#update-rows---clear-value---text-number)
* [Update Rows - Clear Value - Checkbox](#update-rows---clear-value---checkbox)
* [Update Rows - Clear Value - Hyperlink](#update-rows---clear-value---hyperlink)
* [Update Rows - Clear Value - Cell Link](#update-rows---clear-value---cell-link)
* [Update Rows - Clear Value - Predecessor List](#update-rows---clear-value---predecessor-list)
* [Update Rows - Invalid - Assign Hyperlink and Cell Link](#update-rows---invalid---assign-hyperlink-and-cell-link)
* [Update Rows - Location - Top](#update-rows---location---top)
* [Update Rows - Location - Bottom](#update-rows---location---bottom)
* [Serialization - Attachment](#serialization---attachment)
* [Serialization - Home](#serialization---home)
* [Serialization - Groups](#serialization---groups)
* [Serialization - Discussion](#serialization---discussion)
* [Serialization - Contact](#serialization---contact)
* [Serialization - Folder](#serialization---folder)
* [Serialization - Column](#serialization---column)
* [Serialization - UserProfile](#serialization---userprofile)
* [Serialization - Workspace](#serialization---workspace)
* [Serialization - User](#serialization---user)
* [Serialization - Sheet](#serialization---sheet)
* [Serialization - AlternateEmail](#serialization---alternateemail)
* [Serialization - Predecessor](#serialization---predecessor)
* [Serialization - IndexResult](#serialization---indexresult)
* [Serialization - Image](#serialization---image)
* [Serialization - Image Urls](#serialization---image-urls)
* [Serialization - BulkFailure](#serialization---bulkfailure)
* [Serialization - Rows](#serialization---rows)
* [Serialization - Cell Link](#serialization---cell-link)
* [Serialization - Favorite](#serialization---favorite)
* [Serialization - Report](#serialization---report)
* [Serialization - Share](#serialization---share)
* [Serialization - Send via Email](#serialization---send-via-email)
* [Serialization - Row Email](#serialization---row-email)
* [Serialization - Template](#serialization---template)
* [Serialization - Update Request](#serialization---update-request)
* [Serialization - Sent Update Requests](#serialization---sent-update-requests)
* [Serialization - Sheet Settings](#serialization---sheet-settings)
* [Serialization - Container Destination](#serialization---container-destination)
* [Serialization - Cross Sheet Reference](#serialization---cross-sheet-reference)
* [List Sheets - No Params](#list-sheets---no-params)
* [List Sheets - Include Owner Info](#list-sheets---include-owner-info)
* [Create Sheet - Invalid - No Columns](#create-sheet---invalid---no-columns)
* [List Sights](#list-sights)
* [Get Sight](#get-sight)
* [Copy Sight](#copy-sight)
* [Update Sight](#update-sight)
* [Set Sight Publish Status](#set-sight-publish-status)
* [Get Sight Publish Status](#get-sight-publish-status)
* [Delete Sight](#delete-sight)
* [Deactivate user](#deactivate-user)
* [Reactivate user](#reactivate-user)

## List Automation Rules



### Expected Request

#### GET - /sheets/324/automationrules

### Response

#### Status - 200 OK

```json
{
  "pageNumber": 1,
  "pageSize": 100,
  "totalPages": 1,
  "totalCount": 2,
  "data": [
    {
      "id": 284,
      "name": "End Date Changed",
      "enabled": true,
      "createdBy": {
        "name": "John Doe",
        "email": "j.doe@example.com"
      },
      "createdAt": "2018-02-25T23:04:36Z",
      "modifiedBy": {
        "name": "John Doe",
        "email": "j.doe@example.com"
      },
      "modifiedAt": "2018-02-25T23:04:36Z",
      "userCanModify": true,
      "action": {
        "type": "NOTIFICATION_ACTION",
        "frequency": "IMMEDIATELY",
        "message": "",
        "includeAllColumns": true,
        "includeAttachments": true,
        "includeDiscussions": true,
        "notifyAllSharedUsers": true
      }
    },
    {
      "id": 684,
      "name": "Schedule Change Notification",
      "enabled": true,
      "createdBy": {
        "name": "Jane Doe",
        "email": "jane@example.com"
      },
      "createdAt": "2018-02-25T23:02:57Z",
      "modifiedBy": {
        "name": "Jane Doe",
        "email": "jane@example.com"
      },
      "modifiedAt": "2018-02-25T23:02:57Z",
      "userCanModify": true,
      "action": {
        "type": "NOTIFICATION_ACTION",
        "recipients": [
          {
            "email": "j.doe@example.com"
          }
        ],
        "frequency": "DAILY",
        "includeAllColumns": true,
        "includeAttachments": true,
        "includeDiscussions": true,
        "notifyAllSharedUsers": false
      }
    }
  ]
}
```

## Get Automation Rule



### Expected Request

#### GET - /sheets/324/automationrules/284

### Response

#### Status - 200 OK

```json
{
  "id": 284,
  "name": "End Date Changed",
  "enabled": true,
  "createdBy": {
    "name": "John Doe",
    "email": "j.doe@example.com"
  },
  "createdAt": "2018-02-25T23:04:36Z",
  "modifiedBy": {
    "name": "John Doe",
    "email": "j.doe@example.com"
  },
  "modifiedAt": "2018-02-25T23:04:36Z",
  "userCanModify": true,
  "action": {
    "type": "NOTIFICATION_ACTION",
    "frequency": "IMMEDIATELY",
    "message": "",
    "includeAllColumns": true,
    "includeAttachments": true,
    "includeDiscussions": true,
    "notifyAllSharedUsers": true
  }
}
```

## Update Automation Rule



### Expected Request

#### PUT - /sheets/324/automationrules/284

#### Headers

* Content-Type: application/json

#### Body

```json
{
  "action": {
    "frequency": "WEEKLY",
    "recipients": [
      {
        "email": "jane@example.com"
      }
    ],
    "type": "NOTIFICATION_ACTION"
  }
}
```

### Response

#### Status - 200 OK

```json
{
  "id": 284,
  "name": "End Date Changed",
  "enabled": true,
  "createdBy": {
    "name": "John Doe",
    "email": "j.doe@example.com"
  },
  "createdAt": "2018-02-25T23:04:36Z",
  "modifiedBy": {
    "name": "John Doe",
    "email": "j.doe@example.com"
  },
  "modifiedAt": "2018-02-25T23:13:53Z",
  "userCanModify": true,
  "action": {
    "type": "NOTIFICATION_ACTION",
    "recipients": [
      {
        "email": "jane@example.com"
      }
    ],
    "frequency": "WEEKLY",
    "message": "",
    "includeAllColumns": true,
    "includeAttachments": true,
    "includeDiscussions": true,
    "notifyAllSharedUsers": false
  }
}
```

## Delete Automation Rule



### Expected Request

#### DELETE - /sheets/324/automationrules/284

### Response

#### Status - 200 OK

```json
{
  "message": "SUCCESS",
  "resultCode": 0
}
```

## Update Column - Change Type - Picklist

Tests the serialization of a column object and PICKLIST options.

### Expected Request

#### PUT - /sheets/123/columns/234

#### Headers

* Content-Type: application/json

#### Body

```json
{
  "index": 2,
  "title": "Updated Column",
  "type": "PICKLIST",
  "options": [
    "An",
    "updated",
    "column"
  ],
  "width": 200
}
```

### Response

#### Status - 200 OK

```json
{
  "message": "SUCCESS",
  "resultCode": 0,
  "result": {
    "id": 234,
    "index": 2,
    "title": "Updated Column",
    "type": "PICKLIST",
    "options": [
      "An",
      "updated",
      "column"
    ],
    "validation": false,
    "width": 200
  }
}
```

## Update Column - Change Type - Contact List

Tests the serialization of a column object and contact options.

### Expected Request

#### PUT - /sheets/123/columns/234

#### Headers

* Content-Type: application/json

#### Body

```json
{
  "index": 2,
  "title": "Updated Column",
  "type": "CONTACT_LIST",
  "contactOptions": [
    {
      "name": "Some Contact",
      "email": "some.contact@smartsheet.com"
    },
    {
      "name": "Some Other Contact",
      "email": "some.other.contact@smartsheet.com"
    }
  ],
  "width": 200
}
```

### Response

#### Status - 200 OK

```json
{
  "message": "SUCCESS",
  "resultCode": 0,
  "result": {
    "id": 234,
    "index": 2,
    "title": "Updated Column",
    "type": "CONTACT_LIST",
    "contactOptions": [
      {
        "name": "Some Contact",
        "email": "some.contact@smartsheet.com"
      },
      {
        "name": "Some Other Contact",
        "email": "some.other.contact@smartsheet.com"
      }
    ],
    "validation": false,
    "width": 200
  }
}
```

## Change Agent Header - Can Be Passed



### Expected Request

#### POST - /sheets

#### Headers

* Content-Type: application/json
* Smartsheet-Change-Agent: MyChangeAgent

#### Body

```json
{
  "name": "My new sheet",
  "columns": [
    {
      "title": "Col1",
      "primary": true,
      "type": "TEXT_NUMBER"
    }
  ]
}
```

### Response

#### Status - 200 OK

```json
{
  "message": "SUCCESS",
  "resultCode": 0,
  "result": {
    "id": 12345,
    "name": "My new sheet",
    "accessLevel": "OWNER",
    "permalink": "https://app.smartsheet.com/b/home?lx=HrZUjI0TKih546aFyBaeoA",
    "columns": [
      {
        "id": 23456,
        "index": 0,
        "title": "Col1",
        "type": "TEXT_NUMBER",
        "primary": true,
        "validation": false,
        "width": 150
      }
    ]
  }
}
```

## Assume User - Can Be Set



### Expected Request

#### GET - /sheets/123

#### Headers

* Assume-User: john.doe%40smartsheet.com

### Response

#### Status - 200 OK

```json
{
  "id": 123,
  "name": "New Sheet",
  "version": 73,
  "totalRowCount": 6,
  "accessLevel": "OWNER",
  "effectiveAttachmentOptions": [
    "FILE",
    "DROPBOX",
    "ONEDRIVE",
    "GOOGLE_DRIVE",
    "EGNYTE",
    "BOX_COM",
    "EVERNOTE"
  ],
  "ganttEnabled": false,
  "dependenciesEnabled": false,
  "resourceManagementEnabled": false,
  "cellImageUploadEnabled": true,
  "favorite": true,
  "showParentRowsForFilters": false,
  "userSettings": {
    "criticalPathEnabled": false,
    "displaySummaryTasks": true,
    "appliedSheetFilterId": 3290686083622788
  },
  "permalink": "https://app.smartsheet.com/b/home?lx=d2k4ve3v9X3S1fjXxNDLw",
  "createdAt": "2017-11-03T15:27:29Z",
  "modifiedAt": "2018-03-02T23:50:35Z",
  "columns": [
    {
      "id": 234,
      "index": 0,
      "title": "Primary Column",
      "type": "TEXT_NUMBER",
      "primary": true,
      "validation": false,
      "width": 150
    }
  ],
  "rows": [
    {
      "id": 345,
      "rowNumber": 1,
      "expanded": true,
      "createdAt": "2018-02-02T23:32:35Z",
      "modifiedAt": "2018-02-09T17:08:41Z",
      "cells": [
        {
          "columnId": 234,
          "value": "Some Value",
          "displayValue": "Some Value"
        }
      ]
    }
  ]
}
```

## Move row to another sheet

Move single row to another sheet

### Expected Request

#### POST - /sheets/1228520367122308/rows/move

#### Headers

* Content-Type: application/json

#### Body

```json
{
  "rowIds": [
    1765250516182916
  ],
  "to": {
    "sheetId": 799249123305348
  }
}
```

### Response

#### Status - 200 OK

```json
{
  "destinationSheetId": 799249123305348,
  "rowMappings": [
    {
      "from": 1765250516182916,
      "to": 6754140747523972
    }
  ]
}
```

## Copy row to another sheet

Copy single row to another sheet

### Expected Request

#### POST - /sheets/1228520367122308/rows/copy

#### Headers

* Content-Type: application/json

#### Body

```json
{
  "rowIds": [
    2891150423025540
  ],
  "to": {
    "sheetId": 799249123305348
  }
}
```

### Response

#### Status - 200 OK

```json
{
  "destinationSheetId": 799249123305348,
  "rowMappings": [
    {
      "from": 2891150423025540,
      "to": 1655705329526660
    }
  ]
}
```

## Add Rows - Assign Values - String

Creates new rows containing cells with string values. Returns a valid response with a list of rows.

### Expected Request

#### POST - /sheets/1/rows

#### Headers

* Content-Type: application/json

#### Body

```json
[
  {
    "cells": [
      {
        "columnId": 101,
        "value": "Apple"
      },
      {
        "columnId": 102,
        "value": "Red Fruit"
      }
    ]
  },
  {
    "cells": [
      {
        "columnId": 101,
        "value": "Banana"
      },
      {
        "columnId": 102,
        "value": "Yellow Fruit"
      }
    ]
  }
]
```

### Response

#### Status - 200 OK

```json
{
  "message": "SUCCESS",
  "resultCode": 0,
  "result": [
    {
      "id": 10,
      "rowNumber": 1,
      "expanded": true,
      "createdAt": "2017-10-17T23:16:08Z",
      "modifiedAt": "2017-10-17T23:20:18Z",
      "cells": [
        {
          "columnId": 101,
          "value": "Apple",
          "displayValue": "Apple"
        },
        {
          "columnId": 102,
          "value": "Red Fruit",
          "displayValue": "Red Fruit"
        }
      ]
    },
    {
      "id": 11,
      "rowNumber": 2,
      "expanded": true,
      "createdAt": "2017-10-17T23:16:08Z",
      "modifiedAt": "2017-10-17T23:20:18Z",
      "cells": [
        {
          "columnId": 101,
          "value": "Banana",
          "displayValue": "Banana"
        },
        {
          "columnId": 102,
          "value": "Yellow Fruit",
          "displayValue": "Yellow Fruit"
        }
      ]
    }
  ],
  "version": 14
}
```

## Add Rows - Assign Values - Int

Creates new rows containing cells with numerical values. Returns a valid response with a list of rows.

### Expected Request

#### POST - /sheets/1/rows

#### Headers

* Content-Type: application/json

#### Body

```json
[
  {
    "cells": [
      {
        "columnId": 101,
        "value": 100
      },
      {
        "columnId": 102,
        "value": "One Hundred"
      }
    ]
  },
  {
    "cells": [
      {
        "columnId": 101,
        "value": 2.1
      },
      {
        "columnId": 102,
        "value": "Two Point One"
      }
    ]
  }
]
```

### Response

#### Status - 200 OK

```json
{
  "message": "SUCCESS",
  "resultCode": 0,
  "result": [
    {
      "id": 10,
      "rowNumber": 1,
      "expanded": true,
      "createdAt": "2017-10-17T23:16:08Z",
      "modifiedAt": "2017-10-17T23:20:18Z",
      "cells": [
        {
          "columnId": 101,
          "value": 100,
          "displayValue": "100"
        },
        {
          "columnId": 102,
          "value": "One Hundred",
          "displayValue": "One Hundred"
        }
      ]
    },
    {
      "id": 11,
      "rowNumber": 2,
      "siblingId": 10,
      "expanded": true,
      "createdAt": "2017-10-17T23:16:08Z",
      "modifiedAt": "2017-10-17T23:20:18Z",
      "cells": [
        {
          "columnId": 101,
          "value": 2.1,
          "displayValue": "2.1"
        },
        {
          "columnId": 102,
          "value": "Two Point One",
          "displayValue": "Two Point One"
        }
      ]
    }
  ],
  "version": 7
}
```

## Add Rows - Assign Values - Bool

Creates new rows containing cells with boolean values. Returns a valid response with a list of rows.

### Expected Request

#### POST - /sheets/1/rows

#### Headers

* Content-Type: application/json

#### Body

```json
[
  {
    "cells": [
      {
        "columnId": 101,
        "value": true
      },
      {
        "columnId": 102,
        "value": "This is True"
      }
    ]
  },
  {
    "cells": [
      {
        "columnId": 101,
        "value": false
      },
      {
        "columnId": 102,
        "value": "This is False"
      }
    ]
  }
]
```

### Response

#### Status - 200 OK

```json
{
  "message": "SUCCESS",
  "resultCode": 0,
  "result": [
    {
      "id": 10,
      "rowNumber": 1,
      "expanded": true,
      "createdAt": "2017-10-17T23:16:08Z",
      "modifiedAt": "2017-10-17T23:20:18Z",
      "cells": [
        {
          "columnId": 101,
          "value": true,
          "displayValue": "true"
        },
        {
          "columnId": 102,
          "value": "This is True",
          "displayValue": "This is True"
        }
      ]
    },
    {
      "id": 11,
      "rowNumber": 2,
      "siblingId": 10,
      "expanded": true,
      "createdAt": "2017-10-17T23:16:08Z",
      "modifiedAt": "2017-10-17T23:20:18Z",
      "cells": [
        {
          "columnId": 101,
          "value": false,
          "displayValue": "false"
        },
        {
          "columnId": 102,
          "value": "This is False",
          "displayValue": "This is False"
        }
      ]
    }
  ],
  "version": 7
}
```

## Add Rows - Assign Formulae

Creates new rows containing cells with formulae. Returns a valid response with a list of rows.

### Expected Request

#### POST - /sheets/1/rows

#### Headers

* Content-Type: application/json

#### Body

```json
[
  {
    "cells": [
      {
        "columnId": 101,
        "formula": "=SUM([Column2]3, [Column2]4)*2"
      },
      {
        "columnId": 102,
        "formula": "=SUM([Column2]3, [Column2]3, [Column2]4)"
      }
    ]
  }
]
```

### Response

#### Status - 200 OK

```json
{
  "message": "SUCCESS",
  "resultCode": 0,
  "result": [
    {
      "id": 11,
      "rowNumber": 5,
      "expanded": true,
      "createdAt": "2017-10-18T20:21:51Z",
      "modifiedAt": "2017-10-18T20:32:40Z",
      "cells": [
        {
          "columnId": 101,
          "value": 14,
          "displayValue": "14",
          "formula": "=SUM([Column2]3, [Column2]4)*2"
        },
        {
          "columnId": 102,
          "value": 10,
          "displayValue": "10",
          "formula": "=SUM([Column2]3, [Column2]3, [Column2]4)"
        }
      ]
    }
  ],
  "version": 8
}
```

## Add Rows - Assign Values - Hyperlink

Creates new rows containing cells with hyperlink objects to url and string values. Returns a valid response with a list of rows.

### Expected Request

#### POST - /sheets/1/rows

#### Headers

* Content-Type: application/json

#### Body

```json
[
  {
    "cells": [
      {
        "columnId": 101,
        "value": "Google",
        "hyperlink": {
          "url": "http://google.com"
        }
      },
      {
        "columnId": 102,
        "value": "Bing",
        "hyperlink": {
          "url": "http://bing.com"
        }
      }
    ]
  }
]
```

### Response

#### Status - 200 OK

```json
{
  "message": "SUCCESS",
  "resultCode": 0,
  "result": [
    {
      "id": 10,
      "rowNumber": 1,
      "expanded": true,
      "createdAt": "2017-10-17T23:16:08Z",
      "modifiedAt": "2017-10-17T23:20:18Z",
      "cells": [
        {
          "columnId": 101,
          "value": "Google",
          "displayValue": "Google",
          "hyperlink": {
            "url": "http://google.com"
          }
        },
        {
          "columnId": 102,
          "value": "Bing",
          "displayValue": "Bing",
          "hyperlink": {
            "url": "http://bing.com"
          }
        }
      ]
    }
  ],
  "version": 7
}
```

## Add Rows - Assign Values - Hyperlink SheetID

Creates new rows containing cells with hyperlink object to sheet and string values. Returns a valid response with a list of rows.

### Expected Request

#### POST - /sheets/1/rows

#### Headers

* Content-Type: application/json

#### Body

```json
[
  {
    "cells": [
      {
        "columnId": 101,
        "value": "Sheet2",
        "hyperlink": {
          "sheetId": 2
        }
      },
      {
        "columnId": 102,
        "value": "Sheet3",
        "hyperlink": {
          "sheetId": 3
        }
      }
    ]
  }
]
```

### Response

#### Status - 200 OK

```json
{
  "message": "SUCCESS",
  "resultCode": 0,
  "result": [
    {
      "id": 10,
      "rowNumber": 1,
      "expanded": true,
      "createdAt": "2017-10-17T23:16:08Z",
      "modifiedAt": "2017-10-17T23:20:18Z",
      "cells": [
        {
          "columnId": 101,
          "value": "Sheet2",
          "displayValue": "Sheet2",
          "hyperlink": {
            "sheetId": 2
          }
        },
        {
          "columnId": 102,
          "value": "Sheet3",
          "displayValue": "Sheet3",
          "hyperlink": {
            "sheetId": 3
          }
        }
      ]
    }
  ],
  "version": 7
}
```

## Add Rows - Assign Values - Hyperlink ReportID

Creates new rows containing cells with hyperlink object to report and string values. Returns a valid response with a list of rows.

### Expected Request

#### POST - /sheets/1/rows

#### Headers

* Content-Type: application/json

#### Body

```json
[
  {
    "cells": [
      {
        "columnId": 101,
        "value": "Report9",
        "hyperlink": {
          "reportId": 9
        }
      },
      {
        "columnId": 102,
        "value": "Report8",
        "hyperlink": {
          "reportId": 8
        }
      }
    ]
  }
]
```

### Response

#### Status - 200 OK

```json
{
  "message": "SUCCESS",
  "resultCode": 0,
  "result": [
    {
      "id": 10,
      "rowNumber": 1,
      "expanded": true,
      "createdAt": "2017-10-17T23:16:08Z",
      "modifiedAt": "2017-10-17T23:20:18Z",
      "cells": [
        {
          "columnId": 101,
          "value": "Report9",
          "displayValue": "Report9",
          "hyperlink": {
            "reportId": 9
          }
        },
        {
          "columnId": 102,
          "value": "Report8",
          "displayValue": "Report8",
          "hyperlink": {
            "reportId": 8
          }
        }
      ]
    }
  ],
  "version": 7
}
```

## Add Rows - Invalid - Assign Value and Formulae

Creates new rows containing cells with values and formulae. Returns a bad request failure response

### Expected Request

#### POST - /sheets/1/rows

#### Headers

* Content-Type: application/json

#### Body

```json
[
  {
    "cells": [
      {
        "columnId": 101,
        "formula": "=SUM([Column2]3, [Column2]4)*2",
        "value": "20"
      },
      {
        "columnId": 102,
        "formula": "=SUM([Column2]3, [Column2]3, [Column2]4)"
      }
    ]
  }
]
```

### Response

#### Status - 400 Bad Request

```json
{
  "errorCode": 1163,
  "message": "If cell.formula is specified, then value, objectValue, image, hyperlink, and linkInFromCell must not be specified.",
  "refId": "123abc",
  "detail": {
    "index": 0,
    "rowId": 10
  }
}
```

## Add Rows - Invalid - Assign Hyperlink URL and SheetId

Creates new rows containing cells with hyperlink object of url and sheet. Returns a bad request failure response

### Expected Request

#### POST - /sheets/1/rows

#### Headers

* Content-Type: application/json

#### Body

```json
[
  {
    "cells": [
      {
        "columnId": 101,
        "value": "Google",
        "hyperlink": {
          "url": "http://google.com",
          "sheetId": 2
        }
      },
      {
        "columnId": 102,
        "value": "Bing",
        "hyperlink": {
          "url": "http://bing.com"
        }
      }
    ]
  }
]
```

### Response

#### Status - 400 Bad Request

```json
{
  "errorCode": 1112,
  "message": "hyperlink.url must be null for sheet, report, or Sight hyperlinks.",
  "refId": "dbwn8owxskam",
  "detail": {
    "index": 0
  }
}
```

## Add Rows - Location - Top

Creates new rows containing cells with string values to be set as the top row. Returns a valid response with a list of rows.

### Expected Request

#### POST - /sheets/1/rows

#### Headers

* Content-Type: application/json

#### Body

```json
[
  {
    "toTop": true,
    "cells": [
      {
        "columnId": 101,
        "value": "Apple"
      },
      {
        "columnId": 102,
        "value": "Red Fruit"
      }
    ]
  }
]
```

### Response

#### Status - 200 OK

```json
{
  "message": "SUCCESS",
  "resultCode": 0,
  "result": [
    {
      "id": 10,
      "rowNumber": 1,
      "expanded": true,
      "createdAt": "2017-10-17T23:16:08Z",
      "modifiedAt": "2017-10-17T23:20:18Z",
      "cells": [
        {
          "columnId": 101,
          "value": "Apple",
          "displayValue": "Apple"
        },
        {
          "columnId": 102,
          "value": "Red Fruit",
          "displayValue": "Red Fruit"
        }
      ]
    }
  ],
  "version": 14
}
```

## Add Rows - Location - Bottom

Creates new rows containing cells with string values to be set as the bottom row. Returns a valid response with a list of rows.

### Expected Request

#### POST - /sheets/1/rows

#### Headers

* Content-Type: application/json

#### Body

```json
[
  {
    "toBottom": true,
    "cells": [
      {
        "columnId": 101,
        "value": "Apple"
      },
      {
        "columnId": 102,
        "value": "Red Fruit"
      }
    ]
  }
]
```

### Response

#### Status - 200 OK

```json
{
  "message": "SUCCESS",
  "resultCode": 0,
  "result": [
    {
      "id": 10,
      "rowNumber": 100,
      "expanded": true,
      "createdAt": "2017-10-17T23:16:08Z",
      "modifiedAt": "2017-10-17T23:20:18Z",
      "cells": [
        {
          "columnId": 101,
          "value": "Apple",
          "displayValue": "Apple"
        },
        {
          "columnId": 102,
          "value": "Red Fruit",
          "displayValue": "Red Fruit"
        }
      ]
    }
  ],
  "version": 14
}
```

## Update Rows - Assign Values - String

Updates rows with cells containing string values. Returns a valid response with a list of rows.

### Expected Request

#### PUT - /sheets/1/rows

#### Headers

* Content-Type: application/json

#### Body

```json
[
  {
    "id": 10,
    "cells": [
      {
        "columnId": 101,
        "value": "Apple"
      },
      {
        "columnId": 102,
        "value": "Red Fruit"
      }
    ]
  },
  {
    "id": 11,
    "cells": [
      {
        "columnId": 101,
        "value": "Banana"
      },
      {
        "columnId": 102,
        "value": "Yellow Fruit"
      }
    ]
  }
]
```

### Response

#### Status - 200 OK

```json
{
  "message": "SUCCESS",
  "resultCode": 0,
  "result": [
    {
      "id": 10,
      "rowNumber": 1,
      "expanded": true,
      "createdAt": "2017-10-17T23:16:08Z",
      "modifiedAt": "2017-10-17T23:20:18Z",
      "cells": [
        {
          "columnId": 101,
          "value": "Apple",
          "displayValue": "Apple"
        },
        {
          "columnId": 102,
          "value": "Red Fruit",
          "displayValue": "Red Fruit"
        }
      ]
    },
    {
      "id": 11,
      "rowNumber": 2,
      "siblingId": 10,
      "expanded": true,
      "createdAt": "2017-10-17T23:16:08Z",
      "modifiedAt": "2017-10-17T23:20:18Z",
      "cells": [
        {
          "columnId": 101,
          "value": "Banana",
          "displayValue": "Banana"
        },
        {
          "columnId": 102,
          "value": "Yellow Fruit",
          "displayValue": "Yellow Fruit"
        }
      ]
    }
  ],
  "version": 7
}
```

## Update Rows - Assign Values - Int

Updates rows with cells containing numerical values. Returns a valid response with a list of rows.

### Expected Request

#### PUT - /sheets/1/rows

#### Headers

* Content-Type: application/json

#### Body

```json
[
  {
    "id": 10,
    "cells": [
      {
        "columnId": 101,
        "value": 100
      },
      {
        "columnId": 102,
        "value": "One Hundred"
      }
    ]
  },
  {
    "id": 11,
    "cells": [
      {
        "columnId": 101,
        "value": 2.1
      },
      {
        "columnId": 102,
        "value": "Two Point One"
      }
    ]
  }
]
```

### Response

#### Status - 200 OK

```json
{
  "message": "SUCCESS",
  "resultCode": 0,
  "result": [
    {
      "id": 10,
      "rowNumber": 1,
      "expanded": true,
      "createdAt": "2017-10-17T23:16:08Z",
      "modifiedAt": "2017-10-17T23:20:18Z",
      "cells": [
        {
          "columnId": 101,
          "value": 100,
          "displayValue": "100"
        },
        {
          "columnId": 102,
          "value": "One Hundred",
          "displayValue": "One Hundred"
        }
      ]
    },
    {
      "id": 11,
      "rowNumber": 2,
      "siblingId": 10,
      "expanded": true,
      "createdAt": "2017-10-17T23:16:08Z",
      "modifiedAt": "2017-10-17T23:20:18Z",
      "cells": [
        {
          "columnId": 101,
          "value": 2.1,
          "displayValue": "2.1"
        },
        {
          "columnId": 102,
          "value": "Two Point One",
          "displayValue": "Two Point One"
        }
      ]
    }
  ],
  "version": 7
}
```

## Update Rows - Assign Values - Bool

Updates rows with cells containing boolean values. Returns a valid response with a list of rows.

### Expected Request

#### PUT - /sheets/1/rows

#### Headers

* Content-Type: application/json

#### Body

```json
[
  {
    "id": 10,
    "cells": [
      {
        "columnId": 101,
        "value": true
      },
      {
        "columnId": 102,
        "value": "This is True"
      }
    ]
  },
  {
    "id": 11,
    "cells": [
      {
        "columnId": 101,
        "value": false
      },
      {
        "columnId": 102,
        "value": "This is False"
      }
    ]
  }
]
```

### Response

#### Status - 200 OK

```json
{
  "message": "SUCCESS",
  "resultCode": 0,
  "result": [
    {
      "id": 10,
      "rowNumber": 1,
      "expanded": true,
      "createdAt": "2017-10-17T23:16:08Z",
      "modifiedAt": "2017-10-17T23:20:18Z",
      "cells": [
        {
          "columnId": 101,
          "value": true,
          "displayValue": "true"
        },
        {
          "columnId": 102,
          "value": "This is True",
          "displayValue": "This is True"
        }
      ]
    },
    {
      "id": 11,
      "rowNumber": 2,
      "siblingId": 10,
      "expanded": true,
      "createdAt": "2017-10-17T23:16:08Z",
      "modifiedAt": "2017-10-17T23:20:18Z",
      "cells": [
        {
          "columnId": 101,
          "value": false,
          "displayValue": "false"
        },
        {
          "columnId": 102,
          "value": "This is False",
          "displayValue": "This is False"
        }
      ]
    }
  ],
  "version": 7
}
```

## Update Rows - Assign Formulae

Updates rows with cells containing formulae. Returns a valid response with a list of rows.

### Expected Request

#### PUT - /sheets/1/rows

#### Headers

* Content-Type: application/json

#### Body

```json
[
  {
    "id": 11,
    "cells": [
      {
        "columnId": 101,
        "formula": "=SUM([Column2]3, [Column2]4)*2"
      },
      {
        "columnId": 102,
        "formula": "=SUM([Column2]3, [Column2]3, [Column2]4)"
      }
    ]
  }
]
```

### Response

#### Status - 200 OK

```json
{
  "message": "SUCCESS",
  "resultCode": 0,
  "result": [
    {
      "id": 11,
      "rowNumber": 5,
      "expanded": true,
      "createdAt": "2017-10-18T20:21:51Z",
      "modifiedAt": "2017-10-18T20:32:40Z",
      "cells": [
        {
          "columnId": 101,
          "value": 14,
          "displayValue": "14",
          "formula": "=SUM([Column2]3, [Column2]4)*2"
        },
        {
          "columnId": 102,
          "value": 10,
          "displayValue": "10",
          "formula": "=SUM([Column2]3, [Column2]3, [Column2]4)"
        }
      ]
    }
  ],
  "version": 8
}
```

## Update Rows - Assign Values - Hyperlink

Updates rows with cells containing hyperlink objects to url and string values. Returns a valid response with a list of rows.

### Expected Request

#### PUT - /sheets/1/rows

#### Headers

* Content-Type: application/json

#### Body

```json
[
  {
    "id": 10,
    "cells": [
      {
        "columnId": 101,
        "value": "Google",
        "hyperlink": {
          "url": "http://google.com"
        }
      },
      {
        "columnId": 102,
        "value": "Bing",
        "hyperlink": {
          "url": "http://bing.com"
        }
      }
    ]
  }
]
```

### Response

#### Status - 200 OK

```json
{
  "message": "SUCCESS",
  "resultCode": 0,
  "result": [
    {
      "id": 10,
      "rowNumber": 1,
      "expanded": true,
      "createdAt": "2017-10-17T23:16:08Z",
      "modifiedAt": "2017-10-17T23:20:18Z",
      "cells": [
        {
          "columnId": 101,
          "value": "Google",
          "displayValue": "Google",
          "hyperlink": {
            "url": "http://google.com"
          }
        },
        {
          "columnId": 102,
          "value": "Bing",
          "displayValue": "Bing",
          "hyperlink": {
            "url": "http://bing.com"
          }
        }
      ]
    }
  ],
  "version": 7
}
```

## Update Rows - Assign Values - Hyperlink SheetID

Updates rows with cells containing hyperlink object to sheet and string values. Returns a valid response with a list of rows.

### Expected Request

#### PUT - /sheets/1/rows

#### Headers

* Content-Type: application/json

#### Body

```json
[
  {
    "id": 10,
    "cells": [
      {
        "columnId": 101,
        "value": "Sheet2",
        "hyperlink": {
          "sheetId": 2
        }
      },
      {
        "columnId": 102,
        "value": "Sheet3",
        "hyperlink": {
          "sheetId": 3
        }
      }
    ]
  }
]
```

### Response

#### Status - 200 OK

```json
{
  "message": "SUCCESS",
  "resultCode": 0,
  "result": [
    {
      "id": 10,
      "rowNumber": 1,
      "expanded": true,
      "createdAt": "2017-10-17T23:16:08Z",
      "modifiedAt": "2017-10-17T23:20:18Z",
      "cells": [
        {
          "columnId": 101,
          "value": "Sheet2",
          "displayValue": "Sheet2",
          "hyperlink": {
            "sheetId": 2
          }
        },
        {
          "columnId": 102,
          "value": "Sheet3",
          "displayValue": "Sheet3",
          "hyperlink": {
            "sheetId": 3
          }
        }
      ]
    }
  ],
  "version": 7
}
```

## Update Rows - Assign Values - Hyperlink ReportID

Updates rows with cells containing hyperlink object to report and string values. Returns a valid response with a list of rows.

### Expected Request

#### PUT - /sheets/1/rows

#### Headers

* Content-Type: application/json

#### Body

```json
[
  {
    "id": 10,
    "cells": [
      {
        "columnId": 101,
        "value": "Report9",
        "hyperlink": {
          "reportId": 9
        }
      },
      {
        "columnId": 102,
        "value": "Report8",
        "hyperlink": {
          "reportId": 8
        }
      }
    ]
  }
]
```

### Response

#### Status - 200 OK

```json
{
  "message": "SUCCESS",
  "resultCode": 0,
  "result": [
    {
      "id": 10,
      "rowNumber": 1,
      "expanded": true,
      "createdAt": "2017-10-17T23:16:08Z",
      "modifiedAt": "2017-10-17T23:20:18Z",
      "cells": [
        {
          "columnId": 101,
          "value": "Report9",
          "displayValue": "Report9",
          "hyperlink": {
            "reportId": 9
          }
        },
        {
          "columnId": 102,
          "value": "Report8",
          "displayValue": "Report8",
          "hyperlink": {
            "reportId": 8
          }
        }
      ]
    }
  ],
  "version": 7
}
```

## Update Rows - Invalid - Assign Value and Formulae

Updates rows with cells containing values and formulae. Returns a bad request failure response

### Expected Request

#### PUT - /sheets/1/rows

#### Headers

* Content-Type: application/json

#### Body

```json
[
  {
    "id": 10,
    "cells": [
      {
        "columnId": 101,
        "formula": "=SUM([Column2]3, [Column2]4)*2",
        "value": "20"
      },
      {
        "columnId": 102,
        "formula": "=SUM([Column2]3, [Column2]3, [Column2]4)"
      }
    ]
  }
]
```

### Response

#### Status - 400 Bad Request

```json
{
  "errorCode": 1163,
  "message": "If cell.formula is specified, then value, objectValue, image, hyperlink, and linkInFromCell must not be specified.",
  "refId": "123abc",
  "detail": {
    "index": 0,
    "rowId": 10
  }
}
```

## Update Rows - Invalid - Assign Hyperlink URL and SheetId

Updates rows with cells containing hyperlink object of url and sheet. Returns a bad request failure response

### Expected Request

#### PUT - /sheets/1/rows

#### Headers

* Content-Type: application/json

#### Body

```json
[
  {
    "id": 10,
    "cells": [
      {
        "columnId": 101,
        "value": "Google",
        "hyperlink": {
          "url": "http://google.com",
          "sheetId": 2
        }
      },
      {
        "columnId": 102,
        "value": "Bing",
        "hyperlink": {
          "url": "http://bing.com"
        }
      }
    ]
  }
]
```

### Response

#### Status - 400 Bad Request

```json
{
  "errorCode": 1112,
  "message": "hyperlink.url must be null for sheet, report, or Sight hyperlinks.",
  "refId": "dbwn8owxskam",
  "detail": {
    "index": 0,
    "rowId": 10
  }
}
```

## Add Rows - Assign Object Value - Predecessor List

Tests the predecessor list object type. Verifies extra fields (value, formula) are not set.

### Expected Request

#### POST - /sheets/1/rows

#### Headers

* Content-Type: application/json

#### Body

```json
[
  {
    "cells": [
      {
        "columnId": 101,
        "objectValue": {
          "objectType": "PREDECESSOR_LIST",
          "predecessors": [
            {
              "rowId": 10,
              "type": "FS",
              "lag": {
                "objectType": "DURATION",
                "days": 2,
                "hours": 4
              }
            }
          ]
        }
      }
    ]
  }
]
```

### Response

#### Status - 200 OK

```json
{
  "message": "SUCCESS",
  "resultCode": 0,
  "result": [
    {
      "id": 11,
      "sheetId": 1,
      "rowNumber": 2,
      "siblingId": 10,
      "expanded": true,
      "createdAt": "2017-11-02T20:58:34Z",
      "modifiedAt": "2017-11-02T20:58:34Z",
      "cells": [
        {
          "columnId": 102,
          "value": "2017-11-07T13:00:00",
          "formula": "=CALCSTART(Duration3, Start2, Finish2, 0, 72000000)"
        },
        {
          "columnId": 101,
          "value": "2FS +2d 4h",
          "displayValue": "2FS +2d 4h"
        }
      ]
    }
  ],
  "version": 5
}
```

## Add Rows - Assign Object Value - Predecessor List (using floats)

Tests the predecessor list object type. Verifies extra fields (value, formula) are not set.

### Expected Request

#### POST - /sheets/1/rows

#### Headers

* Content-Type: application/json

#### Body

```json
[
  {
    "cells": [
      {
        "columnId": 101,
        "objectValue": {
          "objectType": "PREDECESSOR_LIST",
          "predecessors": [
            {
              "rowId": 10,
              "type": "FS",
              "lag": {
                "objectType": "DURATION",
                "days": 2.5
              }
            }
          ]
        }
      }
    ]
  }
]
```

### Response

#### Status - 200 OK

```json
{
  "message": "SUCCESS",
  "resultCode": 0,
  "result": [
    {
      "id": 11,
      "sheetId": 1,
      "rowNumber": 2,
      "siblingId": 10,
      "expanded": true,
      "createdAt": "2017-11-02T20:58:34Z",
      "modifiedAt": "2017-11-02T20:58:34Z",
      "cells": [
        {
          "columnId": 102,
          "value": "2017-11-07T13:00:00",
          "formula": "=CALCSTART(Duration3, Start2, Finish2, 0, 72000000)"
        },
        {
          "columnId": 101,
          "value": "2FS +2.5d",
          "displayValue": "2FS +2.5d"
        }
      ]
    }
  ],
  "version": 5
}
```

## Update Rows - Clear Value - Text Number

Tests the ability to send an empty string to clear a text/number cell value

### Expected Request

#### PUT - /sheets/1/rows

#### Headers

* Content-Type: application/json

#### Body

```json
[
  {
    "id": 10,
    "cells": [
      {
        "columnId": 101,
        "value": ""
      }
    ]
  }
]
```

### Response

#### Status - 200 OK

```json
{
  "message": "SUCCESS",
  "resultCode": 0,
  "result": [
    {
      "id": 10,
      "rowNumber": 1,
      "expanded": true,
      "createdAt": "2017-11-03T15:31:33Z",
      "modifiedAt": "2017-11-03T15:43:27Z",
      "cells": [
        {
          "columnId": 101
        }
      ]
    }
  ],
  "version": 8
}
```

## Update Rows - Clear Value - Checkbox

Tests the ability to send an empty string to clear a cell value in a checkbox column. The cell will be set to false rather than cleared

### Expected Request

#### PUT - /sheets/1/rows

#### Headers

* Content-Type: application/json

#### Body

```json
[
  {
    "id": 10,
    "cells": [
      {
        "columnId": 101,
        "value": ""
      }
    ]
  }
]
```

### Response

#### Status - 200 OK

```json
{
  "message": "SUCCESS",
  "resultCode": 0,
  "result": [
    {
      "id": 10,
      "rowNumber": 1,
      "expanded": true,
      "createdAt": "2017-11-03T15:31:33Z",
      "modifiedAt": "2017-11-03T15:43:27Z",
      "cells": [
        {
          "columnId": 101,
          "value": false
        }
      ]
    }
  ],
  "version": 8
}
```

## Update Rows - Clear Value - Hyperlink

Tests the ability to to clear a cell with a hyper link.

### Expected Request

#### PUT - /sheets/1/rows

#### Headers

* Content-Type: application/json

#### Body

```json
[
  {
    "id": 10,
    "cells": [
      {
        "columnId": 101,
        "value": "",
        "hyperlink": null
      }
    ]
  }
]
```

### Response

#### Status - 200 OK

```json
{
  "message": "SUCCESS",
  "resultCode": 0,
  "result": [
    {
      "id": 10,
      "rowNumber": 1,
      "expanded": true,
      "createdAt": "2017-11-03T15:31:33Z",
      "modifiedAt": "2017-11-03T15:43:27Z",
      "cells": [
        {
          "columnId": 101
        }
      ]
    }
  ],
  "version": 8
}
```

## Update Rows - Clear Value - Cell Link

Tests the ability to to clear a cell with a cell link.

### Expected Request

#### PUT - /sheets/1/rows

#### Headers

* Content-Type: application/json

#### Body

```json
[
  {
    "id": 10,
    "cells": [
      {
        "columnId": 101,
        "value": "",
        "linkInFromCell": null
      }
    ]
  }
]
```

### Response

#### Status - 200 OK

```json
{
  "message": "SUCCESS",
  "resultCode": 0,
  "result": [
    {
      "id": 10,
      "rowNumber": 1,
      "expanded": true,
      "createdAt": "2017-11-03T15:31:33Z",
      "modifiedAt": "2017-11-03T15:43:27Z",
      "cells": [
        {
          "columnId": 101
        }
      ]
    }
  ],
  "version": 8
}
```

## Update Rows - Clear Value - Predecessor List

Verifies that it is possible to clear a predecessor list using the update rows endpoint

### Expected Request

#### PUT - /sheets/1/rows

#### Headers

* Content-Type: application/json

#### Body

```json
[
  {
    "id": 10,
    "cells": [
      {
        "columnId": 123,
        "value": null
      }
    ]
  }
]
```

### Response

#### Status - 200 OK

```json
{
  "message": "SUCCESS",
  "resultCode": 0,
  "result": [
    {
      "id": 10,
      "rowNumber": 1,
      "siblingId": 234,
      "expanded": true,
      "createdAt": "2017-11-14T21:35:00Z",
      "modifiedAt": "2018-02-17T16:37:44Z",
      "cells": [
        {
          "columnId": 123
        }
      ]
    }
  ],
  "version": 2
}
```

## Update Rows - Invalid - Assign Hyperlink and Cell Link

Attempts to assign both a hyperlink and cell link to a cell

### Expected Request

#### PUT - /sheets/1/rows

#### Headers

* Content-Type: application/json

#### Body

```json
[
  {
    "id": 10,
    "cells": [
      {
        "columnId": 101,
        "value": "",
        "linkInFromCell": {
          "sheetId": 2,
          "rowId": 20,
          "columnId": 201
        },
        "hyperlink": {
          "url": "www.google.com"
        }
      }
    ]
  }
]
```

### Response

#### Status - 400 Bad Request

```json
{
  "errorCode": 1109,
  "message": "Only one of cell.hyperlink or cell.linkInFromCell may be non-null.",
  "refId": "4ns6urv44dgrw",
  "detail": {
    "index": 0,
    "rowId": 10
  }
}
```

## Update Rows - Location - Top

Move rows containing cells with string values to the top. Returns a valid response with a list of rows.

### Expected Request

#### PUT - /sheets/1/rows

#### Headers

* Content-Type: application/json

#### Body

```json
[
  {
    "id": 10,
    "toTop": true
  }
]
```

### Response

#### Status - 200 OK

```json
{
  "message": "SUCCESS",
  "resultCode": 0,
  "result": [
    {
      "id": 10,
      "rowNumber": 1,
      "expanded": true,
      "createdAt": "2017-10-17T23:16:08Z",
      "modifiedAt": "2017-10-17T23:20:18Z",
      "cells": [
        {
          "columnId": 101,
          "value": "Apple",
          "displayValue": "Apple"
        },
        {
          "columnId": 102,
          "value": "Red Fruit",
          "displayValue": "Red Fruit"
        }
      ]
    }
  ],
  "version": 14
}
```

## Update Rows - Location - Bottom

Moves rows containing cells with string values to the bottom. Returns a valid response with a list of rows.

### Expected Request

#### PUT - /sheets/1/rows

#### Headers

* Content-Type: application/json

#### Body

```json
[
  {
    "id": 10,
    "toBottom": true
  }
]
```

### Response

#### Status - 200 OK

```json
{
  "message": "SUCCESS",
  "resultCode": 0,
  "result": [
    {
      "id": 10,
      "rowNumber": 100,
      "expanded": true,
      "createdAt": "2017-10-17T23:16:08Z",
      "modifiedAt": "2017-10-17T23:20:18Z",
      "cells": [
        {
          "columnId": 101,
          "value": "Apple",
          "displayValue": "Apple"
        },
        {
          "columnId": 102,
          "value": "Red Fruit",
          "displayValue": "Red Fruit"
        }
      ]
    }
  ],
  "version": 14
}
```

## Serialization - Attachment

Validate attachments can be serialized and deserialized

### Expected Request

#### POST - /sheets/1/attachments

#### Headers

* Content-Type: application/json

#### Body

```json
{
  "name": "Search Engine",
  "description": "A popular search engine",
  "attachmentType": "LINK",
  "url": "http://www.google.com"
}
```

### Response

#### Status - 200 OK

```json
{
  "message": "SUCCESS",
  "resultCode": 0,
  "result": {
    "id": 2,
    "name": "Search Engine",
    "description": "A popular search engine",
    "url": "http://www.google.com",
    "attachmentType": "LINK",
    "parentType": "SHEET",
    "parentId": 1,
    "createdBy": {
      "name": "John Doe",
      "email": "john.doe@smartsheet.com"
    },
    "createdAt": "2018-03-09T23:04:12Z"
  },
  "version": 74
}
```

## Serialization - Home

Validates the home object can be deserialized

### Expected Request

#### GET - /home

### Response

#### Status - 200 OK

```json
{
  "sheets": [
    {
      "id": 1,
      "name": "editor share sheet",
      "accessLevel": "EDITOR_SHARE",
      "permalink": "https://app.smartsheet.com/b/home?lx=a",
      "createdAt": "2017-09-21T18:36:23Z",
      "modifiedAt": "2018-03-09T20:40:48Z"
    },
    {
      "id": 2,
      "name": "owner sheet",
      "accessLevel": "OWNER",
      "permalink": "https://app.smartsheet.com/b/home?lx=b",
      "createdAt": "2018-02-02T18:44:43Z",
      "modifiedAt": "2018-02-02T18:44:43Z"
    },
    {
      "id": 3,
      "name": "admin sheet",
      "accessLevel": "ADMIN",
      "permalink": "https://app.smartsheet.com/b/home?lx=c",
      "createdAt": "2017-04-21T18:42:21Z",
      "modifiedAt": "2017-10-11T17:57:21Z"
    }
  ],
  "folders": [
    {
      "id": 4,
      "name": "empty folder",
      "permalink": "https://app.smartsheet.com/b/home?lx=d"
    },
    {
      "id": 5,
      "name": "full folder",
      "permalink": "https://app.smartsheet.com/b/home?lx=e",
      "sheets": [
        {
          "id": 6,
          "name": "folder sheet",
          "accessLevel": "OWNER",
          "permalink": "https://app.smartsheet.com/b/home?lx=f",
          "createdAt": "2017-10-31T18:17:36Z",
          "modifiedAt": "2017-10-31T18:17:36Z"
        }
      ]
    }
  ],
  "reports": [
    {
      "id": 7,
      "name": "admin report",
      "accessLevel": "ADMIN",
      "permalink": "https://app.smartsheet.com/b/home?lx=g"
    },
    {
      "id": 8,
      "name": "editor share report",
      "accessLevel": "EDITOR_SHARE",
      "permalink": "https://app.smartsheet.com/b/home?lx=h"
    },
    {
      "id": 9,
      "name": "owner report",
      "accessLevel": "OWNER",
      "permalink": "https://app.smartsheet.com/b/home?lx=i"
    }
  ],
  "workspaces": [
    {
      "id": 10,
      "name": "workspace",
      "accessLevel": "ADMIN",
      "permalink": "https://app.smartsheet.com/b/home?lx=j",
      "sheets": [
        {
          "id": 11,
          "name": "workspace sheet",
          "accessLevel": "ADMIN",
          "permalink": "https://app.smartsheet.com/b/home?lx=k",
          "createdAt": "2017-08-28T16:45:57Z",
          "modifiedAt": "2017-10-02T19:32:39Z"
        }
      ],
      "folders": [
        {
          "id": 12,
          "name": "workspace folder",
          "permalink": "https://app.smartsheet.com/b/home?lx=l",
          "sheets": [
            {
              "id": 13,
              "name": "workspace folder sheet",
              "accessLevel": "OWNER",
              "favorite": true,
              "permalink": "https://app.smartsheet.com/b/home?lx=m",
              "createdAt": "2017-10-06T21:14:30Z",
              "modifiedAt": "2017-10-06T21:14:30Z"
            }
          ],
          "folders": [
            {
              "id": 14,
              "name": "workspace folder folder",
              "permalink": "https://app.smartsheet.com/b/home?lx=n",
              "sheets": [
                {
                  "id": 15,
                  "name": "workspace folder folder sheet",
                  "accessLevel": "OWNER",
                  "permalink": "https://app.smartsheet.com/b/home?lx=o",
                  "createdAt": "2017-10-06T21:14:30Z",
                  "modifiedAt": "2017-10-06T21:14:30Z"
                }
              ]
            }
          ]
        },
        {
          "id": 16,
          "name": "empty folder",
          "permalink": "https://app.smartsheet.com/b/home?lx=p"
        }
      ]
    }
  ],
  "sights": [
    {
      "id": 17,
      "name": "sight",
      "accessLevel": "OWNER",
      "permalink": "https://app.smartsheet.com/b/home?lx=q",
      "createdAt": "2017-08-29T23:28:35Z",
      "modifiedAt": "2017-08-29T23:28:35Z"
    }
  ]
}
```

## Serialization - Groups

Validates serialization of groups and group member objects

### Expected Request

#### POST - /groups

#### Headers

* Content-Type: application/json

#### Body

```json
{
  "name": "mock api test group",
  "description": "it's a group",
  "members": [
    {
      "email": "john.doe@smartsheet.com"
    },
    {
      "email": "jane.doe@smartsheet.com"
    }
  ]
}
```

### Response

#### Status - 200 OK

```json
{
  "message": "SUCCESS",
  "resultCode": 0,
  "result": {
    "id": 1,
    "name": "mock api test group",
    "description": "it's a group",
    "owner": "john.doe@smartsheet.com",
    "ownerId": 2,
    "members": [
      {
        "id": 2,
        "email": "john.doe@smartsheet.com",
        "firstName": "John",
        "lastName": "Doe",
        "name": "John Doe"
      },
      {
        "id": 3,
        "email": "jane.doe@smartsheet.com",
        "firstName": "Jane",
        "lastName": "Doe",
        "name": "Jane Doe"
      }
    ],
    "createdAt": "2018-03-09T23:51:26Z",
    "modifiedAt": "2018-03-09T23:51:26Z"
  }
}
```

## Serialization - Discussion

Validates serializing discussions and comments

### Expected Request

#### POST - /sheets/1/rows/2/discussions

#### Headers

* Content-Type: application/json

#### Body

```json
{
  "comment": {
    "text": "This is a comment!"
  }
}
```

### Response

#### Status - 200 OK

```json
{
  "message": "SUCCESS",
  "resultCode": 0,
  "result": {
    "id": 1,
    "title": "This is a comment!",
    "comments": [
      {
        "id": 2,
        "text": "This is a comment!",
        "createdBy": {
          "name": "John Doe",
          "email": "john.doe@smartsheet.com"
        },
        "createdAt": "2018-03-16T16:06:52Z",
        "modifiedAt": "2018-03-16T16:06:52Z"
      }
    ],
    "commentCount": 1,
    "lastCommentedAt": "2018-03-16T16:06:52Z",
    "lastCommentedUser": {
      "name": "John Doe",
      "email": "john.doe@smartsheet.com"
    },
    "createdBy": {
      "name": "John Doe",
      "email": "john.doe@smartsheet.com"
    }
  },
  "version": 76
}
```

## Serialization - Contact

Validates deserializing contact object

### Expected Request

#### GET - /contacts/ABC

### Response

#### Status - 200 OK

```json
{
  "id": "ABC",
  "name": "John Doe",
  "email": "john.doe@smartsheet.com"
}
```

## Serialization - Folder

Validates serialization of folder object

### Expected Request

#### POST - /home/folders

#### Headers

* Content-Type: application/json

#### Body

```json
{
  "name": "folder"
}
```

### Response

#### Status - 200 OK

```json
{
  "message": "SUCCESS",
  "resultCode": 0,
  "result": {
    "id": 1,
    "name": "folder",
    "permalink": "https://app.smartsheet.com/b/home?lx=a"
  }
}
```

## Serialization - Column

Validates serialization of column object

### Expected Request

#### POST - /sheets/1/columns

#### Headers

* Content-Type: application/json

#### Body

```json
[
  {
    "title": "A Brave New Column",
    "type": "PICKLIST",
    "options": [
      "option1",
      "option2",
      "option3"
    ],
    "index": 2,
    "validation": false,
    "width": 42,
    "locked": false
  }
]
```

### Response

#### Status - 200 OK

```json
{
  "message": "SUCCESS",
  "resultCode": 0,
  "result": [
    {
      "id": 2,
      "index": 2,
      "title": "A Brave New Column",
      "type": "PICKLIST",
      "options": [
        "option1",
        "option2",
        "option3"
      ],
      "validation": false,
      "width": 42
    }
  ]
}
```

## Serialization - UserProfile

Validates deserialization of user profile object

### Expected Request

#### GET - /users/me

### Response

#### Status - 200 OK

```json
{
  "id": 1,
  "email": "john.doe@smartsheet.com",
  "firstName": "John",
  "lastName": "Doe",
  "locale": "en_US",
  "timeZone": "US/Pacific",
  "account": {
    "name": "john.doe@smartsheet.com",
    "id": 2
  },
  "admin": true,
  "licensedSheetCreator": true,
  "groupAdmin": true,
  "resourceViewer": true,
  "alternateEmails": [],
  "sheetCount": 66,
  "lastLogin": "2018-03-16T16:06:52Z",
  "title": "",
  "department": "",
  "company": "",
  "workPhone": "",
  "mobilePhone": "",
  "role": ""
}
```

## Serialization - Workspace

Validates serialization of workspace object

### Expected Request

#### POST - /workspaces

#### Headers

* Content-Type: application/json

#### Body

```json
{
  "name": "A Whole New Workspace"
}
```

### Response

#### Status - 200 OK

```json
{
  "message": "SUCCESS",
  "resultCode": 0,
  "result": {
    "id": 1,
    "name": "A Whole New Workspace",
    "accessLevel": "OWNER",
    "permalink": "https://app.smartsheet.com/b/home?lx=a"
  }
}
```

## Serialization - User



### Expected Request

#### POST - /users

#### Headers

* Content-Type: application/json

#### Body

```json
{
  "email": "john.doe@smartsheet.com",
  "admin": false,
  "licensedSheetCreator": true,
  "firstName": "John",
  "lastName": "Doe",
  "groupAdmin": false,
  "resourceViewer": true
}
```

### Response

#### Status - 200 OK

```json
{
  "message": "SUCCESS",
  "resultCode": 0,
  "result": {
    "id": 1,
    "email": "john.doe@smartsheet.com",
    "name": "John Doe",
    "firstName": "John",
    "lastName": "Doe",
    "profileImage": {
      "imageId": "abc",
      "height": 1050,
      "width": 1050
    },
    "status": "ACTIVE",
    "admin": false,
    "licensedSheetCreator": true,
    "groupAdmin": false,
    "resourceViewer": true
  }
}
```

## Serialization - Sheet

Validate serialization for sheet and auto number format objects

### Expected Request

#### POST - /sheets

#### Headers

* Content-Type: application/json

#### Body

```json
{
  "name": "The First Sheet",
  "columns": [
    {
      "title": "The First Column",
      "primary": true,
      "type": "TEXT_NUMBER"
    },
    {
      "title": "The Second Column",
      "primary": false,
      "type": "TEXT_NUMBER",
      "systemColumnType": "AUTO_NUMBER",
      "autoNumberFormat": {
        "prefix": "{YYYY}-{MM}-{DD}-",
        "suffix": "-SUFFIX",
        "fill": "000000"
      }
    }
  ]
}
```

### Response

#### Status - 200 OK

```json
{
  "message": "SUCCESS",
  "resultCode": 0,
  "result": {
    "id": 1,
    "name": "The First Sheet",
    "accessLevel": "OWNER",
    "permalink": "https://app.smartsheet.com/b/home?lx=a",
    "columns": [
      {
        "id": 2,
        "index": 0,
        "title": "The First Column",
        "type": "TEXT_NUMBER",
        "primary": true,
        "validation": false,
        "width": 150
      },
      {
        "id": 3,
        "index": 1,
        "title": "The Second Column",
        "type": "TEXT_NUMBER",
        "systemColumnType": "AUTO_NUMBER",
        "validation": false,
        "autoNumberFormat": {
          "prefix": "{YYYY}-{MM}-{DD}-",
          "fill": "000000",
          "suffix": "-SUFFIX"
        },
        "width": 150
      }
    ]
  }
}
```

## Serialization - AlternateEmail

Validates serialization of alternate email object

### Expected Request

#### POST - /users/1/alternateemails

#### Headers

* Content-Type: application/json

#### Body

```json
[
  {
    "email": "not.not.john.doe@smartsheet.com"
  }
]
```

### Response

#### Status - 200 OK

```json
{
  "message": "SUCCESS",
  "resultCode": 0,
  "result": [
    {
      "id": 1,
      "email": "not.not.john.doe@smartsheet.com",
      "confirmed": false
    }
  ]
}
```

## Serialization - Predecessor

Validates serialization of predecessor list and predecessor objects

### Expected Request

#### POST - /sheets/1/rows

#### Headers

* Content-Type: application/json

#### Query Parameters

* include: objectValue

#### Body

```json
[
  {
    "cells": [
      {
        "columnId": 2,
        "objectValue": {
          "objectType": "PREDECESSOR_LIST",
          "predecessors": [
            {
              "rowId": 3,
              "type": "FS",
              "lag": {
                "objectType": "DURATION",
                "negative": false,
                "elapsed": false,
                "weeks": 1.5,
                "days": 2.5,
                "hours": 3.5,
                "minutes": 4.5,
                "seconds": 5.5,
                "milliseconds": 6
              }
            }
          ]
        }
      }
    ]
  }
]
```

### Response

#### Status - 200 OK

```json
{
  "message": "SUCCESS",
  "resultCode": 0,
  "result": [
    {
      "id": 5,
      "sheetId": 1,
      "rowNumber": 17,
      "siblingId": 6,
      "expanded": true,
      "createdAt": "2018-03-16T20:37:04Z",
      "modifiedAt": "2018-03-16T20:37:04Z",
      "cells": [
        {
          "columnId": 7
        },
        {
          "columnId": 8
        },
        {
          "columnId": 9,
          "formula": "=CALCSTART(Duration17, Start8, Finish8, 0, 300875506)"
        },
        {
          "columnId": 10
        },
        {
          "columnId": 2,
          "value": "8FS +1.5w 2.5d 3.5h 4.5m 5.5s 6ms",
          "objectValue": {
            "objectType": "PREDECESSOR_LIST",
            "predecessors": [
              {
                "rowId": 3,
                "rowNumber": 8,
                "type": "FS",
                "lag": {
                  "objectType": "DURATION",
                  "weeks": 1.5,
                  "days": 2.5,
                  "hours": 3.5,
                  "minutes": 4.5,
                  "seconds": 5.5,
                  "milliseconds": 6
                }
              }
            ]
          },
          "displayValue": "8FS +1.5w 2.5d 3.5h 4.5m 5.5s 6ms"
        },
        {
          "columnId": 11
        },
        {
          "columnId": 12
        },
        {
          "columnId": 13
        },
        {
          "columnId": 14
        }
      ]
    }
  ],
  "version": 37
}
```

## Serialization - IndexResult

Validates the serialization of the index result object

### Expected Request

#### GET - /users

### Response

#### Status - 200 OK

```json
{
  "pageNumber": 1,
  "pageSize": 100,
  "totalPages": 1,
  "totalCount": 1,
  "data": [
    {
      "email": "john.doe@smartsheet.com",
      "name": "John Doe",
      "firstName": "John",
      "lastName": "Doe",
      "admin": true,
      "licensedSheetCreator": true,
      "groupAdmin": true,
      "resourceViewer": true,
      "id": 1,
      "status": "ACTIVE",
      "sheetCount": 69
    }
  ]
}
```

## Serialization - Image

Validates deserialization of image object

### Expected Request

#### GET - /sheets/1/rows/2

### Response

#### Status - 200 OK

```json
{
  "id": 3,
  "sheetId": 1,
  "rowNumber": 5,
  "siblingId": 4,
  "version": 79,
  "expanded": true,
  "accessLevel": "OWNER",
  "createdAt": "2017-11-03T15:31:33Z",
  "modifiedAt": "2018-02-16T22:14:11Z",
  "cells": [
    {
      "columnId": 6,
      "value": "puppy.jpg",
      "displayValue": "puppy.jpg",
      "formula": "=SYS_CELLIMAGE(\"puppy.jpg\",\"abc\",300,332,\"puppy.jpg\")",
      "image": {
        "id": "abc",
        "height": 300,
        "width": 332,
        "altText": "puppy.jpg"
      }
    }
  ]
}
```

## Serialization - Image Urls

Validates serialization of ImageUrl and ImageUrlMap objects

### Expected Request

#### POST - /imageurls

#### Headers

* Content-Type: application/json

#### Body

```json
[
  {
    "imageId": "abc",
    "height": 100,
    "width": 200
  }
]
```

### Response

#### Status - 200 OK

```json
{
  "urlExpiresInMillis": 1800000,
  "imageUrls": [
    {
      "imageId": "abc",
      "url": "https://my-image-url.jpg"
    }
  ]
}
```

## Serialization - BulkFailure

Validates the deserialization of the BulkFailure object

### Expected Request

#### POST - /sheets/1/rows

#### Headers

* Content-Type: application/json

#### Query Parameters

* allowPartialSuccess: true

#### Body

```json
[
  {
    "toBottom": true,
    "cells": [
      {
        "columnId": 2,
        "value": "Some Value"
      }
    ]
  },
  {
    "toBottom": true,
    "cells": [
      {
        "columnId": 3,
        "value": "Some Value"
      }
    ]
  }
]
```

### Response

#### Status - 200 OK

```json
{
  "message": "PARTIAL_SUCCESS",
  "resultCode": 3,
  "result": [
    {
      "id": 4,
      "sheetId": 1,
      "rowNumber": 13,
      "siblingId": 5,
      "expanded": true,
      "createdAt": "2018-03-23T16:23:24Z",
      "modifiedAt": "2018-03-23T16:23:24Z",
      "cells": [
        {
          "columnId": 2,
          "value": "Some Value",
          "displayValue": "Some Value"
        }
      ]
    }
  ],
  "version": 84,
  "failedItems": [
    {
      "index": 1,
      "error": {
        "errorCode": 1036,
        "message": "The columnId 3 is invalid.",
        "refId": "abc"
      }
    }
  ]
}
```

## Serialization - Rows

Validates the row object

### Expected Request

#### POST - /sheets/1/rows

#### Headers

* Content-Type: application/json

#### Body

```json
[
  {
    "expanded": true,
    "format": ",,,,,,,,4,,,,,,,",
    "cells": [
      {
        "columnId": 2,
        "value": "url link",
        "strict": false,
        "hyperlink": {
          "url": "https://google.com"
        }
      },
      {
        "columnId": 3,
        "value": "sheet id link",
        "strict": false,
        "hyperlink": {
          "sheetId": 4
        }
      },
      {
        "columnId": 5,
        "value": "report id link",
        "strict": false,
        "hyperlink": {
          "reportId": 6
        }
      }
    ],
    "locked": false
  }
]
```

### Response

#### Status - 200 OK

```json
{
  "message": "SUCCESS",
  "resultCode": 0,
  "result": [
    {
      "id": 7,
      "sheetId": 1,
      "rowNumber": 15,
      "siblingId": 8,
      "expanded": true,
      "createdAt": "2018-03-23T18:28:54Z",
      "modifiedAt": "2018-03-23T18:28:54Z",
      "cells": [
        {
          "columnId": 2,
          "value": "url link",
          "displayValue": "url link",
          "hyperlink": {
            "url": "https://google.com"
          }
        },
        {
          "columnId": 3,
          "value": "sheet id link",
          "hyperlink": {
            "url": "https://app.smartsheet.com/b/home?lx=a",
            "sheetId": 4
          }
        },
        {
          "columnId": 5,
          "value": "report id link",
          "displayValue": "report id link",
          "hyperlink": {
            "url": "https://app.smartsheet.com/b/home?lx=b",
            "reportId": 6
          }
        }
      ]
    }
  ],
  "version": 88
}
```

## Serialization - Cell Link

Validates the CellLink object can be serialized and deserialized

### Expected Request

#### PUT - /sheets/1/rows

#### Headers

* Content-Type: application/json

#### Body

```json
[
  {
    "id": 2,
    "cells": [
      {
        "columnId": 3,
        "value": null,
        "linkInFromCell": {
          "sheetId": 4,
          "rowId": 5,
          "columnId": 6
        }
      }
    ]
  }
]
```

### Response

#### Status - 200 OK

```json
{
  "message": "SUCCESS",
  "resultCode": 0,
  "result": [
    {
      "id": 2,
      "rowNumber": 5,
      "siblingId": 7,
      "expanded": true,
      "createdAt": "2017-11-03T15:31:33Z",
      "modifiedAt": "2018-03-23T18:24:38Z",
      "cells": [
        {
          "columnId": 3,
          "value": "new value",
          "linkInFromCell": {
            "status": "OK",
            "sheetId": 4,
            "rowId": 5,
            "columnId": 6,
            "sheetName": "Linked Sheet Name"
          }
        }
      ]
    }
  ],
  "version": 87
}
```

## Serialization - Favorite

Validates serialization of favorite object

### Expected Request

#### POST - /favorites

#### Headers

* Content-Type: application/json

#### Body

```json
[
  {
    "type": "sheet",
    "objectId": 1
  }
]
```

### Response

#### Status - 200 OK

```json
{
  "message": "SUCCESS",
  "resultCode": 0,
  "result": [
    {
      "type": "sheet",
      "objectId": 1
    }
  ]
}
```

## Serialization - Report

Validates serialization of report objects

### Expected Request

#### GET - /reports/1

### Response

#### Status - 200 OK

```json
{
  "id": 1,
  "name": "Test Report",
  "totalRowCount": 11,
  "accessLevel": "OWNER",
  "effectiveAttachmentOptions": [
    "GOOGLE_DRIVE",
    "DROPBOX",
    "ONEDRIVE",
    "EVERNOTE",
    "BOX_COM",
    "EGNYTE",
    "FILE"
  ],
  "ganttEnabled": false,
  "cellImageUploadEnabled": true,
  "permalink": "https://app.smartsheet.com/b/home?lx=a",
  "createdAt": "2017-10-06T19:57:40Z",
  "modifiedAt": "2018-03-23T18:55:50Z",
  "columns": [
    {
      "virtualId": 2,
      "index": 0,
      "title": "Sheet Name",
      "type": "TEXT_NUMBER",
      "sheetNameColumn": true,
      "validation": false,
      "width": 150
    }
  ],
  "rows": [
    {
      "id": 3,
      "sheetId": 4,
      "rowNumber": 1,
      "expanded": true,
      "accessLevel": "OWNER",
      "createdAt": "2017-08-29T15:54:47Z",
      "modifiedAt": "2017-08-29T15:54:47Z",
      "cells": [
        {
          "virtualColumnId": 2,
          "value": "Sheet Copy 2",
          "displayValue": "Sheet Copy 2"
        }
      ]
    }
  ]
}
```

## Serialization - Share



### Expected Request

#### POST - /sheets/1/shares

#### Headers

* Content-Type: application/json

#### Query Parameters

* sendEmail: true

#### Body

```json
[
  {
    "email": "john.doe@smartsheet.com",
    "accessLevel": "VIEWER",
    "subject": "Check out this sheet",
    "message": "Let me know what you think. Thanks!",
    "ccMe": true
  }
]
```

### Response

#### Status - 200 OK

```json
{
  "message": "SUCCESS",
  "resultCode": 0,
  "result": [
    {
      "id": "abc",
      "type": "USER",
      "userId": 2,
      "email": "john.doe@smartsheet.com",
      "name": "John Doe",
      "accessLevel": "VIEWER",
      "scope": "ITEM"
    }
  ]
}
```

## Serialization - Send via Email

Validates serialization of email objects

### Expected Request

#### POST - /sheets/1/emails

#### Headers

* Content-Type: application/json

#### Body

```json
{
  "sendTo": [
    {
      "email": "john.doe@smartsheet.com"
    },
    {
      "groupId": 2
    }
  ],
  "subject": "Some subject",
  "message": "Some message",
  "ccMe": true,
  "format": "PDF",
  "formatDetails": {
    "paperSize": "LETTER"
  }
}
```

### Response

#### Status - 200 OK

```json
{
  "message": "SUCCESS",
  "resultCode": 0
}
```

## Serialization - Row Email

Validates serialization of the row email object

### Expected Request

#### POST - /sheets/1/rows/emails

#### Headers

* Content-Type: application/json

#### Body

```json
{
  "sendTo": [
    {
      "groupId": 2
    }
  ],
  "subject": "Some subject",
  "message": "Some message",
  "columnIds": [
    3
  ],
  "includeAttachments": false,
  "includeDiscussions": true,
  "layout": "VERTICAL",
  "rowIds": [
    4
  ]
}
```

### Response

#### Status - 200 OK

```json
{
  "message": "SUCCESS",
  "resultCode": 0
}
```

## Serialization - Template

Validates serialization of the template object

### Expected Request

#### GET - /templates/public

### Response

#### Status - 200 OK

```json
{
  "pageNumber": 1,
  "pageSize": 100,
  "totalPages": 1,
  "totalCount": 1,
  "data": [
    {
      "id": 1,
      "name": "Blank Sheet",
      "blank": true,
      "description": "Create and customize a new sheet",
      "locale": "en_US",
      "type": "sheet",
      "categories": [
        "Featured Templates"
      ],
      "globalTemplate": "BLANK_SHEET"
    }
  ]
}
```

## Serialization - Update Request

Validates the serialization of the UserRequest and Schedule objects

### Expected Request

#### POST - /sheets/1/updaterequests

#### Headers

* Content-Type: application/json

#### Body

```json
{
  "sendTo": [
    {
      "email": "john.doe@smartsheet.com"
    }
  ],
  "rowIds": [
    2
  ],
  "columnIds": [
    3
  ],
  "includeAttachments": true,
  "includeDiscussions": false,
  "subject": "Some subject",
  "message": "Some message",
  "ccMe": true,
  "schedule": {
    "type": "MONTHLY",
    "startAt": "2018-03-01T19:00:00Z",
    "endAt": "2018-06-01T00:00:00Z",
    "dayOrdinal": "FIRST",
    "dayDescriptors": [
      "FRIDAY"
    ],
    "repeatEvery": 1
  }
}
```

### Response

#### Status - 200 OK

```json
{
  "message": "SUCCESS",
  "resultCode": 0,
  "result": {
    "sendTo": [
      {
        "email": "john.doe@smartsheet.com"
      }
    ],
    "subject": "Some subject",
    "message": "Some message",
    "ccMe": true,
    "includeAttachments": true,
    "includeDiscussions": false,
    "columnIds": [
      3
    ],
    "rowIds": [
      2
    ],
    "id": 4,
    "sentBy": {
      "name": "Jane Doe",
      "email": "jane.doe@smartsheet.com"
    },
    "schedule": {
      "type": "MONTHLY",
      "startAt": "2018-03-01T19:00:00Z",
      "endAt": "2018-06-01T00:00:00Z",
      "dayOrdinal": "FIRST",
      "dayDescriptors": [
        "FRIDAY"
      ],
      "repeatEvery": 1,
      "nextSendAt": "2018-04-06T18:00:00Z"
    }
  }
}
```

## Serialization - Sent Update Requests

Validates deserializing sent update request objects

### Expected Request

#### GET - /sheets/1/sentupdaterequests/2

### Response

#### Status - 200 OK

```json
{
  "id": 2,
  "updateRequestId": 3,
  "sentAt": "2018-02-02T23:32:42Z",
  "sentBy": {
    "name": "Jane Doe",
    "email": "jane.doe@smartsheet.com"
  },
  "sentTo": {
    "email": "john.doe@smartsheet.com"
  },
  "status": "COMPLETE",
  "subject": "Update Request: New Sheet",
  "message": "Please update my online sheet.",
  "rowIds": [
    4
  ],
  "includeAttachments": true,
  "includeDiscussions": true,
  "columnIds": [
    5
  ]
}
```

## Serialization - Sheet Settings

Validates serialization of sheet user settings and project settings objects

### Expected Request

#### PUT - /sheets/1

#### Headers

* Content-Type: application/json

#### Body

```json
{
  "userSettings": {
    "criticalPathEnabled": true,
    "displaySummaryTasks": true
  },
  "projectSettings": {
    "workingDays": [
      "MONDAY",
      "TUESDAY"
    ],
    "nonWorkingDays": [
      "2018-04-04",
      "2018-05-05",
      "2018-06-06"
    ],
    "lengthOfDay": 23.5
  }
}
```

### Response

#### Status - 200 OK

```json
{
  "message": "SUCCESS",
  "resultCode": 0,
  "result": {
    "id": 1,
    "name": "Test Project Sheet",
    "accessLevel": "OWNER",
    "userSettings": {
      "criticalPathEnabled": true,
      "displaySummaryTasks": true
    },
    "projectSettings": {
      "workingDays": [
        "MONDAY",
        "TUESDAY"
      ],
      "nonWorkingDays": [
        "2018-04-04",
        "2018-05-05",
        "2018-06-06"
      ],
      "lengthOfDay": 23.5
    },
    "permalink": "https://app.smartsheet.com/b/home?lx=a"
  }
}
```

## Serialization - Container Destination

Validates serialization of container destination object

### Expected Request

#### POST - /folders/1/copy

#### Headers

* Content-Type: application/json

#### Body

```json
{
  "destinationType": "HOME",
  "newName": "Copy of Some Folder"
}
```

### Response

#### Status - 200 OK

```json
{
  "message": "SUCCESS",
  "resultCode": 0,
  "result": {
    "id": 2,
    "name": "Copy of Some Folder",
    "permalink": "https://app.smartsheet.com/b/home?lx=a"
  }
}
```

## Serialization - Cross Sheet Reference

Validates the serialization of the cross sheet reference object

### Expected Request

#### POST - /sheets/1/crosssheetreferences

#### Headers

* Content-Type: application/json

#### Body

```json
{
  "name": "Some Cross Sheet Reference",
  "sourceSheetId": 2,
  "startRowId": 3,
  "endRowId": 4,
  "startColumnId": 5,
  "endColumnId": 6
}
```

### Response

#### Status - 200 OK

```json
{
  "message": "SUCCESS",
  "resultCode": 0,
  "result": {
    "name": "Some Cross Sheet Reference",
    "sourceSheetId": 2,
    "startRowId": 3,
    "endRowId": 4,
    "startColumnId": 5,
    "endColumnId": 6
  }
}
```

## List Sheets - No Params

Gets a list of sheets without query parameters. Returns a valid response with a list of sheets.

### Expected Request

#### GET - /sheets

### Response

#### Status - 200 OK

```json
{
  "pageNumber": 1,
  "pageSize": 100,
  "totalPages": 1,
  "totalCount": 2,
  "data": [
    {
      "id": 1,
      "name": "Copy of Sample Sheet",
      "accessLevel": "OWNER",
      "permalink": "https://app.smartsheet.com/b/home?lx=*****************",
      "createdAt": "2017-10-09T01:54:15Z",
      "modifiedAt": "2017-10-09T01:54:15Z"
    },
    {
      "id": 2,
      "name": "Task Tracking Document",
      "accessLevel": "EDITOR_SHARE",
      "permalink": "https://app.smartsheet.com/b/home?lx=*****************",
      "createdAt": "2017-09-21T18:36:23Z",
      "modifiedAt": "2017-10-17T22:30:57Z"
    }
  ]
}
```

## List Sheets - Include Owner Info

Gets a list of sheets with a owner info query parameters. Returns a valid response with a list of sheets.

### Expected Request

#### GET - /sheets

#### Query Parameters

* include: ownerInfo

### Response

#### Status - 200 OK

```json
{
  "pageNumber": 1,
  "pageSize": 100,
  "totalPages": 1,
  "totalCount": 2,
  "data": [
    {
      "id": 1,
      "name": "Copy of Sample Sheet",
      "accessLevel": "OWNER",
      "owner": "john.doe@smartsheet.com",
      "ownerId": 10,
      "permalink": "https://app.smartsheet.com/b/home?lx=*****************",
      "createdAt": "2017-10-09T01:54:15Z",
      "modifiedAt": "2017-10-09T01:54:15Z"
    },
    {
      "id": 2,
      "name": "Task Tracking Document",
      "accessLevel": "EDITOR_SHARE",
      "owner": "john.doe@smartsheet.com",
      "ownerId": 10,
      "permalink": "https://app.smartsheet.com/b/home?lx=*****************",
      "createdAt": "2017-09-21T18:36:23Z",
      "modifiedAt": "2017-10-17T22:30:57Z"
    }
  ]
}
```

## Create Sheet - Invalid - No Columns

Creates a new sheet without providing column details. Returns a bad request failure response.

### Expected Request

#### POST - /sheets

#### Headers

* Content-Type: application/json

#### Body

```json
{
  "name": "New Sheet",
  "columns": []
}
```

### Response

#### Status - 400 Bad Request

```json
{
  "errorCode": 1054,
  "message": "The new sheet requires either a fromId or columns.",
  "refId": "123abc"
}
```

## List Sights



### Expected Request

#### GET - /sights

### Response

#### Status - 200 OK

```json
{
  "pageNumber": 1,
  "pageSize": 100,
  "totalPages": 1,
  "totalCount": 6,
  "data": [
    {
      "id": 52,
      "name": "My New Sight",
      "accessLevel": "OWNER",
      "permalink": "https://app.smartsheet.com/b/home",
      "createdAt": "2016-08-14T23:45:06Z",
      "modifiedAt": "2017-12-07T19:26:00Z"
    },
    {
      "id": 332,
      "name": "My new Sight",
      "accessLevel": "OWNER",
      "permalink": "https://app.smartsheet.com/b/home",
      "createdAt": "2016-08-14T23:39:11Z",
      "modifiedAt": "2016-08-14T23:39:11Z"
    },
    {
      "id": 84,
      "name": "My new Sight",
      "accessLevel": "OWNER",
      "permalink": "https://app.smartsheet.com/b/home",
      "createdAt": "2016-08-14T23:34:12Z",
      "modifiedAt": "2016-08-14T23:34:12Z"
    },
    {
      "id": 964,
      "name": "My new Sight",
      "accessLevel": "OWNER",
      "permalink": "https://app.smartsheet.com/b/home",
      "createdAt": "2016-08-14T23:26:23Z",
      "modifiedAt": "2016-08-14T23:26:23Z"
    },
    {
      "id": 708,
      "name": "My new Sight Google",
      "accessLevel": "OWNER",
      "permalink": "https://app.smartsheet.com/b/home",
      "createdAt": "2016-08-14T23:32:29Z",
      "modifiedAt": "2016-08-14T23:32:29Z"
    },
    {
      "id": 212,
      "name": "Sight Test",
      "accessLevel": "OWNER",
      "permalink": "https://app.smartsheet.com/b/home",
      "createdAt": "2016-08-08T16:43:55Z",
      "modifiedAt": "2016-08-14T22:58:15Z"
    }
  ]
}
```

## Get Sight



### Expected Request

#### GET - /sights/52

### Response

#### Status - 200 OK

```json
{
  "id": 52,
  "name": "My New Sight",
  "accessLevel": "OWNER",
  "backgroundColor": "#E2E2E2",
  "permalink": "https://app.smartsheet.com/dashboards/Qv1",
  "columnCount": 6,
  "widgets": [
    {
      "id": 484,
      "type": "SHORTCUTLIST",
      "contents": {
        "type": "SHORTCUT",
        "shortcutData": [
          {
            "label": "Starbucks Stores By State",
            "labelFormat": ",2,,,,,1,,1,,,,,,,,",
            "hyperlink": {
              "url": "https://app.smartsheet.com/sheets/r21",
              "sheetId": 500
            },
            "attachmentType": "SMARTSHEET",
            "order": 0
          }
        ]
      },
      "xPosition": 0,
      "yPosition": 1,
      "width": 1,
      "height": 1,
      "showTitleIcon": false,
      "showTitle": true,
      "titleFormat": ",,1,,,,,,,3,,,,,,1,",
      "version": 1
    },
    {
      "id": 364,
      "type": "SHEETSUMMARY",
      "contents": {
        "type": "METRIC",
        "hyperlink": {
          "url": "http://www.seattle.gov/",
          "interactionType": "WEB"
        },
        "cellData": [
          {
            "columnId": 236,
            "label": "Millimetres",
            "labelFormat": ",2,,,,,,,1,,,,,,,1,",
            "valueFormat": ",2,1,,,,1,,1,3,,,,,,1,",
            "order": 4,
            "cell": {
              "columnId": 236,
              "rowId": 284,
              "value": 958,
              "objectValue": 958,
              "displayValue": "958"
            },
            "dataSource": "CELL",
            "objectValue": 958
          },
          {
            "columnId": 492,
            "label": "State",
            "labelFormat": ",2,,,,,,,1,,,,,,,1,",
            "valueFormat": ",2,1,,,,1,,1,3,,,,,,1,",
            "order": 1,
            "cell": {
              "columnId": 492,
              "rowId": 284,
              "value": "Washington",
              "objectValue": "Washington",
              "displayValue": "Washington"
            },
            "dataSource": "CELL",
            "objectValue": "Washington"
          },
          {
            "columnId": 612,
            "label": "City",
            "labelFormat": ",2,,,,,,,1,,,,,,,1,",
            "valueFormat": ",2,1,,,,1,,1,3,,,,,,1,",
            "order": 0,
            "cell": {
              "columnId": 612,
              "rowId": 284,
              "value": "Seattle",
              "objectValue": "Seattle",
              "displayValue": "Seattle"
            },
            "dataSource": "CELL",
            "objectValue": "Seattle"
          },
          {
            "columnId": 740,
            "label": "Inches",
            "labelFormat": ",2,,,,,,,1,,,,,,,1,",
            "valueFormat": ",2,1,,,,1,,1,3,,,,,,1,",
            "order": 3,
            "cell": {
              "columnId": 740,
              "rowId": 284,
              "value": 37.7,
              "objectValue": 37.7,
              "displayValue": "37.7"
            },
            "dataSource": "CELL",
            "objectValue": 37.7
          },
          {
            "columnId": 988,
            "label": "Days",
            "labelFormat": ",2,,,,,,,1,,,,,,,1,",
            "valueFormat": ",2,1,,,,1,,1,3,,,,,,1,",
            "order": 2,
            "cell": {
              "columnId": 988,
              "rowId": 284,
              "value": 149,
              "objectValue": 149,
              "displayValue": "149"
            },
            "dataSource": "CELL",
            "objectValue": 149
          }
        ],
        "columns": [
          {
            "id": 612,
            "version": 0,
            "index": 0,
            "title": "City",
            "type": "TEXT_NUMBER",
            "primary": true,
            "validation": false,
            "width": 150
          },
          {
            "id": 492,
            "version": 0,
            "index": 1,
            "title": "State",
            "type": "TEXT_NUMBER",
            "validation": false,
            "width": 150
          },
          {
            "id": 988,
            "version": 0,
            "index": 2,
            "title": "Days",
            "type": "TEXT_NUMBER",
            "validation": false,
            "width": 150
          },
          {
            "id": 740,
            "version": 0,
            "index": 3,
            "title": "Inches",
            "type": "TEXT_NUMBER",
            "validation": false,
            "width": 150
          },
          {
            "id": 236,
            "version": 0,
            "index": 4,
            "title": "Millimetres",
            "type": "TEXT_NUMBER",
            "validation": false,
            "width": 150
          }
        ],
        "sheetId": 524
      },
      "xPosition": 1,
      "yPosition": 1,
      "width": 1,
      "height": 3,
      "title": "Annual Averages for Total Precipitation By City",
      "showTitleIcon": true,
      "showTitle": true,
      "titleFormat": ",,1,,,,,,,3,,,,,,1,",
      "version": 1
    },
    {
      "id": 860,
      "type": "RICHTEXT",
      "contents": {
        "type": "RICHTEXT",
        "htmlContent": "<p>This is a&nbsp;<span class=\"clsDbFt\" style=\"font-family:'arial';font-size:10pt;font-weight:bold;font-style:normal;text-decoration:none;color:rgb( 0 , 0 , 0 );background-color:rgb( 255 , 255 , 255 )\">rich</span><span class=\"clsDbFt\" style=\"font-family:'arial';font-size:10pt;font-weight:normal;font-style:italic;text-decoration:none;color:rgb( 0 , 0 , 0 );background-color:rgb( 255 , 255 , 255 )\">text&nbsp;</span><span class=\"clsDbFt\" style=\"font-family:'arial';font-size:10pt;font-weight:normal;font-style:normal;text-decoration:none;color:rgb( 0 , 0 , 0 );background-color:rgb( 255 , 255 , 255 )\">test</span></p>"
      },
      "xPosition": 2,
      "yPosition": 1,
      "width": 2,
      "height": 4,
      "showTitleIcon": false,
      "showTitle": false,
      "version": 1
    },
    {
      "id": 108,
      "type": "GRIDGANTT",
      "contents": {
        "type": "GRIDGANTT",
        "hyperlink": {
          "url": "https://app.smartsheet.com/reports/J81",
          "reportId": 876,
          "interactionType": "SOURCE_SHEET"
        },
        "htmlContent": "<style type=\"text/css\">",
        "reportId": 876
      },
      "xPosition": 0,
      "yPosition": 5,
      "width": 4,
      "height": 6,
      "showTitleIcon": false,
      "showTitle": false,
      "version": 1
    },
    {
      "id": 540,
      "type": "TITLE",
      "contents": {
        "type": "RICHTEXT",
        "htmlContent": "<p style=\"text-align:center\"><span class=\"clsDbFt\" style=\"font-family:&#39;arial&#39;;font-size:20pt;font-weight:bold;font-style:normal;text-decoration:none;color:rgb( 0 , 0 , 0 )\"></span><span class=\"clsDbFt\">This is my title</span></p>",
        "backgroundColor": "#D0AF8F"
      },
      "xPosition": 0,
      "yPosition": 0,
      "width": 3,
      "height": 1,
      "showTitleIcon": false,
      "showTitle": false,
      "version": 1
    },
    {
      "id": 796,
      "type": "CHART",
      "contents": {
        "type": "CHART",
        "hyperlink": {
          "url": "https://app.smartsheet.com/sheets/9J1",
          "sheetId": 660,
          "interactionType": "SMARTSHEET_ITEM"
        },
        "series": [
          {
            "title": "Days",
            "titleInfo": {
              "type": "TEXT_NUMBER"
            },
            "seriesType": "COLUMN",
            "tooltips": {
              "labelType": "X-SERIES-Y"
            },
            "color": "#1061C3",
            "axisLocationX": "BOTTOM",
            "axisLocationY": "LEFT",
            "yColumnInfo": {
              "type": "TEXT_NUMBER"
            },
            "xColumnInfo": {
              "type": "TEXT_NUMBER"
            },
            "seriesData": [
              {
                "y": 113
              },
              {
                "x": "Austin",
                "y": 88
              },
              {
                "x": "Baltimore",
                "y": 116
              },
              {
                "x": "Birmingham",
                "y": 117
              },
              {
                "x": "Boston",
                "y": 126
              },
              {
                "x": "Buffalo",
                "y": 167
              },
              {
                "x": "Charlotte",
                "y": 110
              },
              {
                "x": "Chicago",
                "y": 124
              },
              {
                "x": "Cincinnati",
                "y": 137
              },
              {
                "x": "Cleveland",
                "y": 155
              },
              {
                "x": "Columbus",
                "y": 139
              },
              {
                "x": "Dallas",
                "y": 81
              },
              {
                "x": "Denver",
                "y": 87
              },
              {
                "x": "Detroit",
                "y": 135
              },
              {
                "x": "Hartford",
                "y": 130
              },
              {
                "x": "Houston",
                "y": 104
              },
              {
                "x": "Indianapolis",
                "y": 129
              },
              {
                "x": "Jacksonville",
                "y": 114
              },
              {
                "x": "Kansas City",
                "y": 91
              },
              {
                "x": "Las Vegas",
                "y": 27
              },
              {
                "x": "Los Angeles",
                "y": 36
              },
              {
                "x": "Louisville",
                "y": 123
              },
              {
                "x": "Memphis",
                "y": 108
              },
              {
                "x": "Miami",
                "y": 135
              },
              {
                "x": "Milwaukee",
                "y": 127
              },
              {
                "x": "Minneapolis",
                "y": 117
              },
              {
                "x": "Nashville",
                "y": 119
              },
              {
                "x": "New Orleans",
                "y": 115
              },
              {
                "x": "New York",
                "y": 122
              },
              {
                "x": "Oklahoma City",
                "y": 84
              },
              {
                "x": "Orlando",
                "y": 117
              },
              {
                "x": "Philadelphia",
                "y": 118
              },
              {
                "x": "Phoenix",
                "y": 30
              },
              {
                "x": "Pittsburgh",
                "y": 151
              },
              {
                "x": "Portland",
                "y": 164
              },
              {
                "x": "Providence",
                "y": 125
              },
              {
                "x": "Raleigh",
                "y": 100
              },
              {
                "x": "Richmond",
                "y": 114
              },
              {
                "x": "Riverside",
                "y": 30
              },
              {
                "x": "Rochester",
                "y": 167
              },
              {
                "x": "Sacramento",
                "y": 60
              },
              {
                "x": "Salt Lake City",
                "y": 96
              },
              {
                "x": "San Antonio",
                "y": 83
              },
              {
                "x": "San Diego",
                "y": 42
              },
              {
                "x": "San Francisco",
                "y": 68
              },
              {
                "x": "San Jose",
                "y": 62
              },
              {
                "x": "Seattle",
                "y": 149
              },
              {
                "x": "St. Louis",
                "y": 113
              },
              {
                "x": "Tampa",
                "y": 105
              },
              {
                "x": "Virginia Beach",
                "y": 117
              },
              {
                "x": "Washington",
                "y": 114
              }
            ],
            "selectionRanges": [
              {
                "sourceRowId1": 292,
                "sourceRowId2": 908,
                "sourceColumnId1": 988,
                "sourceColumnId2": 988
              }
            ]
          },
          {
            "title": "Inches",
            "titleInfo": {
              "type": "TEXT_NUMBER"
            },
            "seriesType": "COLUMN",
            "tooltips": {
              "labelType": "X-SERIES-Y"
            },
            "color": "#EA352E",
            "axisLocationX": "BOTTOM",
            "axisLocationY": "LEFT",
            "yColumnInfo": {
              "type": "TEXT_NUMBER"
            },
            "xColumnInfo": {
              "type": "TEXT_NUMBER"
            },
            "seriesData": [
              {
                "y": 49.7
              },
              {
                "x": "Austin",
                "y": 34.2
              },
              {
                "x": "Baltimore",
                "y": 41.9
              },
              {
                "x": "Birmingham",
                "y": 53.7
              },
              {
                "x": "Boston",
                "y": 43.8
              },
              {
                "x": "Buffalo",
                "y": 40.5
              },
              {
                "x": "Charlotte",
                "y": 41.6
              },
              {
                "x": "Chicago",
                "y": 36.9
              },
              {
                "x": "Cincinnati",
                "y": 41.9
              },
              {
                "x": "Cleveland",
                "y": 39.1
              },
              {
                "x": "Columbus",
                "y": 39.3
              },
              {
                "x": "Dallas",
                "y": 37.6
              },
              {
                "x": "Denver",
                "y": 15.6
              },
              {
                "x": "Detroit",
                "y": 33.5
              },
              {
                "x": "Hartford",
                "y": 45.9
              },
              {
                "x": "Houston",
                "y": 49.8
              },
              {
                "x": "Indianapolis",
                "y": 42.4
              },
              {
                "x": "Jacksonville",
                "y": 52.4
              },
              {
                "x": "Kansas City",
                "y": 39.1
              },
              {
                "x": "Las Vegas",
                "y": 4.2
              },
              {
                "x": "Los Angeles",
                "y": 12.8
              },
              {
                "x": "Louisville",
                "y": 44.9
              },
              {
                "x": "Memphis",
                "y": 53.7
              },
              {
                "x": "Miami",
                "y": 61.9
              },
              {
                "x": "Milwaukee",
                "y": 34.8
              },
              {
                "x": "Minneapolis",
                "y": 30.6
              },
              {
                "x": "Nashville",
                "y": 47.3
              },
              {
                "x": "New Orleans",
                "y": 62.7
              },
              {
                "x": "New York",
                "y": 49.9
              },
              {
                "x": "Oklahoma City",
                "y": 36.5
              },
              {
                "x": "Orlando",
                "y": 50.7
              },
              {
                "x": "Philadelphia",
                "y": 41.5
              },
              {
                "x": "Phoenix",
                "y": 8.2
              },
              {
                "x": "Pittsburgh",
                "y": 38.2
              },
              {
                "x": "Portland",
                "y": 43.5
              },
              {
                "x": "Providence",
                "y": 47.2
              },
              {
                "x": "Raleigh",
                "y": 46
              },
              {
                "x": "Richmond",
                "y": 43.6
              },
              {
                "x": "Riverside",
                "y": 10.3
              },
              {
                "x": "Rochester",
                "y": 34.3
              },
              {
                "x": "Sacramento",
                "y": 18.5
              },
              {
                "x": "Salt Lake City",
                "y": 16.1
              },
              {
                "x": "San Antonio",
                "y": 32.3
              },
              {
                "x": "San Diego",
                "y": 10.3
              },
              {
                "x": "San Francisco",
                "y": 20.7
              },
              {
                "x": "San Jose",
                "y": 15.8
              },
              {
                "x": "Seattle",
                "y": 37.7
              },
              {
                "x": "St. Louis",
                "y": 41
              },
              {
                "x": "Tampa",
                "y": 46.3
              },
              {
                "x": "Virginia Beach",
                "y": 46.5
              },
              {
                "x": "Washington",
                "y": 39.7
              }
            ],
            "selectionRanges": [
              {
                "sourceRowId1": 292,
                "sourceRowId2": 908,
                "sourceColumnId1": 740,
                "sourceColumnId2": 740
              }
            ]
          }
        ],
        "axes": [
          {
            "location": "LEFT",
            "includeZero": true
          },
          {
            "location": "BOTTOM"
          }
        ],
        "legend": {
          "location": "RIGHT"
        },
        "sheetId": 524,
        "selectionRanges": [
          {
            "sourceRowId1": 292,
            "sourceRowId2": 908,
            "sourceColumnId1": 612,
            "sourceColumnId2": 740
          }
        ]
      },
      "xPosition": 0,
      "yPosition": 11,
      "width": 4,
      "height": 6,
      "title": "Annual Averages for Total Precipitation By City",
      "showTitleIcon": false,
      "showTitle": true,
      "titleFormat": ",,1,,,,,,,3,,,,,,1,",
      "version": 1
    },
    {
      "id": 932,
      "type": "IMAGE",
      "contents": {
        "type": "IMAGE",
        "hyperlink": {
          "url": "http://www.smartsheet.com",
          "interactionType": "WEB"
        },
        "privateId": "_kpnN9Q",
        "height": 48,
        "width": 197,
        "fileName": "smartsheet-logo-blue-197x48.png",
        "format": ",7,1,,,,2,2,1,3,,,,,,1,"
      },
      "xPosition": 4,
      "yPosition": 1,
      "width": 1,
      "height": 4,
      "showTitleIcon": false,
      "showTitle": false,
      "version": 1
    },
    {
      "id": 636,
      "type": "WEBCONTENT",
      "contents": {
        "type": "WidgetWebContent",
        "url": "https://www.youtube.com/"
      },
      "xPosition": 0,
      "yPosition": 17,
      "width": 4,
      "height": 6,
      "showTitleIcon": false,
      "showTitle": true,
      "titleFormat": ",,1,,,,,,,3,,,,,,1,",
      "version": 1
    }
  ],
  "createdAt": "2016-08-14T23:45:06Z",
  "modifiedAt": "2019-07-12T22:25:42Z"
}
```

## Copy Sight



### Expected Request

#### POST - /sights/52/copy

#### Headers

* Content-Type: application/json

#### Body

```json
{
  "destinationId": 484,
  "destinationType": "folder",
  "newName": "new sight"
}
```

### Response

#### Status - 200 OK

```json
{
  "message": "SUCCESS",
  "resultCode": 0,
  "result": {
    "id": 220,
    "name": "new sight",
    "accessLevel": "OWNER",
    "permalink": "https://app.smartsheet.com/b/home"
  }
}
```

## Update Sight



### Expected Request

#### PUT - /sights/812

#### Headers

* Content-Type: application/json

#### Body

```json
{
  "name": "new new sight"
}
```

### Response

#### Status - 200 OK

```json
{
  "message": "SUCCESS",
  "resultCode": 0,
  "result": {
    "id": 812,
    "name": "new new sight",
    "accessLevel": "OWNER",
    "backgroundColor": "#E2E2E2",
    "permalink": "https://app.smartsheet.com/dashboards/PP1",
    "columnCount": 6,
    "widgets": [
      {
        "id": 532,
        "type": "SHORTCUTLIST",
        "contents": {
          "type": "SHORTCUT",
          "shortcutData": [
            {
              "label": "Starbucks Stores By State",
              "labelFormat": ",2,,,,,1,,1,,,,,,,,",
              "hyperlink": {
                "url": "https://app.smartsheet.com/sheets/r21",
                "sheetId": 500
              },
              "attachmentType": "SMARTSHEET",
              "order": 0
            }
          ]
        },
        "xPosition": 0,
        "yPosition": 1,
        "width": 1,
        "height": 1,
        "showTitleIcon": false,
        "showTitle": true,
        "titleFormat": ",,1,,,,,,,3,,,,,,1,",
        "version": 1
      },
      {
        "id": 28,
        "type": "SHEETSUMMARY",
        "contents": {
          "type": "METRIC",
          "hyperlink": {
            "url": "http://www.seattle.gov/",
            "interactionType": "WEB"
          },
          "cellData": [
            {
              "columnId": 236,
              "label": "Millimetres",
              "labelFormat": ",2,,,,,,,1,,,,,,,1,",
              "valueFormat": ",2,1,,,,1,,1,3,,,,,,1,",
              "order": 4,
              "cell": {
                "columnId": 236,
                "rowId": 284,
                "value": 958,
                "objectValue": 958,
                "displayValue": "958"
              },
              "dataSource": "CELL",
              "objectValue": 958
            },
            {
              "columnId": 492,
              "label": "State",
              "labelFormat": ",2,,,,,,,1,,,,,,,1,",
              "valueFormat": ",2,1,,,,1,,1,3,,,,,,1,",
              "order": 1,
              "cell": {
                "columnId": 492,
                "rowId": 284,
                "value": "Washington",
                "objectValue": "Washington",
                "displayValue": "Washington"
              },
              "dataSource": "CELL",
              "objectValue": "Washington"
            },
            {
              "columnId": 612,
              "label": "City",
              "labelFormat": ",2,,,,,,,1,,,,,,,1,",
              "valueFormat": ",2,1,,,,1,,1,3,,,,,,1,",
              "order": 0,
              "cell": {
                "columnId": 612,
                "rowId": 284,
                "value": "Seattle",
                "objectValue": "Seattle",
                "displayValue": "Seattle"
              },
              "dataSource": "CELL",
              "objectValue": "Seattle"
            },
            {
              "columnId": 740,
              "label": "Inches",
              "labelFormat": ",2,,,,,,,1,,,,,,,1,",
              "valueFormat": ",2,1,,,,1,,1,3,,,,,,1,",
              "order": 3,
              "cell": {
                "columnId": 740,
                "rowId": 284,
                "value": 37.7,
                "objectValue": 37.7,
                "displayValue": "37.7"
              },
              "dataSource": "CELL",
              "objectValue": 37.7
            },
            {
              "columnId": 988,
              "label": "Days",
              "labelFormat": ",2,,,,,,,1,,,,,,,1,",
              "valueFormat": ",2,1,,,,1,,1,3,,,,,,1,",
              "order": 2,
              "cell": {
                "columnId": 988,
                "rowId": 284,
                "value": 149,
                "objectValue": 149,
                "displayValue": "149"
              },
              "dataSource": "CELL",
              "objectValue": 149
            }
          ],
          "columns": [
            {
              "id": 612,
              "version": 0,
              "index": 0,
              "title": "City",
              "type": "TEXT_NUMBER",
              "primary": true,
              "validation": false,
              "width": 150
            },
            {
              "id": 492,
              "version": 0,
              "index": 1,
              "title": "State",
              "type": "TEXT_NUMBER",
              "validation": false,
              "width": 150
            },
            {
              "id": 988,
              "version": 0,
              "index": 2,
              "title": "Days",
              "type": "TEXT_NUMBER",
              "validation": false,
              "width": 150
            },
            {
              "id": 740,
              "version": 0,
              "index": 3,
              "title": "Inches",
              "type": "TEXT_NUMBER",
              "validation": false,
              "width": 150
            },
            {
              "id": 236,
              "version": 0,
              "index": 4,
              "title": "Millimetres",
              "type": "TEXT_NUMBER",
              "validation": false,
              "width": 150
            }
          ],
          "sheetId": 524
        },
        "xPosition": 1,
        "yPosition": 1,
        "width": 1,
        "height": 3,
        "title": "Annual Averages for Total Precipitation By City",
        "showTitleIcon": true,
        "showTitle": true,
        "titleFormat": ",,1,,,,,,,3,,,,,,1,",
        "version": 1
      },
      {
        "id": 20,
        "type": "RICHTEXT",
        "contents": {
          "type": "RICHTEXT",
          "htmlContent": "<p>This is a&nbsp;<span class=\"clsDbFt\" style=\"font-family:'arial';font-size:10pt;font-weight:bold;font-style:normal;text-decoration:none;color:rgb( 0 , 0 , 0 );background-color:rgb( 255 , 255 , 255 )\">rich</span><span class=\"clsDbFt\" style=\"font-family:'arial';font-size:10pt;font-weight:normal;font-style:italic;text-decoration:none;color:rgb( 0 , 0 , 0 );background-color:rgb( 255 , 255 , 255 )\">text&nbsp;</span><span class=\"clsDbFt\" style=\"font-family:'arial';font-size:10pt;font-weight:normal;font-style:normal;text-decoration:none;color:rgb( 0 , 0 , 0 );background-color:rgb( 255 , 255 , 255 )\">test</span></p>"
        },
        "xPosition": 2,
        "yPosition": 1,
        "width": 2,
        "height": 4,
        "showTitleIcon": false,
        "showTitle": false,
        "version": 1
      },
      {
        "id": 516,
        "type": "GRIDGANTT",
        "contents": {
          "type": "GRIDGANTT",
          "hyperlink": {
            "url": "https://app.smartsheet.com/reports/J81",
            "reportId": 876,
            "interactionType": "SOURCE_SHEET"
          },
          "htmlContent": "<style type=\"text/css\">",
          "reportId": 876
        },
        "xPosition": 0,
        "yPosition": 5,
        "width": 4,
        "height": 6,
        "showTitleIcon": false,
        "showTitle": false,
        "version": 1
      },
      {
        "id": 268,
        "type": "TITLE",
        "contents": {
          "type": "RICHTEXT",
          "htmlContent": "<p style=\"text-align:center\"><span class=\"clsDbFt\" style=\"font-family:&#39;arial&#39;;font-size:20pt;font-weight:bold;font-style:normal;text-decoration:none;color:rgb( 0 , 0 , 0 )\"></span><span class=\"clsDbFt\">This is my title</span></p>",
          "backgroundColor": "#D0AF8F"
        },
        "xPosition": 0,
        "yPosition": 0,
        "width": 3,
        "height": 1,
        "showTitleIcon": false,
        "showTitle": false,
        "version": 1
      },
      {
        "id": 764,
        "type": "CHART",
        "contents": {
          "type": "CHART",
          "hyperlink": {
            "url": "https://app.smartsheet.com/sheets/9J1",
            "sheetId": 660,
            "interactionType": "SMARTSHEET_ITEM"
          },
          "series": [
            {
              "title": "Days",
              "titleInfo": {
                "type": "TEXT_NUMBER"
              },
              "seriesType": "COLUMN",
              "tooltips": {
                "labelType": "X-SERIES-Y"
              },
              "color": "#1061C3",
              "axisLocationX": "BOTTOM",
              "axisLocationY": "LEFT",
              "yColumnInfo": {
                "type": "TEXT_NUMBER"
              },
              "xColumnInfo": {
                "type": "TEXT_NUMBER"
              },
              "seriesData": [
                {
                  "y": 113
                },
                {
                  "x": "Austin",
                  "y": 88
                },
                {
                  "x": "Baltimore",
                  "y": 116
                },
                {
                  "x": "Birmingham",
                  "y": 117
                },
                {
                  "x": "Boston",
                  "y": 126
                },
                {
                  "x": "Buffalo",
                  "y": 167
                },
                {
                  "x": "Charlotte",
                  "y": 110
                },
                {
                  "x": "Chicago",
                  "y": 124
                },
                {
                  "x": "Cincinnati",
                  "y": 137
                },
                {
                  "x": "Cleveland",
                  "y": 155
                },
                {
                  "x": "Columbus",
                  "y": 139
                },
                {
                  "x": "Dallas",
                  "y": 81
                },
                {
                  "x": "Denver",
                  "y": 87
                },
                {
                  "x": "Detroit",
                  "y": 135
                },
                {
                  "x": "Hartford",
                  "y": 130
                },
                {
                  "x": "Houston",
                  "y": 104
                },
                {
                  "x": "Indianapolis",
                  "y": 129
                },
                {
                  "x": "Jacksonville",
                  "y": 114
                },
                {
                  "x": "Kansas City",
                  "y": 91
                },
                {
                  "x": "Las Vegas",
                  "y": 27
                },
                {
                  "x": "Los Angeles",
                  "y": 36
                },
                {
                  "x": "Louisville",
                  "y": 123
                },
                {
                  "x": "Memphis",
                  "y": 108
                },
                {
                  "x": "Miami",
                  "y": 135
                },
                {
                  "x": "Milwaukee",
                  "y": 127
                },
                {
                  "x": "Minneapolis",
                  "y": 117
                },
                {
                  "x": "Nashville",
                  "y": 119
                },
                {
                  "x": "New Orleans",
                  "y": 115
                },
                {
                  "x": "New York",
                  "y": 122
                },
                {
                  "x": "Oklahoma City",
                  "y": 84
                },
                {
                  "x": "Orlando",
                  "y": 117
                },
                {
                  "x": "Philadelphia",
                  "y": 118
                },
                {
                  "x": "Phoenix",
                  "y": 30
                },
                {
                  "x": "Pittsburgh",
                  "y": 151
                },
                {
                  "x": "Portland",
                  "y": 164
                },
                {
                  "x": "Providence",
                  "y": 125
                },
                {
                  "x": "Raleigh",
                  "y": 100
                },
                {
                  "x": "Richmond",
                  "y": 114
                },
                {
                  "x": "Riverside",
                  "y": 30
                },
                {
                  "x": "Rochester",
                  "y": 167
                },
                {
                  "x": "Sacramento",
                  "y": 60
                },
                {
                  "x": "Salt Lake City",
                  "y": 96
                },
                {
                  "x": "San Antonio",
                  "y": 83
                },
                {
                  "x": "San Diego",
                  "y": 42
                },
                {
                  "x": "San Francisco",
                  "y": 68
                },
                {
                  "x": "San Jose",
                  "y": 62
                },
                {
                  "x": "Seattle",
                  "y": 149
                },
                {
                  "x": "St. Louis",
                  "y": 113
                },
                {
                  "x": "Tampa",
                  "y": 105
                },
                {
                  "x": "Virginia Beach",
                  "y": 117
                },
                {
                  "x": "Washington",
                  "y": 114
                }
              ],
              "selectionRanges": [
                {
                  "sourceRowId1": 292,
                  "sourceRowId2": 908,
                  "sourceColumnId1": 988,
                  "sourceColumnId2": 988
                }
              ]
            },
            {
              "title": "Inches",
              "titleInfo": {
                "type": "TEXT_NUMBER"
              },
              "seriesType": "COLUMN",
              "tooltips": {
                "labelType": "X-SERIES-Y"
              },
              "color": "#EA352E",
              "axisLocationX": "BOTTOM",
              "axisLocationY": "LEFT",
              "yColumnInfo": {
                "type": "TEXT_NUMBER"
              },
              "xColumnInfo": {
                "type": "TEXT_NUMBER"
              },
              "seriesData": [
                {
                  "y": 49.7
                },
                {
                  "x": "Austin",
                  "y": 34.2
                },
                {
                  "x": "Baltimore",
                  "y": 41.9
                },
                {
                  "x": "Birmingham",
                  "y": 53.7
                },
                {
                  "x": "Boston",
                  "y": 43.8
                },
                {
                  "x": "Buffalo",
                  "y": 40.5
                },
                {
                  "x": "Charlotte",
                  "y": 41.6
                },
                {
                  "x": "Chicago",
                  "y": 36.9
                },
                {
                  "x": "Cincinnati",
                  "y": 41.9
                },
                {
                  "x": "Cleveland",
                  "y": 39.1
                },
                {
                  "x": "Columbus",
                  "y": 39.3
                },
                {
                  "x": "Dallas",
                  "y": 37.6
                },
                {
                  "x": "Denver",
                  "y": 15.6
                },
                {
                  "x": "Detroit",
                  "y": 33.5
                },
                {
                  "x": "Hartford",
                  "y": 45.9
                },
                {
                  "x": "Houston",
                  "y": 49.8
                },
                {
                  "x": "Indianapolis",
                  "y": 42.4
                },
                {
                  "x": "Jacksonville",
                  "y": 52.4
                },
                {
                  "x": "Kansas City",
                  "y": 39.1
                },
                {
                  "x": "Las Vegas",
                  "y": 4.2
                },
                {
                  "x": "Los Angeles",
                  "y": 12.8
                },
                {
                  "x": "Louisville",
                  "y": 44.9
                },
                {
                  "x": "Memphis",
                  "y": 53.7
                },
                {
                  "x": "Miami",
                  "y": 61.9
                },
                {
                  "x": "Milwaukee",
                  "y": 34.8
                },
                {
                  "x": "Minneapolis",
                  "y": 30.6
                },
                {
                  "x": "Nashville",
                  "y": 47.3
                },
                {
                  "x": "New Orleans",
                  "y": 62.7
                },
                {
                  "x": "New York",
                  "y": 49.9
                },
                {
                  "x": "Oklahoma City",
                  "y": 36.5
                },
                {
                  "x": "Orlando",
                  "y": 50.7
                },
                {
                  "x": "Philadelphia",
                  "y": 41.5
                },
                {
                  "x": "Phoenix",
                  "y": 8.2
                },
                {
                  "x": "Pittsburgh",
                  "y": 38.2
                },
                {
                  "x": "Portland",
                  "y": 43.5
                },
                {
                  "x": "Providence",
                  "y": 47.2
                },
                {
                  "x": "Raleigh",
                  "y": 46
                },
                {
                  "x": "Richmond",
                  "y": 43.6
                },
                {
                  "x": "Riverside",
                  "y": 10.3
                },
                {
                  "x": "Rochester",
                  "y": 34.3
                },
                {
                  "x": "Sacramento",
                  "y": 18.5
                },
                {
                  "x": "Salt Lake City",
                  "y": 16.1
                },
                {
                  "x": "San Antonio",
                  "y": 32.3
                },
                {
                  "x": "San Diego",
                  "y": 10.3
                },
                {
                  "x": "San Francisco",
                  "y": 20.7
                },
                {
                  "x": "San Jose",
                  "y": 15.8
                },
                {
                  "x": "Seattle",
                  "y": 37.7
                },
                {
                  "x": "St. Louis",
                  "y": 41
                },
                {
                  "x": "Tampa",
                  "y": 46.3
                },
                {
                  "x": "Virginia Beach",
                  "y": 46.5
                },
                {
                  "x": "Washington",
                  "y": 39.7
                }
              ],
              "selectionRanges": [
                {
                  "sourceRowId1": 292,
                  "sourceRowId2": 908,
                  "sourceColumnId1": 740,
                  "sourceColumnId2": 740
                }
              ]
            }
          ],
          "axes": [
            {
              "location": "LEFT",
              "includeZero": true
            },
            {
              "location": "BOTTOM"
            }
          ],
          "legend": {
            "location": "RIGHT"
          },
          "sheetId": 524,
          "selectionRanges": [
            {
              "sourceRowId1": 292,
              "sourceRowId2": 908,
              "sourceColumnId1": 612,
              "sourceColumnId2": 740
            }
          ]
        },
        "xPosition": 0,
        "yPosition": 11,
        "width": 4,
        "height": 6,
        "title": "Annual Averages for Total Precipitation By City",
        "showTitleIcon": false,
        "showTitle": true,
        "titleFormat": ",,1,,,,,,,3,,,,,,1,",
        "version": 1
      },
      {
        "id": 644,
        "type": "IMAGE",
        "contents": {
          "type": "IMAGE",
          "hyperlink": {
            "url": "http://www.smartsheet.com",
            "interactionType": "WEB"
          },
          "privateId": "Jppz",
          "height": 48,
          "width": 197,
          "fileName": "smartsheet-logo-blue-197x48.png",
          "format": ",7,1,,,,2,2,1,3,,,,,,1,"
        },
        "xPosition": 4,
        "yPosition": 1,
        "width": 1,
        "height": 4,
        "showTitleIcon": false,
        "showTitle": false,
        "version": 1
      },
      {
        "id": 140,
        "type": "WEBCONTENT",
        "contents": {
          "type": "WidgetWebContent",
          "url": "https://www.youtube.com/"
        },
        "xPosition": 0,
        "yPosition": 17,
        "width": 4,
        "height": 6,
        "showTitleIcon": false,
        "showTitle": true,
        "titleFormat": ",,1,,,,,,,3,,,,,,1,",
        "version": 1
      }
    ],
    "createdAt": "2019-08-07T20:12:02Z",
    "modifiedAt": "2019-08-07T20:12:02Z"
  }
}
```

## Set Sight Publish Status



### Expected Request

#### PUT - /sights/812/publish

#### Headers

* Content-Type: application/json

#### Body

```json
{
  "readOnlyFullAccessibleBy": "ALL",
  "readOnlyFullEnabled": true
}
```

### Response

#### Status - 200 OK

```json
{
  "message": "SUCCESS",
  "resultCode": 0,
  "result": {
    "readOnlyFullEnabled": true,
    "readOnlyFullAccessibleBy": "ALL",
    "readOnlyFullUrl": "https://app.smartsheet.com/b/publish"
  }
}
```

## Get Sight Publish Status



### Expected Request

#### GET - /sights/812/publish

### Response

#### Status - 200 OK

```json
{
  "readOnlyFullEnabled": true,
  "readOnlyFullAccessibleBy": "ALL",
  "readOnlyFullUrl": "https://app.smartsheet.com/b/publish"
}
```

## Delete Sight



### Expected Request

#### DELETE - /sights/700

### Response

#### Status - 200 OK

```json
{
  "message": "SUCCESS",
  "resultCode": 0
}
```

## Deactivate user

Deactivates a user in an organization account.

### Expected Request

#### POST - /users/2/deactivate

#### Headers

* Content-Type: application/json

### Response

#### Status - 200 OK

```json
{
  "message": "SUCCESS",
  "resultCode": 0
}
```

## Reactivate user

Reactivates a user in an organization account.

### Expected Request

#### POST - /users/2/reactivate

#### Headers

* Content-Type: application/json

### Response

#### Status - 200 OK

```json
{
  "message": "SUCCESS",
  "resultCode": 0
}
```

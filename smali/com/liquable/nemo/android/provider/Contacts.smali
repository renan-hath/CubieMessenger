.class public Lcom/liquable/nemo/android/provider/Contacts;
.super Ljava/lang/Object;
.source "Contacts.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static listContactInfos(Landroid/content/Context;)Ljava/util/List;
    .locals 22
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/friend/model/ContactInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    invoke-static/range {p0 .. p0}, Lcom/liquable/nemo/util/FeatureSupport;->isSupportContacts(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 24
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 79
    :cond_0
    :goto_0
    return-object v4

    .line 27
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 28
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 29
    .local v15, "contactInfos":Ljava/util/Set;, "Ljava/util/Set<Lcom/liquable/nemo/friend/model/ContactInfo;>;"
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 30
    .local v2, "uri":Landroid/net/Uri;
    const/4 v4, 0x3

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "lookup"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "display_name"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "photo_id"

    aput-object v5, v3, v4

    .line 33
    .local v3, "projection":[Ljava/lang/String;
    const-string/jumbo v21, "in_visible_group = 1 and has_phone_number = 1 "

    .line 38
    .local v21, "selection":Ljava/lang/String;
    const/16 v16, 0x0

    .line 40
    .local v16, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v4, "in_visible_group = 1 and has_phone_number = 1 "

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 41
    if-nez v16, :cond_2

    .line 42
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v4

    .line 75
    if-eqz v16, :cond_0

    .line 76
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 44
    :cond_2
    :goto_1
    :try_start_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 45
    const-string/jumbo v4, "lookup"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 47
    .local v14, "lookupKey":Ljava/lang/String;
    const-string/jumbo v19, "lookup = ? "

    .line 49
    .local v19, "phoneNumberSelection":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v14, v8, v4

    .line 50
    .local v8, "phoneNumberSelectionArgs":[Ljava/lang/String;
    sget-object v5, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const-string/jumbo v7, "lookup = ? "

    const/4 v9, 0x0

    move-object v4, v1

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v18

    .line 55
    .local v18, "phoneCursor":Landroid/database/Cursor;
    if-eqz v18, :cond_2

    .line 60
    :goto_2
    :try_start_2
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 61
    const-string/jumbo v4, "data1"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 63
    .local v11, "rawPhoneNumber":Ljava/lang/String;
    const-string/jumbo v4, "display_name"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 64
    .local v10, "name":Ljava/lang/String;
    const-string/jumbo v4, "photo_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 65
    .local v20, "photoIdStr":Ljava/lang/String;
    if-nez v20, :cond_3

    const-wide/16 v12, 0x0

    .line 66
    .local v12, "photoId":J
    :goto_3
    new-instance v9, Lcom/liquable/nemo/friend/model/ContactInfo;

    invoke-direct/range {v9 .. v14}, Lcom/liquable/nemo/friend/model/ContactInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    invoke-interface {v15, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 69
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "rawPhoneNumber":Ljava/lang/String;
    .end local v12    # "photoId":J
    .end local v20    # "photoIdStr":Ljava/lang/String;
    :catchall_0
    move-exception v4

    :try_start_3
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    throw v4
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 72
    .end local v8    # "phoneNumberSelectionArgs":[Ljava/lang/String;
    .end local v14    # "lookupKey":Ljava/lang/String;
    .end local v18    # "phoneCursor":Landroid/database/Cursor;
    .end local v19    # "phoneNumberSelection":Ljava/lang/String;
    :catch_0
    move-exception v17

    .line 73
    .local v17, "ignore":Ljava/lang/NullPointerException;
    :try_start_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v4

    .line 75
    if-eqz v16, :cond_0

    .line 76
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 65
    .end local v17    # "ignore":Ljava/lang/NullPointerException;
    .restart local v8    # "phoneNumberSelectionArgs":[Ljava/lang/String;
    .restart local v10    # "name":Ljava/lang/String;
    .restart local v11    # "rawPhoneNumber":Ljava/lang/String;
    .restart local v14    # "lookupKey":Ljava/lang/String;
    .restart local v18    # "phoneCursor":Landroid/database/Cursor;
    .restart local v19    # "phoneNumberSelection":Ljava/lang/String;
    .restart local v20    # "photoIdStr":Ljava/lang/String;
    :cond_3
    :try_start_5
    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-wide v12

    goto :goto_3

    .line 69
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "rawPhoneNumber":Ljava/lang/String;
    .end local v20    # "photoIdStr":Ljava/lang/String;
    :cond_4
    :try_start_6
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_1

    .line 75
    .end local v8    # "phoneNumberSelectionArgs":[Ljava/lang/String;
    .end local v14    # "lookupKey":Ljava/lang/String;
    .end local v18    # "phoneCursor":Landroid/database/Cursor;
    .end local v19    # "phoneNumberSelection":Ljava/lang/String;
    :catchall_1
    move-exception v4

    if-eqz v16, :cond_5

    .line 76
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v4

    .line 75
    :cond_6
    if-eqz v16, :cond_7

    .line 76
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 79
    :cond_7
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/16 :goto_0
.end method

.method public static listStrequentContactInfos(Landroid/content/Context;)Ljava/util/List;
    .locals 28
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/android/provider/StrequentContactInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    invoke-static/range {p0 .. p0}, Lcom/liquable/nemo/util/FeatureSupport;->isSupportContacts(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 85
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 164
    :goto_0
    return-object v7

    .line 88
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 89
    .local v4, "contentResolver":Landroid/content/ContentResolver;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v14, "contactInfos":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/android/provider/StrequentContactInfo;>;"
    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_STREQUENT_URI:Landroid/net/Uri;

    .line 91
    .local v5, "uri":Landroid/net/Uri;
    const/4 v7, 0x4

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "starred"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "lookup"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "display_name"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string/jumbo v8, "photo_id"

    aput-object v8, v6, v7

    .line 95
    .local v6, "projection":[Ljava/lang/String;
    const-string/jumbo v26, "in_visible_group = 1 and has_phone_number = 1 "

    .line 100
    .local v26, "selection":Ljava/lang/String;
    const/4 v15, 0x0

    .line 102
    .local v15, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v7, "in_visible_group = 1 and has_phone_number = 1 "

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 103
    if-nez v15, :cond_1

    .line 104
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_0

    .line 108
    :cond_1
    :goto_1
    :try_start_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 109
    const-string/jumbo v7, "lookup"

    invoke-interface {v15, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v15, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 111
    .local v18, "lookupKey":Ljava/lang/String;
    const-string/jumbo v21, "lookup = ? "

    .line 113
    .local v21, "phoneNumberSelection":Ljava/lang/String;
    const/4 v7, 0x1

    new-array v11, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v18, v11, v7

    .line 114
    .local v11, "phoneNumberSelectionArgs":[Ljava/lang/String;
    sget-object v8, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    const-string/jumbo v10, "lookup = ? "

    const/4 v12, 0x0

    move-object v7, v4

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v20

    .line 119
    .local v20, "phoneCursor":Landroid/database/Cursor;
    if-eqz v20, :cond_1

    .line 124
    :try_start_2
    const-string/jumbo v7, "display_name"

    invoke-interface {v15, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v15, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 125
    .local v19, "name":Ljava/lang/String;
    const-string/jumbo v7, "photo_id"

    invoke-interface {v15, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v15, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 126
    .local v24, "photoIdStr":Ljava/lang/String;
    if-nez v24, :cond_8

    const-wide/16 v22, 0x0

    .line 127
    .local v22, "photoId":J
    :goto_2
    new-instance v13, Lcom/liquable/nemo/android/provider/StrequentContactInfo;

    move-object/from16 v0, v19

    move-wide/from16 v1, v22

    move-object/from16 v3, v18

    invoke-direct {v13, v0, v1, v2, v3}, Lcom/liquable/nemo/android/provider/StrequentContactInfo;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 131
    .local v13, "contactInfo":Lcom/liquable/nemo/android/provider/StrequentContactInfo;
    :cond_2
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 132
    const-string/jumbo v7, "data1"

    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 134
    .local v25, "rawPhoneNumber":Ljava/lang/String;
    const-string/jumbo v7, "data2"

    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 135
    .local v27, "type":I
    const-string/jumbo v7, "data3"

    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 136
    .local v17, "label":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 137
    invoke-static/range {v27 .. v27}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 140
    :cond_3
    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v13, v0, v1}, Lcom/liquable/nemo/android/provider/StrequentContactInfo;->addNumber(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {v13}, Lcom/liquable/nemo/android/provider/StrequentContactInfo;->getNumbers()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x5

    if-le v7, v8, :cond_2

    .line 146
    .end local v17    # "label":Ljava/lang/String;
    .end local v25    # "rawPhoneNumber":Ljava/lang/String;
    .end local v27    # "type":I
    :cond_4
    invoke-virtual {v13}, Lcom/liquable/nemo/android/provider/StrequentContactInfo;->hasNumber()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 147
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 150
    :cond_5
    :try_start_3
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 154
    .end local v11    # "phoneNumberSelectionArgs":[Ljava/lang/String;
    .end local v13    # "contactInfo":Lcom/liquable/nemo/android/provider/StrequentContactInfo;
    .end local v18    # "lookupKey":Ljava/lang/String;
    .end local v19    # "name":Ljava/lang/String;
    .end local v20    # "phoneCursor":Landroid/database/Cursor;
    .end local v21    # "phoneNumberSelection":Ljava/lang/String;
    .end local v22    # "photoId":J
    .end local v24    # "photoIdStr":Ljava/lang/String;
    :catchall_0
    move-exception v7

    if-eqz v15, :cond_6

    .line 155
    :try_start_4
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v7
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 158
    :catch_0
    move-exception v16

    .line 160
    .local v16, "e":Landroid/database/sqlite/SQLiteException;
    if-eqz v15, :cond_7

    .line 161
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 164
    .end local v16    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_7
    :goto_3
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/16 :goto_0

    .line 126
    .restart local v11    # "phoneNumberSelectionArgs":[Ljava/lang/String;
    .restart local v18    # "lookupKey":Ljava/lang/String;
    .restart local v19    # "name":Ljava/lang/String;
    .restart local v20    # "phoneCursor":Landroid/database/Cursor;
    .restart local v21    # "phoneNumberSelection":Ljava/lang/String;
    .restart local v24    # "photoIdStr":Ljava/lang/String;
    :cond_8
    :try_start_5
    invoke-static/range {v24 .. v24}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-wide v22

    goto/16 :goto_2

    .line 150
    .end local v19    # "name":Ljava/lang/String;
    .end local v24    # "photoIdStr":Ljava/lang/String;
    :catchall_1
    move-exception v7

    :try_start_6
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 154
    .end local v11    # "phoneNumberSelectionArgs":[Ljava/lang/String;
    .end local v18    # "lookupKey":Ljava/lang/String;
    .end local v20    # "phoneCursor":Landroid/database/Cursor;
    .end local v21    # "phoneNumberSelection":Ljava/lang/String;
    :cond_9
    if-eqz v15, :cond_7

    .line 155
    :try_start_7
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_3
.end method

.class public Lcom/liquable/nemo/message/export/MessageExportManager;
.super Ljava/lang/Object;
.source "MessageExportManager.java"


# static fields
.field private static final EXPORT_BATCH_SIZE:I = 0x1f4


# instance fields
.field private final accountDao:Lcom/liquable/nemo/db/AccountDao;

.field private final messageDao:Lcom/liquable/nemo/db/MessageDao;

.field private final nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

.field private final pref:Lcom/liquable/nemo/util/Pref;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/util/Pref;Lcom/liquable/nemo/db/MessageDao;Lcom/liquable/nemo/db/AccountDao;Lcom/liquable/nemo/storage/NemoFileService;)V
    .locals 0
    .param p1, "pref"    # Lcom/liquable/nemo/util/Pref;
    .param p2, "messageDao"    # Lcom/liquable/nemo/db/MessageDao;
    .param p3, "accountDao"    # Lcom/liquable/nemo/db/AccountDao;
    .param p4, "nemoFileService"    # Lcom/liquable/nemo/storage/NemoFileService;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/liquable/nemo/message/export/MessageExportManager;->pref:Lcom/liquable/nemo/util/Pref;

    .line 46
    iput-object p2, p0, Lcom/liquable/nemo/message/export/MessageExportManager;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    .line 47
    iput-object p3, p0, Lcom/liquable/nemo/message/export/MessageExportManager;->accountDao:Lcom/liquable/nemo/db/AccountDao;

    .line 48
    iput-object p4, p0, Lcom/liquable/nemo/message/export/MessageExportManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    .line 49
    return-void
.end method

.method private createHtmlHeader(Lcom/liquable/nemo/group/model/ChatGroup;)Ljava/lang/String;
    .locals 2
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    const-string/jumbo v1, "<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    const-string/jumbo v1, "<head>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    const-string/jumbo v1, "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    const-string/jumbo v1, "<STYLE type=\"text/css\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string/jumbo v1, ".italic-font {font-style:italic}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const-string/jumbo v1, "table { border: solid 1px #CCC;  border-spacing: 1px;  border-collapse: separate; }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string/jumbo v1, "th { padding: 5px;background-color: #C8C5C1;  background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#DCDAD8), to(#C8C5C1));  background: -webkit-linear-gradient(top, #DCDAD8, #C8C5C1);  background: -moz-linear-gradient(top, #DCDAD8, #C8C5C1);    background: -ms-linear-gradient(top, #DCDAD8, #C8C5C1);  background: -o-linear-gradient(top, #DCDAD8, #C8C5C1); }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const-string/jumbo v1, "tr.even {background-color: #d6d6d8;}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string/jumbo v1, "tr.odd {background-color: #ebebeb;}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    const-string/jumbo v1, "td { padding: 5px;border-top: solid 1px #DCDAD8; }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string/jumbo v1, "</STYLE>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string/jumbo v1, "</head>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string/jumbo v1, "<body>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const-string/jumbo v1, "<h1>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string/jumbo v1, "</h1>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string/jumbo v1, "<table>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const-string/jumbo v1, "<tr><th width=\"20%\">Date</th><th width=\"20%\">Sender</th><th width=\"60%\">Message</th></tr>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private filterSecretMessage(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/DomainMessage;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/DomainMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "input":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/DomainMessage;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v1, "output":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/DomainMessage;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/message/model/DomainMessage;

    .line 128
    .local v0, "message":Lcom/liquable/nemo/message/model/DomainMessage;
    instance-of v3, v0, Lcom/liquable/nemo/message/model/ISecret;

    if-nez v3, :cond_0

    .line 132
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 134
    .end local v0    # "message":Lcom/liquable/nemo/message/model/DomainMessage;
    :cond_1
    return-object v1
.end method

.method private writeMessages(Landroid/content/Context;Ljava/text/DateFormat;Ljava/util/List;Ljava/io/OutputStream;Ljava/util/Map;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dateTimeInstance"    # Ljava/text/DateFormat;
    .param p4, "out"    # Ljava/io/OutputStream;
    .param p6, "currentIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/text/DateFormat;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/DomainMessage;",
            ">;",
            "Ljava/io/OutputStream;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    .local p3, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/DomainMessage;>;"
    .local p5, "senderNameMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_3

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .local v1, "builder":Ljava/lang/StringBuilder;
    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liquable/nemo/message/model/DomainMessage;

    .line 147
    .local v3, "domainMessage":Lcom/liquable/nemo/message/model/DomainMessage;
    invoke-virtual {v3}, Lcom/liquable/nemo/message/model/DomainMessage;->getSenderId()Ljava/lang/String;

    move-result-object v5

    .line 148
    .local v5, "senderId":Ljava/lang/String;
    invoke-interface {p5, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    .line 151
    .local v2, "containsSender":Z
    if-nez v2, :cond_1

    .line 152
    iget-object v7, p0, Lcom/liquable/nemo/message/export/MessageExportManager;->accountDao:Lcom/liquable/nemo/db/AccountDao;

    invoke-virtual {v7, v5}, Lcom/liquable/nemo/db/AccountDao;->findById(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v0

    .line 153
    .local v0, "account":Lcom/liquable/nemo/friend/model/Account;
    if-nez v0, :cond_0

    .line 154
    const-string/jumbo v6, "?"

    .line 158
    .local v6, "senderName":Ljava/lang/String;
    :goto_1
    invoke-interface {p5, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .end local v0    # "account":Lcom/liquable/nemo/friend/model/Account;
    :goto_2
    add-int v7, p6, v4

    rem-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_2

    .line 164
    const-string/jumbo v7, "<tr class=\"even\">"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    :goto_3
    const-string/jumbo v7, "<td>"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v3}, Lcom/liquable/nemo/message/model/DomainMessage;->getCreateTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    const-string/jumbo v7, "</td>"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    const-string/jumbo v7, "<td>"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    const-string/jumbo v7, "</td>"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    const-string/jumbo v7, "<td>"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v3, p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getBackupMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    const-string/jumbo v7, "</td>"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    const-string/jumbo v7, "</tr>"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p4}, Lorg/apache/commons/io/IOUtils;->write(Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 144
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 156
    .end local v6    # "senderName":Ljava/lang/String;
    .restart local v0    # "account":Lcom/liquable/nemo/friend/model/Account;
    :cond_0
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getScreenName()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "senderName":Ljava/lang/String;
    goto :goto_1

    .line 160
    .end local v0    # "account":Lcom/liquable/nemo/friend/model/Account;
    .end local v6    # "senderName":Ljava/lang/String;
    :cond_1
    invoke-interface {p5, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .restart local v6    # "senderName":Ljava/lang/String;
    goto :goto_2

    .line 166
    :cond_2
    const-string/jumbo v7, "<tr class=\"odd\">"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 180
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "containsSender":Z
    .end local v3    # "domainMessage":Lcom/liquable/nemo/message/model/DomainMessage;
    .end local v5    # "senderId":Ljava/lang/String;
    .end local v6    # "senderName":Ljava/lang/String;
    :cond_3
    return-void
.end method


# virtual methods
.method public exportChatGroupMessage(Landroid/content/Context;Lcom/liquable/nemo/group/model/ChatGroup;)Ljava/io/File;
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    .line 77
    const/4 v13, 0x0

    .line 78
    .local v13, "out":Ljava/util/zip/ZipOutputStream;
    iget-object v1, p0, Lcom/liquable/nemo/message/export/MessageExportManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    const-string/jumbo v2, "backup.zip"

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/storage/NemoFileService;->getTempFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    .line 79
    .local v8, "backupFile":Ljava/io/File;
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v3

    .line 80
    .local v3, "dateTimeInstance":Ljava/text/DateFormat;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 81
    .local v6, "senderNameMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/liquable/nemo/message/export/MessageExportManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/message/export/MessageExportManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :try_start_0
    new-instance v5, Ljava/util/zip/ZipOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .end local v13    # "out":Ljava/util/zip/ZipOutputStream;
    .local v5, "out":Ljava/util/zip/ZipOutputStream;
    :try_start_1
    new-instance v12, Ljava/util/zip/ZipEntry;

    const-string/jumbo v1, "backup.html"

    invoke-direct {v12, v1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 86
    .local v12, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v5, v12}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 88
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/liquable/nemo/message/export/MessageExportManager;->createHtmlHeader(Lcom/liquable/nemo/group/model/ChatGroup;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Lorg/apache/commons/io/IOUtils;->write(Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 90
    const/4 v10, 0x0

    .line 92
    .local v10, "countA":I
    :goto_0
    mul-int/lit16 v7, v10, 0x1f4

    .line 93
    .local v7, "offset":I
    iget-object v1, p0, Lcom/liquable/nemo/message/export/MessageExportManager;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    invoke-virtual/range {p2 .. p2}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v2

    const/16 v14, 0x1f4

    invoke-virtual {v1, v2, v14, v7}, Lcom/liquable/nemo/db/MessageDao;->listArchivedByChatGroupAsc(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/liquable/nemo/message/export/MessageExportManager;->filterSecretMessage(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 96
    .local v4, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/DomainMessage;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 102
    const/4 v9, 0x0

    .line 104
    .local v9, "count":I
    :goto_1
    mul-int/lit16 v7, v9, 0x1f4

    .line 105
    iget-object v1, p0, Lcom/liquable/nemo/message/export/MessageExportManager;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    invoke-virtual/range {p2 .. p2}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v2

    const/16 v14, 0x1f4

    invoke-virtual {v1, v2, v14, v7}, Lcom/liquable/nemo/db/MessageDao;->listByChatGroupAsc(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/liquable/nemo/message/export/MessageExportManager;->filterSecretMessage(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 108
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 114
    const-string/jumbo v1, "</table></body></html>"

    invoke-static {v1, v5}, Lorg/apache/commons/io/IOUtils;->write(Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 115
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 120
    invoke-static {v5}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 122
    .end local v4    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/DomainMessage;>;"
    .end local v7    # "offset":I
    .end local v8    # "backupFile":Ljava/io/File;
    .end local v9    # "count":I
    .end local v10    # "countA":I
    .end local v12    # "entry":Ljava/util/zip/ZipEntry;
    :goto_2
    return-object v8

    .restart local v4    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/DomainMessage;>;"
    .restart local v7    # "offset":I
    .restart local v8    # "backupFile":Ljava/io/File;
    .restart local v10    # "countA":I
    .restart local v12    # "entry":Ljava/util/zip/ZipEntry;
    :cond_0
    move-object v1, p0

    move-object/from16 v2, p1

    .line 99
    :try_start_2
    invoke-direct/range {v1 .. v7}, Lcom/liquable/nemo/message/export/MessageExportManager;->writeMessages(Landroid/content/Context;Ljava/text/DateFormat;Ljava/util/List;Ljava/io/OutputStream;Ljava/util/Map;I)V

    .line 100
    add-int/lit8 v10, v10, 0x1

    .line 101
    goto :goto_0

    .restart local v9    # "count":I
    :cond_1
    move-object v1, p0

    move-object/from16 v2, p1

    .line 111
    invoke-direct/range {v1 .. v7}, Lcom/liquable/nemo/message/export/MessageExportManager;->writeMessages(Landroid/content/Context;Ljava/text/DateFormat;Ljava/util/List;Ljava/io/OutputStream;Ljava/util/Map;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 112
    add-int/lit8 v9, v9, 0x1

    .line 113
    goto :goto_1

    .line 117
    .end local v4    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/DomainMessage;>;"
    .end local v5    # "out":Ljava/util/zip/ZipOutputStream;
    .end local v7    # "offset":I
    .end local v9    # "count":I
    .end local v10    # "countA":I
    .end local v12    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v13    # "out":Ljava/util/zip/ZipOutputStream;
    :catch_0
    move-exception v11

    move-object v5, v13

    .line 118
    .end local v13    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v5    # "out":Ljava/util/zip/ZipOutputStream;
    .local v11, "e":Ljava/io/IOException;
    :goto_3
    :try_start_3
    invoke-static {}, Lcom/liquable/nemo/util/Logger;->getInstance()Lcom/liquable/nemo/util/Logger;

    move-result-object v1

    const-string/jumbo v2, "write chatgroup back failed"

    invoke-virtual {v1, v2, v11}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 120
    invoke-static {v5}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 122
    const/4 v8, 0x0

    goto :goto_2

    .line 120
    .end local v5    # "out":Ljava/util/zip/ZipOutputStream;
    .end local v11    # "e":Ljava/io/IOException;
    .restart local v13    # "out":Ljava/util/zip/ZipOutputStream;
    :catchall_0
    move-exception v1

    move-object v5, v13

    .end local v13    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v5    # "out":Ljava/util/zip/ZipOutputStream;
    :goto_4
    invoke-static {v5}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v1

    :catchall_1
    move-exception v1

    goto :goto_4

    .line 117
    :catch_1
    move-exception v11

    goto :goto_3
.end method

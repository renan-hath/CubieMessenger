.class public Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;
.super Ljava/lang/Object;
.source "FacebookSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/facebook/FacebookSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FacebookReadRequest"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/facebook/FacebookSession;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/facebook/FacebookSession;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/facebook/FacebookSession;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;->this$0:Lcom/liquable/nemo/facebook/FacebookSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private dialog(Landroid/content/Context;Landroid/os/Bundle;Lcom/liquable/nemo/facebook/FacebookSession$IFacebookDialogCallback;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "facebookDialogCallback"    # Lcom/liquable/nemo/facebook/FacebookSession$IFacebookDialogCallback;

    .prologue
    .line 70
    new-instance v1, Lcom/facebook/widget/WebDialog$FeedDialogBuilder;

    iget-object v2, p0, Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;->this$0:Lcom/liquable/nemo/facebook/FacebookSession;

    .line 71
    # getter for: Lcom/liquable/nemo/facebook/FacebookSession;->session:Lcom/facebook/Session;
    invoke-static {v2}, Lcom/liquable/nemo/facebook/FacebookSession;->access$200(Lcom/liquable/nemo/facebook/FacebookSession;)Lcom/facebook/Session;

    move-result-object v2

    invoke-direct {v1, p1, v2, p2}, Lcom/facebook/widget/WebDialog$FeedDialogBuilder;-><init>(Landroid/content/Context;Lcom/facebook/Session;Landroid/os/Bundle;)V

    new-instance v2, Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest$1;

    invoke-direct {v2, p0, p3}, Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest$1;-><init>(Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;Lcom/liquable/nemo/facebook/FacebookSession$IFacebookDialogCallback;)V

    .line 72
    invoke-virtual {v1, v2}, Lcom/facebook/widget/WebDialog$FeedDialogBuilder;->setOnCompleteListener(Lcom/facebook/widget/WebDialog$OnCompleteListener;)Lcom/facebook/widget/WebDialog$BuilderBase;

    move-result-object v1

    check-cast v1, Lcom/facebook/widget/WebDialog$FeedDialogBuilder;

    .line 96
    invoke-virtual {v1}, Lcom/facebook/widget/WebDialog$FeedDialogBuilder;->build()Lcom/facebook/widget/WebDialog;

    move-result-object v0

    .line 97
    .local v0, "dialog":Lcom/facebook/widget/WebDialog;
    invoke-virtual {v0}, Lcom/facebook/widget/WebDialog;->show()V

    .line 98
    return-void
.end method


# virtual methods
.method public dialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/facebook/FacebookSession$IFacebookDialogCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "caption"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "link"    # Ljava/lang/String;
    .param p6, "facebookDialogCallback"    # Lcom/liquable/nemo/facebook/FacebookSession$IFacebookDialogCallback;

    .prologue
    .line 106
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 107
    .local v0, "params":Landroid/os/Bundle;
    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string/jumbo v1, "caption"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string/jumbo v1, "description"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string/jumbo v1, "link"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-direct {p0, p1, v0, p6}, Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;->dialog(Landroid/content/Context;Landroid/os/Bundle;Lcom/liquable/nemo/facebook/FacebookSession$IFacebookDialogCallback;)V

    .line 112
    return-void
.end method

.method public dialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/facebook/FacebookSession$IFacebookDialogCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "to"    # Ljava/lang/String;
    .param p3, "caption"    # Ljava/lang/String;
    .param p4, "description"    # Ljava/lang/String;
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "link"    # Ljava/lang/String;
    .param p7, "facebookDialogCallback"    # Lcom/liquable/nemo/facebook/FacebookSession$IFacebookDialogCallback;

    .prologue
    .line 121
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 122
    .local v0, "params":Landroid/os/Bundle;
    const-string/jumbo v1, "to"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string/jumbo v1, "caption"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string/jumbo v1, "description"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string/jumbo v1, "link"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-direct {p0, p1, v0, p7}, Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;->dialog(Landroid/content/Context;Landroid/os/Bundle;Lcom/liquable/nemo/facebook/FacebookSession$IFacebookDialogCallback;)V

    .line 128
    return-void
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;->this$0:Lcom/liquable/nemo/facebook/FacebookSession;

    # getter for: Lcom/liquable/nemo/facebook/FacebookSession;->session:Lcom/facebook/Session;
    invoke-static {v0}, Lcom/liquable/nemo/facebook/FacebookSession;->access$200(Lcom/liquable/nemo/facebook/FacebookSession;)Lcom/facebook/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public listFriends()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/friend/facebook/FacebookFriend;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/facebook/FacebookAsyncException;
        }
    .end annotation

    .prologue
    .line 135
    iget-object v5, p0, Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;->this$0:Lcom/liquable/nemo/facebook/FacebookSession;

    const-string/jumbo v6, "me/friends"

    # invokes: Lcom/liquable/nemo/facebook/FacebookSession;->queryDataList(Ljava/lang/String;)Lcom/facebook/model/GraphObjectList;
    invoke-static {v5, v6}, Lcom/liquable/nemo/facebook/FacebookSession;->access$300(Lcom/liquable/nemo/facebook/FacebookSession;Ljava/lang/String;)Lcom/facebook/model/GraphObjectList;

    move-result-object v3

    .line 137
    .local v3, "graphObjs":Lcom/facebook/model/GraphObjectList;, "Lcom/facebook/model/GraphObjectList<Lcom/facebook/model/GraphObject;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v3}, Lcom/facebook/model/GraphObjectList;->size()I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 138
    .local v1, "friends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/facebook/FacebookFriend;>;"
    invoke-interface {v3}, Lcom/facebook/model/GraphObjectList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/model/GraphObject;

    .line 139
    .local v2, "graphObj":Lcom/facebook/model/GraphObject;
    const-string/jumbo v6, "id"

    invoke-interface {v2, v6}, Lcom/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 140
    .local v0, "fbuid":Ljava/lang/String;
    const-string/jumbo v6, "name"

    invoke-interface {v2, v6}, Lcom/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 141
    .local v4, "name":Ljava/lang/String;
    new-instance v6, Lcom/liquable/nemo/friend/facebook/FacebookFriend;

    invoke-direct {v6, v0, v4}, Lcom/liquable/nemo/friend/facebook/FacebookFriend;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 144
    .end local v0    # "fbuid":Ljava/lang/String;
    .end local v2    # "graphObj":Lcom/facebook/model/GraphObject;
    .end local v4    # "name":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public logout()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;->this$0:Lcom/liquable/nemo/facebook/FacebookSession;

    # invokes: Lcom/liquable/nemo/facebook/FacebookSession;->logout()V
    invoke-static {v0}, Lcom/liquable/nemo/facebook/FacebookSession;->access$400(Lcom/liquable/nemo/facebook/FacebookSession;)V

    .line 149
    return-void
.end method

.method public me()Lcom/liquable/nemo/facebook/FacebookUser;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/facebook/FacebookAsyncException;
        }
    .end annotation

    .prologue
    .line 152
    iget-object v2, p0, Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;->this$0:Lcom/liquable/nemo/facebook/FacebookSession;

    const-string/jumbo v3, "me"

    # invokes: Lcom/liquable/nemo/facebook/FacebookSession;->query(Ljava/lang/String;)Lcom/facebook/model/GraphObject;
    invoke-static {v2, v3}, Lcom/liquable/nemo/facebook/FacebookSession;->access$500(Lcom/liquable/nemo/facebook/FacebookSession;Ljava/lang/String;)Lcom/facebook/model/GraphObject;

    move-result-object v1

    .line 154
    .local v1, "graphObj":Lcom/facebook/model/GraphObject;
    :try_start_0
    new-instance v2, Lcom/liquable/nemo/facebook/FacebookUser;

    invoke-direct {v2, v1}, Lcom/liquable/nemo/facebook/FacebookUser;-><init>(Lcom/facebook/model/GraphObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 155
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/liquable/nemo/facebook/FacebookSession;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/facebook/FacebookSession;->access$100()Lcom/liquable/nemo/util/Logger;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;)V

    .line 158
    invoke-static {}, Lcom/liquable/nemo/analytics/CrittercismService;->getInstance()Lcom/liquable/nemo/analytics/CrittercismService;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/liquable/nemo/analytics/CrittercismService;->logException(Ljava/lang/Throwable;)V

    .line 159
    new-instance v2, Lcom/liquable/nemo/facebook/FacebookAsyncException;

    invoke-direct {v2}, Lcom/liquable/nemo/facebook/FacebookAsyncException;-><init>()V

    throw v2
.end method

.class public Lcom/liquable/nemo/notice/ConfirmFriendNotice;
.super Lcom/liquable/nemo/notice/BaseFriendNotice;
.source "ConfirmFriendNotice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# instance fields
.field private final friendId:Ljava/lang/String;

.field private final from:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .param p1, "friendId"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "friendId"
        .end annotation
    .end param
    .param p2, "noticeTime"    # J
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "noticeTime"
        .end annotation
    .end param
    .param p4, "from"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "from"
        .end annotation
    .end param
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/liquable/nemo/notice/BaseFriendNotice;-><init>(Ljava/lang/String;J)V

    .line 45
    iput-object p1, p0, Lcom/liquable/nemo/notice/ConfirmFriendNotice;->friendId:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lcom/liquable/nemo/notice/ConfirmFriendNotice;->from:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public static create(Ljava/lang/String;JLcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;)Lcom/liquable/nemo/notice/ConfirmFriendNotice;
    .locals 2
    .param p0, "friendId"    # Ljava/lang/String;
    .param p1, "noticeTime"    # J
    .param p3, "confirmFriendType"    # Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;

    .prologue
    .line 33
    new-instance v0, Lcom/liquable/nemo/notice/ConfirmFriendNotice;

    invoke-virtual {p3}, Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/liquable/nemo/notice/ConfirmFriendNotice;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getDisplayTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 51
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    iget-object v5, p0, Lcom/liquable/nemo/notice/ConfirmFriendNotice;->friendId:Ljava/lang/String;

    invoke-virtual {v3, p1, v5}, Lcom/liquable/nemo/friend/model/FriendManager;->getNickname(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "friendName":Ljava/lang/String;
    invoke-static {}, Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;->values()[Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;

    move-result-object v2

    .line 54
    .local v2, "values":[Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;
    array-length v5, v2

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, v2, v3

    .line 55
    .local v0, "confirmFriendType":Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;
    iget-object v6, p0, Lcom/liquable/nemo/notice/ConfirmFriendNotice;->from:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 56
    # getter for: Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;->i18nKey:I
    invoke-static {v0}, Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;->access$000(Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v1, v5, v4

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 60
    .end local v0    # "confirmFriendType":Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;
    :goto_1
    return-object v3

    .line 54
    .restart local v0    # "confirmFriendType":Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 60
    .end local v0    # "confirmFriendType":Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;
    :cond_1
    const v3, 0x7f0d0122

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v1, v5, v4

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/liquable/nemo/notice/ConfirmFriendNotice;->from:Ljava/lang/String;

    return-object v0
.end method

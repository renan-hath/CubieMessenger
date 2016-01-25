.class public Lcom/liquable/nemo/notice/InviteFriendNotice;
.super Lcom/liquable/nemo/notice/BaseFriendNotice;
.source "InviteFriendNotice.java"


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# instance fields
.field private final friendId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;J)V
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
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/liquable/nemo/notice/BaseFriendNotice;-><init>(Ljava/lang/String;J)V

    .line 25
    iput-object p1, p0, Lcom/liquable/nemo/notice/InviteFriendNotice;->friendId:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public static create(Ljava/lang/String;J)Lcom/liquable/nemo/notice/InviteFriendNotice;
    .locals 1
    .param p0, "friendId"    # Ljava/lang/String;
    .param p1, "noticeTime"    # J

    .prologue
    .line 16
    new-instance v0, Lcom/liquable/nemo/notice/InviteFriendNotice;

    invoke-direct {v0, p0, p1, p2}, Lcom/liquable/nemo/notice/InviteFriendNotice;-><init>(Ljava/lang/String;J)V

    return-object v0
.end method


# virtual methods
.method public getDisplayTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    iget-object v2, p0, Lcom/liquable/nemo/notice/InviteFriendNotice;->friendId:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/liquable/nemo/friend/model/FriendManager;->getNickname(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "friendName":Ljava/lang/String;
    const v1, 0x7f0d0421

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

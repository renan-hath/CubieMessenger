.class public Lcom/liquable/nemo/notice/ExistingSystemNotice;
.super Ljava/lang/Object;
.source "ExistingSystemNotice.java"


# static fields
.field public static final PROJECTION:[Ljava/lang/String;

.field public static final TABLE_NAME:Ljava/lang/String; = "EXISTING_SYSTEM_NOTICE"

.field public static final _SYSTEM_ID:Ljava/lang/String; = "ESN_SYSTEM_ID"


# instance fields
.field private systemId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 11
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "ESN_SYSTEM_ID"

    aput-object v2, v0, v1

    sput-object v0, Lcom/liquable/nemo/notice/ExistingSystemNotice;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "systemId"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/liquable/nemo/notice/ExistingSystemNotice;->systemId:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public createContentValues()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 20
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 21
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v1, "ESN_SYSTEM_ID"

    iget-object v2, p0, Lcom/liquable/nemo/notice/ExistingSystemNotice;->systemId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 27
    if-ne p0, p1, :cond_1

    .line 44
    :cond_0
    :goto_0
    return v1

    .line 30
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 31
    goto :goto_0

    .line 33
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 34
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 36
    check-cast v0, Lcom/liquable/nemo/notice/ExistingSystemNotice;

    .line 37
    .local v0, "other":Lcom/liquable/nemo/notice/ExistingSystemNotice;
    iget-object v3, p0, Lcom/liquable/nemo/notice/ExistingSystemNotice;->systemId:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 38
    iget-object v3, v0, Lcom/liquable/nemo/notice/ExistingSystemNotice;->systemId:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 39
    goto :goto_0

    .line 41
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/notice/ExistingSystemNotice;->systemId:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/notice/ExistingSystemNotice;->systemId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 42
    goto :goto_0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/liquable/nemo/notice/ExistingSystemNotice;->systemId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 53
    const/16 v0, 0x1f

    .line 54
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 55
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/notice/ExistingSystemNotice;->systemId:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 56
    return v1

    .line 55
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/notice/ExistingSystemNotice;->systemId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0
    .param p1, "systemId"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/liquable/nemo/notice/ExistingSystemNotice;->systemId:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ExistingSystemNotice [systemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/notice/ExistingSystemNotice;->systemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

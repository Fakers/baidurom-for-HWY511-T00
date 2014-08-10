.class public Lcom/mediatek/common/agps/MtkAgpsProfileManager;
.super Ljava/lang/Object;
.source "MtkAgpsProfileManager.java"


# instance fields
.field private mAgpsEnable:Z

.field private mAgpsProfileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/agps/MtkAgpsProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mCaEnable:Z

.field private mCdmaProfileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mCpGeminiPrefSim:I

.field private mCpUpSelection:Z

.field private mDefaultCdmaProfile:Ljava/lang/String;

.field private mDefaultProfileName:Ljava/lang/String;

.field private mDisableAfterReboot:Z

.field private mEcidStatus:Z

.field private mEvdoPrefer:I

.field private mGpevt:Z

.field private mLogFileMaxNum:I

.field private mNiRequest:Z

.field private mNotifyTimeout:I

.field private mPmtk997_5:Z

.field private mRoamingEnable:Z

.field private mSiMode:I

.field private mSuplVersion:I

.field private mVerifyTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mAgpsProfileList:Ljava/util/List;

    .line 58
    iput-boolean v1, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mDisableAfterReboot:Z

    .line 59
    iput v2, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mSiMode:I

    .line 60
    iput-boolean v2, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mCaEnable:Z

    .line 61
    iput-boolean v2, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mNiRequest:Z

    .line 62
    iput-boolean v2, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mAgpsEnable:Z

    .line 63
    const/16 v0, 0xa

    iput v0, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mLogFileMaxNum:I

    .line 64
    iput v2, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mCpGeminiPrefSim:I

    .line 65
    iput-boolean v1, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mRoamingEnable:Z

    .line 66
    iput-object v4, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mDefaultProfileName:Ljava/lang/String;

    .line 67
    iput-boolean v1, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mCpUpSelection:Z

    .line 68
    iput v3, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mNotifyTimeout:I

    .line 69
    iput v3, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mVerifyTimeout:I

    .line 70
    iput-boolean v1, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mEcidStatus:Z

    .line 71
    iput-boolean v1, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mPmtk997_5:Z

    .line 72
    iput-boolean v1, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mGpevt:Z

    .line 73
    iput v2, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mSuplVersion:I

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mCdmaProfileList:Ljava/util/List;

    .line 76
    iput-object v4, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mDefaultCdmaProfile:Ljava/lang/String;

    .line 77
    iput v1, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mEvdoPrefer:I

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 441
    const-string v0, "[MtkAgpsManagerService]"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    return-void
.end method


# virtual methods
.method public dumpFile(Ljava/lang/String;)V
    .locals 6
    .parameter "path"

    .prologue
    .line 206
    const/4 v2, 0x0

    .line 208
    .local v2, reader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 209
    .end local v2           #reader:Ljava/io/BufferedReader;
    .local v3, reader:Ljava/io/BufferedReader;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==== dumpFile path="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ===="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->log(Ljava/lang/String;)V

    .line 210
    const/4 v1, 0x0

    .line 211
    .local v1, line:Ljava/lang/String;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 212
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dumpFile="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    goto :goto_0

    .line 214
    .end local v1           #line:Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 215
    .end local v3           #reader:Ljava/io/BufferedReader;
    .local v0, e:Ljava/io/FileNotFoundException;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 220
    if-eqz v2, :cond_0

    .line 221
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 226
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_0
    :goto_2
    return-void

    .line 220
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #line:Ljava/lang/String;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :cond_1
    if-eqz v3, :cond_2

    .line 221
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    move-object v2, v3

    .line 224
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    goto :goto_2

    .line 222
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    .line 223
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .line 225
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    goto :goto_2

    .line 222
    .end local v1           #line:Ljava/lang/String;
    .local v0, e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v0

    .line 223
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 216
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 217
    .restart local v0       #e:Ljava/io/IOException;
    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 220
    if-eqz v2, :cond_0

    .line 221
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    .line 222
    :catch_4
    move-exception v0

    .line 223
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 219
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 220
    :goto_4
    if-eqz v2, :cond_3

    .line 221
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 224
    :cond_3
    :goto_5
    throw v4

    .line 222
    :catch_5
    move-exception v0

    .line 223
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 219
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    goto :goto_4

    .line 216
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    goto :goto_3

    .line 214
    :catch_7
    move-exception v0

    goto :goto_1
.end method

.method public getAgpsStatus()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mAgpsEnable:Z

    return v0
.end method

.method public getAllCdmaProfile()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mCdmaProfileList:Ljava/util/List;

    return-object v0
.end method

.method public getAllProfile()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/agps/MtkAgpsProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mAgpsProfileList:Ljava/util/List;

    return-object v0
.end method

.method public getCaStatus()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mCaEnable:Z

    return v0
.end method

.method public getCpPreferSim()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mCpGeminiPrefSim:I

    return v0
.end method

.method public getCpUpSelection()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mCpUpSelection:Z

    return v0
.end method

.method public getDefaultCdmaProfile()Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;
    .locals 4

    .prologue
    .line 84
    iget-object v2, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mCdmaProfileList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;

    .line 85
    .local v1, profile:Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;
    iget-object v2, v1, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mName:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mDefaultCdmaProfile:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    .end local v1           #profile:Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDefaultProfile()Lcom/mediatek/common/agps/MtkAgpsProfile;
    .locals 4

    .prologue
    .line 98
    iget-object v2, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mAgpsProfileList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/agps/MtkAgpsProfile;

    .line 99
    .local v1, profile:Lcom/mediatek/common/agps/MtkAgpsProfile;
    iget-object v2, v1, Lcom/mediatek/common/agps/MtkAgpsProfile;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mDefaultProfileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    .end local v1           #profile:Lcom/mediatek/common/agps/MtkAgpsProfile;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDisableAfterRebootStatus()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mDisableAfterReboot:Z

    return v0
.end method

.method public getEcidStatus()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mEcidStatus:Z

    return v0
.end method

.method public getEvdoPrefer()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mEvdoPrefer:I

    return v0
.end method

.method public getGpevt()Z
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mGpevt:Z

    return v0
.end method

.method public getNiStatus()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mNiRequest:Z

    return v0
.end method

.method public getNotifyTimeout()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mNotifyTimeout:I

    return v0
.end method

.method public getPmtk997_5()Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mPmtk997_5:Z

    return v0
.end method

.method public getRoamingStatus()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mRoamingEnable:Z

    return v0
.end method

.method public getSiMode()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mSiMode:I

    return v0
.end method

.method public getSuplVersion()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mSuplVersion:I

    return v0
.end method

.method public getVerifyTimeout()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mVerifyTimeout:I

    return v0
.end method

.method public insertProfile(Lcom/mediatek/common/agps/MtkAgpsProfile;)V
    .locals 5
    .parameter "profile"

    .prologue
    .line 168
    const/4 v0, 0x0

    .line 169
    .local v0, i:I
    const/4 v1, 0x1

    .line 170
    .local v1, isNewOne:Z
    if-nez p1, :cond_2

    .line 171
    const-string v3, "WARNING: insertPorifle the profile is null"

    invoke-direct {p0, v3}, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->log(Ljava/lang/String;)V

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    add-int/lit8 v0, v0, 0x1

    :cond_2
    iget-object v3, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mAgpsProfileList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 176
    iget-object v4, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->code:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mAgpsProfileList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/common/agps/MtkAgpsProfile;

    iget-object v3, v3, Lcom/mediatek/common/agps/MtkAgpsProfile;->code:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 178
    iget-object v3, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mAgpsProfileList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/common/agps/MtkAgpsProfile;

    .line 180
    .local v2, p:Lcom/mediatek/common/agps/MtkAgpsProfile;
    iget-object v3, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->name:Ljava/lang/String;

    iput-object v3, v2, Lcom/mediatek/common/agps/MtkAgpsProfile;->name:Ljava/lang/String;

    .line 181
    iget-object v3, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->addr:Ljava/lang/String;

    iput-object v3, v2, Lcom/mediatek/common/agps/MtkAgpsProfile;->addr:Ljava/lang/String;

    .line 182
    iget v3, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->port:I

    iput v3, v2, Lcom/mediatek/common/agps/MtkAgpsProfile;->port:I

    .line 183
    iget v3, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->tls:I

    iput v3, v2, Lcom/mediatek/common/agps/MtkAgpsProfile;->tls:I

    .line 184
    iget-object v3, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->code:Ljava/lang/String;

    iput-object v3, v2, Lcom/mediatek/common/agps/MtkAgpsProfile;->code:Ljava/lang/String;

    .line 185
    iget-object v3, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->backupSlpNameVar:Ljava/lang/String;

    iput-object v3, v2, Lcom/mediatek/common/agps/MtkAgpsProfile;->backupSlpNameVar:Ljava/lang/String;

    .line 186
    iget v3, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->showType:I

    iput v3, v2, Lcom/mediatek/common/agps/MtkAgpsProfile;->showType:I

    .line 187
    iget-object v3, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->addrType:Ljava/lang/String;

    iput-object v3, v2, Lcom/mediatek/common/agps/MtkAgpsProfile;->addrType:Ljava/lang/String;

    .line 188
    iget-object v3, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->providerId:Ljava/lang/String;

    iput-object v3, v2, Lcom/mediatek/common/agps/MtkAgpsProfile;->providerId:Ljava/lang/String;

    .line 189
    iget-object v3, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->defaultApn:Ljava/lang/String;

    iput-object v3, v2, Lcom/mediatek/common/agps/MtkAgpsProfile;->defaultApn:Ljava/lang/String;

    .line 190
    iget-object v3, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->optionApn:Ljava/lang/String;

    iput-object v3, v2, Lcom/mediatek/common/agps/MtkAgpsProfile;->optionApn:Ljava/lang/String;

    .line 191
    iget-object v3, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->optionApn2:Ljava/lang/String;

    iput-object v3, v2, Lcom/mediatek/common/agps/MtkAgpsProfile;->optionApn2:Ljava/lang/String;

    .line 192
    iget-object v3, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->appId:Ljava/lang/String;

    iput-object v3, v2, Lcom/mediatek/common/agps/MtkAgpsProfile;->appId:Ljava/lang/String;

    .line 193
    iget-object v3, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->mccMnc:Ljava/lang/String;

    iput-object v3, v2, Lcom/mediatek/common/agps/MtkAgpsProfile;->mccMnc:Ljava/lang/String;

    .line 195
    const/4 v1, 0x0

    .line 199
    .end local v2           #p:Lcom/mediatek/common/agps/MtkAgpsProfile;
    :cond_3
    if-eqz v1, :cond_0

    .line 201
    iget-object v3, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mAgpsProfileList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 419
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 420
    .local v2, tmp:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDisableAfterReboot=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mDisableAfterReboot:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mNiRequest=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mNiRequest:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mAgpsEnable=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mAgpsEnable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mSiMode=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mSiMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mLogFileMaxNum=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mLogFileMaxNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mCpGeminiPrefSim=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mCpGeminiPrefSim:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mRoamingEnable=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mRoamingEnable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mCaEnable=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mCaEnable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mDefaultProfileName=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mDefaultProfileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mCpUpSelection=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mCpUpSelection:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mNotifyTimeout=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mNotifyTimeout:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mVerifyTimeout=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mVerifyTimeout:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mEcidStatus=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mEcidStatus:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mPmtk997_5=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mPmtk997_5:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mGpevt=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mGpevt:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mSuplVersion=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mSuplVersion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mEvdoPrefer=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mEvdoPrefer:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mDefaultCdmaProfile=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mDefaultCdmaProfile:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 429
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "============ AGPS Profile num="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mAgpsProfileList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ===========\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 430
    iget-object v3, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mAgpsProfileList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/agps/MtkAgpsProfile;

    .line 431
    .local v1, profile:Lcom/mediatek/common/agps/MtkAgpsProfile;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 433
    .end local v1           #profile:Lcom/mediatek/common/agps/MtkAgpsProfile;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "============ CDMA AGPS Profile num="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mCdmaProfileList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ===========\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 434
    iget-object v3, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mCdmaProfileList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;

    .line 435
    .local v1, profile:Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 437
    .end local v1           #profile:Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;
    :cond_1
    return-object v2
.end method

.method public updateAgpsProfile(Ljava/lang/String;)V
    .locals 14
    .parameter "path"

    .prologue
    .line 229
    const/4 v11, 0x0

    .line 230
    .local v11, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v8, 0x0

    .line 237
    .local v8, is:Ljava/io/InputStream;
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v11

    .line 238
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a

    .line 240
    .end local v8           #is:Ljava/io/InputStream;
    .local v9, is:Ljava/io/InputStream;
    :try_start_1
    const-string v12, "utf-8"

    invoke-interface {v11, v9, v12}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 242
    :cond_0
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 243
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    .line 244
    .local v6, eventType:I
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 245
    .local v10, name:Ljava/lang/String;
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    move-result v4

    .line 247
    .local v4, count:I
    const/4 v12, 0x2

    if-eq v6, v12, :cond_4

    .line 394
    :cond_1
    :goto_0
    const/4 v12, 0x1

    if-ne v6, v12, :cond_0

    .line 410
    if-eqz v9, :cond_2

    .line 411
    :try_start_2
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    :cond_2
    move-object v8, v9

    .line 416
    .end local v4           #count:I
    .end local v6           #eventType:I
    .end local v9           #is:Ljava/io/InputStream;
    .end local v10           #name:Ljava/lang/String;
    .restart local v8       #is:Ljava/io/InputStream;
    :cond_3
    :goto_1
    return-void

    .line 249
    .end local v8           #is:Ljava/io/InputStream;
    .restart local v4       #count:I
    .restart local v6       #eventType:I
    .restart local v9       #is:Ljava/io/InputStream;
    .restart local v10       #name:Ljava/lang/String;
    :cond_4
    :try_start_3
    const-string v12, "agps_profile"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_15

    .line 250
    new-instance v0, Lcom/mediatek/common/agps/MtkAgpsProfile;

    invoke-direct {v0}, Lcom/mediatek/common/agps/MtkAgpsProfile;-><init>()V

    .line 251
    .local v0, agpsProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    if-ge v7, v4, :cond_14

    .line 252
    invoke-interface {v11, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, attrName:Ljava/lang/String;
    invoke-interface {v11, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    .line 256
    .local v2, attrValue:Ljava/lang/String;
    const-string v12, "address"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 257
    iput-object v2, v0, Lcom/mediatek/common/agps/MtkAgpsProfile;->addr:Ljava/lang/String;

    .line 251
    :cond_5
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 258
    :cond_6
    const-string v12, "slp_name"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 259
    iput-object v2, v0, Lcom/mediatek/common/agps/MtkAgpsProfile;->name:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_3

    .line 396
    .end local v0           #agpsProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;
    .end local v1           #attrName:Ljava/lang/String;
    .end local v2           #attrValue:Ljava/lang/String;
    .end local v4           #count:I
    .end local v6           #eventType:I
    .end local v7           #i:I
    .end local v10           #name:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v8, v9

    .line 397
    .end local v9           #is:Ljava/io/InputStream;
    .local v5, e:Ljava/io/FileNotFoundException;
    .restart local v8       #is:Ljava/io/InputStream;
    :goto_4
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 398
    invoke-virtual {p0, p1}, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->dumpFile(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 410
    if-eqz v8, :cond_3

    .line 411
    :try_start_5
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 412
    :catch_1
    move-exception v5

    .line 413
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 260
    .end local v5           #e:Ljava/io/IOException;
    .end local v8           #is:Ljava/io/InputStream;
    .restart local v0       #agpsProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;
    .restart local v1       #attrName:Ljava/lang/String;
    .restart local v2       #attrValue:Ljava/lang/String;
    .restart local v4       #count:I
    .restart local v6       #eventType:I
    .restart local v7       #i:I
    .restart local v9       #is:Ljava/io/InputStream;
    .restart local v10       #name:Ljava/lang/String;
    :cond_7
    :try_start_6
    const-string v12, "port"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 261
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, v0, Lcom/mediatek/common/agps/MtkAgpsProfile;->port:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_3

    .line 399
    .end local v0           #agpsProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;
    .end local v1           #attrName:Ljava/lang/String;
    .end local v2           #attrValue:Ljava/lang/String;
    .end local v4           #count:I
    .end local v6           #eventType:I
    .end local v7           #i:I
    .end local v10           #name:Ljava/lang/String;
    :catch_2
    move-exception v5

    move-object v8, v9

    .line 400
    .end local v9           #is:Ljava/io/InputStream;
    .local v5, e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v8       #is:Ljava/io/InputStream;
    :goto_5
    :try_start_7
    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 401
    invoke-virtual {p0, p1}, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->dumpFile(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 410
    if-eqz v8, :cond_3

    .line 411
    :try_start_8
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_1

    .line 412
    :catch_3
    move-exception v5

    .line 413
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 262
    .end local v5           #e:Ljava/io/IOException;
    .end local v8           #is:Ljava/io/InputStream;
    .restart local v0       #agpsProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;
    .restart local v1       #attrName:Ljava/lang/String;
    .restart local v2       #attrValue:Ljava/lang/String;
    .restart local v4       #count:I
    .restart local v6       #eventType:I
    .restart local v7       #i:I
    .restart local v9       #is:Ljava/io/InputStream;
    .restart local v10       #name:Ljava/lang/String;
    :cond_8
    :try_start_9
    const-string v12, "tls"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 263
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, v0, Lcom/mediatek/common/agps/MtkAgpsProfile;->tls:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_3

    .line 402
    .end local v0           #agpsProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;
    .end local v1           #attrName:Ljava/lang/String;
    .end local v2           #attrValue:Ljava/lang/String;
    .end local v4           #count:I
    .end local v6           #eventType:I
    .end local v7           #i:I
    .end local v10           #name:Ljava/lang/String;
    :catch_4
    move-exception v5

    move-object v8, v9

    .line 403
    .end local v9           #is:Ljava/io/InputStream;
    .restart local v5       #e:Ljava/io/IOException;
    .restart local v8       #is:Ljava/io/InputStream;
    :goto_6
    :try_start_a
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 404
    invoke-virtual {p0, p1}, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->dumpFile(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 410
    if-eqz v8, :cond_3

    .line 411
    :try_start_b
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_1

    .line 412
    :catch_5
    move-exception v5

    .line 413
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 264
    .end local v5           #e:Ljava/io/IOException;
    .end local v8           #is:Ljava/io/InputStream;
    .restart local v0       #agpsProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;
    .restart local v1       #attrName:Ljava/lang/String;
    .restart local v2       #attrValue:Ljava/lang/String;
    .restart local v4       #count:I
    .restart local v6       #eventType:I
    .restart local v7       #i:I
    .restart local v9       #is:Ljava/io/InputStream;
    .restart local v10       #name:Ljava/lang/String;
    :cond_9
    :try_start_c
    const-string v12, "show_type"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 265
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, v0, Lcom/mediatek/common/agps/MtkAgpsProfile;->showType:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    goto/16 :goto_3

    .line 405
    .end local v0           #agpsProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;
    .end local v1           #attrName:Ljava/lang/String;
    .end local v2           #attrValue:Ljava/lang/String;
    .end local v4           #count:I
    .end local v6           #eventType:I
    .end local v7           #i:I
    .end local v10           #name:Ljava/lang/String;
    :catch_6
    move-exception v5

    move-object v8, v9

    .line 406
    .end local v9           #is:Ljava/io/InputStream;
    .local v5, e:Ljava/lang/Exception;
    .restart local v8       #is:Ljava/io/InputStream;
    :goto_7
    :try_start_d
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 407
    invoke-virtual {p0, p1}, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->dumpFile(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 410
    if-eqz v8, :cond_3

    .line 411
    :try_start_e
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    goto/16 :goto_1

    .line 412
    :catch_7
    move-exception v5

    .line 413
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 266
    .end local v5           #e:Ljava/io/IOException;
    .end local v8           #is:Ljava/io/InputStream;
    .restart local v0       #agpsProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;
    .restart local v1       #attrName:Ljava/lang/String;
    .restart local v2       #attrValue:Ljava/lang/String;
    .restart local v4       #count:I
    .restart local v6       #eventType:I
    .restart local v7       #i:I
    .restart local v9       #is:Ljava/io/InputStream;
    .restart local v10       #name:Ljava/lang/String;
    :cond_a
    :try_start_f
    const-string v12, "code"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 267
    iput-object v2, v0, Lcom/mediatek/common/agps/MtkAgpsProfile;->code:Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6

    goto/16 :goto_3

    .line 409
    .end local v0           #agpsProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;
    .end local v1           #attrName:Ljava/lang/String;
    .end local v2           #attrValue:Ljava/lang/String;
    .end local v4           #count:I
    .end local v6           #eventType:I
    .end local v7           #i:I
    .end local v10           #name:Ljava/lang/String;
    :catchall_0
    move-exception v12

    move-object v8, v9

    .line 410
    .end local v9           #is:Ljava/io/InputStream;
    .restart local v8       #is:Ljava/io/InputStream;
    :goto_8
    if-eqz v8, :cond_b

    .line 411
    :try_start_10
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9

    .line 414
    :cond_b
    :goto_9
    throw v12

    .line 268
    .end local v8           #is:Ljava/io/InputStream;
    .restart local v0       #agpsProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;
    .restart local v1       #attrName:Ljava/lang/String;
    .restart local v2       #attrValue:Ljava/lang/String;
    .restart local v4       #count:I
    .restart local v6       #eventType:I
    .restart local v7       #i:I
    .restart local v9       #is:Ljava/io/InputStream;
    .restart local v10       #name:Ljava/lang/String;
    :cond_c
    :try_start_11
    const-string v12, "backup_slp_name_var"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 269
    iput-object v2, v0, Lcom/mediatek/common/agps/MtkAgpsProfile;->backupSlpNameVar:Ljava/lang/String;

    goto/16 :goto_3

    .line 270
    :cond_d
    const-string v12, "provider_id"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 271
    iput-object v2, v0, Lcom/mediatek/common/agps/MtkAgpsProfile;->providerId:Ljava/lang/String;

    goto/16 :goto_3

    .line 272
    :cond_e
    const-string v12, "default_apn"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 273
    iput-object v2, v0, Lcom/mediatek/common/agps/MtkAgpsProfile;->defaultApn:Ljava/lang/String;

    goto/16 :goto_3

    .line 274
    :cond_f
    const-string v12, "address_type"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 275
    iput-object v2, v0, Lcom/mediatek/common/agps/MtkAgpsProfile;->addrType:Ljava/lang/String;

    goto/16 :goto_3

    .line 276
    :cond_10
    const-string v12, "optional_apn"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 277
    iput-object v2, v0, Lcom/mediatek/common/agps/MtkAgpsProfile;->optionApn:Ljava/lang/String;

    goto/16 :goto_3

    .line 278
    :cond_11
    const-string v12, "optional_apn_2"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 279
    iput-object v2, v0, Lcom/mediatek/common/agps/MtkAgpsProfile;->optionApn2:Ljava/lang/String;

    goto/16 :goto_3

    .line 280
    :cond_12
    const-string v12, "app_id"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_13

    .line 281
    iput-object v2, v0, Lcom/mediatek/common/agps/MtkAgpsProfile;->appId:Ljava/lang/String;

    goto/16 :goto_3

    .line 282
    :cond_13
    const-string v12, "mcc_mnc"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 283
    iput-object v2, v0, Lcom/mediatek/common/agps/MtkAgpsProfile;->mccMnc:Ljava/lang/String;

    goto/16 :goto_3

    .line 286
    .end local v1           #attrName:Ljava/lang/String;
    .end local v2           #attrValue:Ljava/lang/String;
    :cond_14
    iget-object v12, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mAgpsProfileList:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 288
    .end local v0           #agpsProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;
    .end local v7           #i:I
    :cond_15
    const-string v12, "cdma_profile"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_25

    .line 289
    new-instance v3, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;

    invoke-direct {v3}, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;-><init>()V

    .line 290
    .local v3, cdmaProfile:Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_a
    if-ge v7, v4, :cond_24

    .line 291
    invoke-interface {v11, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    .line 292
    .restart local v1       #attrName:Ljava/lang/String;
    invoke-interface {v11, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    .line 294
    .restart local v2       #attrValue:Ljava/lang/String;
    const-string v12, "name"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_17

    .line 295
    iput-object v2, v3, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mName:Ljava/lang/String;

    .line 290
    :cond_16
    :goto_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .line 296
    :cond_17
    const-string v12, "mcp_enable"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_19

    .line 297
    const-string v12, "yes"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_18

    const/4 v12, 0x1

    :goto_c
    iput v12, v3, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mMcpEnable:I

    goto :goto_b

    :cond_18
    const/4 v12, 0x0

    goto :goto_c

    .line 298
    :cond_19
    const-string v12, "mcp_addr"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1a

    .line 299
    iput-object v2, v3, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mMcpAddr:Ljava/lang/String;

    goto :goto_b

    .line 300
    :cond_1a
    const-string v12, "mcp_port"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1b

    .line 301
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, v3, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mMcpPort:I

    goto :goto_b

    .line 302
    :cond_1b
    const-string v12, "pde_addr_valid"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1d

    .line 303
    const-string v12, "yes"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1c

    const/4 v12, 0x1

    :goto_d
    iput v12, v3, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mPdeAddrValid:I

    goto :goto_b

    :cond_1c
    const/4 v12, 0x0

    goto :goto_d

    .line 304
    :cond_1d
    const-string v12, "pde_ip_type"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1e

    .line 305
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, v3, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mPdeIpType:I

    goto :goto_b

    .line 306
    :cond_1e
    const-string v12, "pde_ip4_addr"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1f

    .line 307
    iput-object v2, v3, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mPdeIp4Addr:Ljava/lang/String;

    goto :goto_b

    .line 308
    :cond_1f
    const-string v12, "pde_ip6_addr"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_20

    .line 309
    iput-object v2, v3, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mPdeIp6Addr:Ljava/lang/String;

    goto :goto_b

    .line 310
    :cond_20
    const-string v12, "pde_port"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_21

    .line 311
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, v3, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mPdePort:I

    goto/16 :goto_b

    .line 312
    :cond_21
    const-string v12, "pde_url_valid"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_23

    .line 313
    const-string v12, "yes"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_22

    const/4 v12, 0x1

    :goto_e
    iput v12, v3, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mPdeUrlValid:I

    goto/16 :goto_b

    :cond_22
    const/4 v12, 0x0

    goto :goto_e

    .line 314
    :cond_23
    const-string v12, "pde_url_addr"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_16

    .line 315
    iput-object v2, v3, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mPdeUrlAddr:Ljava/lang/String;

    goto/16 :goto_b

    .line 318
    .end local v1           #attrName:Ljava/lang/String;
    .end local v2           #attrValue:Ljava/lang/String;
    :cond_24
    iget-object v12, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mCdmaProfileList:Ljava/util/List;

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 320
    .end local v3           #cdmaProfile:Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;
    .end local v7           #i:I
    :cond_25
    const-string v12, "agps_conf_para"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 321
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_f
    if-ge v7, v4, :cond_1

    .line 322
    invoke-interface {v11, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    .line 323
    .restart local v1       #attrName:Ljava/lang/String;
    invoke-interface {v11, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    .line 325
    .restart local v2       #attrValue:Ljava/lang/String;
    const-string v12, "disable_after_reboot"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_28

    .line 326
    const-string v12, "yes"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_27

    const/4 v12, 0x1

    :goto_10
    iput-boolean v12, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mDisableAfterReboot:Z

    .line 321
    :cond_26
    :goto_11
    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    .line 326
    :cond_27
    const/4 v12, 0x0

    goto :goto_10

    .line 327
    :cond_28
    const-string v12, "ni_request"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2a

    .line 328
    const-string v12, "yes"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_29

    const/4 v12, 0x1

    :goto_12
    iput-boolean v12, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mNiRequest:Z

    goto :goto_11

    :cond_29
    const/4 v12, 0x0

    goto :goto_12

    .line 329
    :cond_2a
    const-string v12, "agps_enable"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2c

    .line 330
    const-string v12, "yes"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2b

    const/4 v12, 0x1

    :goto_13
    iput-boolean v12, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mAgpsEnable:Z

    goto :goto_11

    :cond_2b
    const/4 v12, 0x0

    goto :goto_13

    .line 331
    :cond_2c
    const-string v12, "log_file_max_num"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2d

    .line 332
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mLogFileMaxNum:I

    goto :goto_11

    .line 333
    :cond_2d
    const-string v12, "cp_gemini_pref_sim"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2f

    .line 334
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mCpGeminiPrefSim:I

    .line 335
    iget v12, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mCpGeminiPrefSim:I

    if-lez v12, :cond_2e

    iget v12, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mCpGeminiPrefSim:I

    const/4 v13, 0x4

    if-le v12, v13, :cond_26

    .line 336
    :cond_2e
    const/4 v12, 0x1

    iput v12, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mCpGeminiPrefSim:I

    goto :goto_11

    .line 338
    :cond_2f
    const-string v12, "roaming"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_31

    .line 339
    const-string v12, "yes"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_30

    const/4 v12, 0x1

    :goto_14
    iput-boolean v12, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mRoamingEnable:Z

    goto :goto_11

    :cond_30
    const/4 v12, 0x0

    goto :goto_14

    .line 340
    :cond_31
    const-string v12, "default_profile"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_32

    .line 341
    iput-object v2, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mDefaultProfileName:Ljava/lang/String;

    goto/16 :goto_11

    .line 342
    :cond_32
    const-string v12, "cp_up_selection"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_34

    .line 343
    const-string v12, "cp"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_33

    const/4 v12, 0x1

    :goto_15
    iput-boolean v12, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mCpUpSelection:Z

    goto/16 :goto_11

    :cond_33
    const/4 v12, 0x0

    goto :goto_15

    .line 344
    :cond_34
    const-string v12, "notify_timeout"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_36

    .line 345
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mNotifyTimeout:I

    .line 346
    iget v12, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mNotifyTimeout:I

    const/16 v13, 0x14

    if-gt v12, v13, :cond_35

    iget v12, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mNotifyTimeout:I

    if-gez v12, :cond_26

    .line 347
    :cond_35
    const/16 v12, 0x8

    iput v12, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mNotifyTimeout:I

    goto/16 :goto_11

    .line 349
    :cond_36
    const-string v12, "verify_timeout"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_38

    .line 350
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mVerifyTimeout:I

    .line 351
    iget v12, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mVerifyTimeout:I

    const/16 v13, 0x14

    if-gt v12, v13, :cond_37

    iget v12, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mVerifyTimeout:I

    if-gez v12, :cond_26

    .line 352
    :cond_37
    const/16 v12, 0x8

    iput v12, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mVerifyTimeout:I

    goto/16 :goto_11

    .line 354
    :cond_38
    const-string v12, "ca_enable"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3a

    .line 355
    const-string v12, "yes"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_39

    const/4 v12, 0x1

    :goto_16
    iput-boolean v12, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mCaEnable:Z

    goto/16 :goto_11

    :cond_39
    const/4 v12, 0x0

    goto :goto_16

    .line 356
    :cond_3a
    const-string v12, "si_mode"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3c

    .line 357
    const-string v12, "ma"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3b

    .line 358
    const/4 v12, 0x0

    iput v12, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mSiMode:I

    goto/16 :goto_11

    .line 360
    :cond_3b
    const/4 v12, 0x1

    iput v12, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mSiMode:I

    goto/16 :goto_11

    .line 362
    :cond_3c
    const-string v12, "ecid_enable"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3e

    .line 363
    const-string v12, "yes"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3d

    const/4 v12, 0x1

    :goto_17
    iput-boolean v12, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mEcidStatus:Z

    goto/16 :goto_11

    :cond_3d
    const/4 v12, 0x0

    goto :goto_17

    .line 365
    :cond_3e
    const-string v12, "cp_auto_reset"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_40

    .line 366
    const-string v12, "yes"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3f

    const/4 v12, 0x1

    :goto_18
    iput-boolean v12, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mPmtk997_5:Z

    goto/16 :goto_11

    :cond_3f
    const/4 v12, 0x0

    goto :goto_18

    .line 368
    :cond_40
    const-string v12, "gpevt"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_42

    .line 369
    const-string v12, "yes"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_41

    const/4 v12, 0x1

    :goto_19
    iput-boolean v12, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mGpevt:Z

    goto/16 :goto_11

    :cond_41
    const/4 v12, 0x0

    goto :goto_19

    .line 372
    :cond_42
    const-string v12, "supl_version"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_44

    .line 373
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mSuplVersion:I

    .line 374
    iget v12, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mSuplVersion:I

    const/4 v13, 0x2

    if-gt v12, v13, :cond_43

    iget v12, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mSuplVersion:I

    if-gtz v12, :cond_26

    .line 375
    :cond_43
    const/4 v12, 0x1

    iput v12, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mSuplVersion:I

    goto/16 :goto_11

    .line 379
    :cond_44
    const-string v12, "cdma_agps_preferred"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_46

    .line 380
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mEvdoPrefer:I

    .line 381
    iget v12, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mEvdoPrefer:I

    const/4 v13, 0x2

    if-gt v12, v13, :cond_45

    iget v12, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mEvdoPrefer:I

    if-gtz v12, :cond_26

    .line 382
    :cond_45
    const/4 v12, 0x0

    iput v12, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mEvdoPrefer:I

    goto/16 :goto_11

    .line 385
    :cond_46
    const-string v12, "default_cdma_profile"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_26

    .line 386
    iput-object v2, p0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->mDefaultCdmaProfile:Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_4
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_6

    goto/16 :goto_11

    .line 412
    .end local v1           #attrName:Ljava/lang/String;
    .end local v2           #attrValue:Ljava/lang/String;
    .end local v7           #i:I
    :catch_8
    move-exception v5

    .line 413
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    move-object v8, v9

    .line 415
    .end local v9           #is:Ljava/io/InputStream;
    .restart local v8       #is:Ljava/io/InputStream;
    goto/16 :goto_1

    .line 412
    .end local v4           #count:I
    .end local v5           #e:Ljava/io/IOException;
    .end local v6           #eventType:I
    .end local v10           #name:Ljava/lang/String;
    :catch_9
    move-exception v5

    .line 413
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_9

    .line 409
    .end local v5           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v12

    goto/16 :goto_8

    .line 405
    :catch_a
    move-exception v5

    goto/16 :goto_7

    .line 402
    :catch_b
    move-exception v5

    goto/16 :goto_6

    .line 399
    :catch_c
    move-exception v5

    goto/16 :goto_5

    .line 396
    :catch_d
    move-exception v5

    goto/16 :goto_4
.end method

## why use git  
 * keep track of changes 
 * multible people can work on a project at once  
 * Keep a log of changes made to a project
 * Revert the project back to a previous state if we mess something up 
 * seperate our work from others using branches 

### How git store things 
 * git stores data as a snapshot "stream of snapshots"
 * git performms most operations locally. Git is distributed but centralized.

### Three stages of git 
 * working directory: modified area 
 * add your changes to the staging area : staged 
 * commited all of the staged files and creat a snapshot : committed

#### commit: 
 * commit is a checkpoint that you can return to later if your code gets screwed up.
# master and branches 
 * **master** is pristine untouchable good version of the code and the place every FINAL change or FEATURE merged to. 
 * **branches** meant for experemintations and small changes 

# working directory and Staging area  

# branching and merging 


## Git add 
 * use git add < files > or git add -A instead of git add .  or git add -u
 * git add . you add everything to the staging area, this is wrong you might include files that have sensitive info **discourge** 
 * git add -A take all changes to the staging area **discourge**
 * git add < file > **recommended** avoid adding unwanted files 
 * 
## Aliasing 
 * replacement of a word with another  git commit -m >> gcm 
 * create your own alias to the command that you are using frequently 




# YAML JSON Serialization 

## serialization 
 * convert objects to a representation so it can be saved to HD or send acrosss network 

## JSON 
 * a way of representing serialized data descended from Javasript using `code` json.parse
 * it support some primitive data type 
 * the message format of the web API 
 * JSON does not know how to serialize more complicated classes you can fix by defining `code` to_json

## YAML 
 * meant to solve the pronlem of saving custom classes 
 
 * json is most used serialization technology **XML** comes second 
 * in order of server-side ruby, YAML is the leader because of its better support of deserializing classes.
  

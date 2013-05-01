# maven repositories
repositories.remote << 'http://repo1.maven.org/maven2'

# maven dependencies
LOMBOK  = 'org.projectlombok:lombok:jar:0.11.6'
GUAVA   = 'com.google.guava:guava:jar:13.0.1'

define 'pipeline' do
  project.version = '2.0.1'
    
  define 'api' do
    eclipse.natures :java
    package :jar
  end
  
  define 'util' do
    eclipse.natures :java
    compile.with LOMBOK, GUAVA, project('api')
    package :jar
  end
end
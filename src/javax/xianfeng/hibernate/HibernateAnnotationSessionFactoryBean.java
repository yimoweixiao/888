package javax.xianfeng.hibernate;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.Embeddable;
import javax.persistence.MappedSuperclass;

import org.hibernate.HibernateException;
import org.hibernate.MappingException;
import org.hibernate.cfg.AnnotationConfiguration;
import org.springframework.context.ResourceLoaderAware;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.core.io.support.ResourcePatternResolver;
import org.springframework.core.io.support.ResourcePatternUtils;
import org.springframework.core.type.classreading.CachingMetadataReaderFactory;
import org.springframework.core.type.classreading.MetadataReader;
import org.springframework.core.type.classreading.MetadataReaderFactory;
import org.springframework.core.type.filter.AnnotationTypeFilter;
import org.springframework.core.type.filter.TypeFilter;
import org.springframework.orm.hibernate3.LocalSessionFactoryBean;
import org.springframework.util.ClassUtils;

/**
 * 重写org.springframework.orm.hibernate3.annotation.AnnotationSessionFactoryBean
 * 
 * @author Programmer.Wenlong
 * @since 2015-5-9 上午11:04:50
 */
public class HibernateAnnotationSessionFactoryBean extends LocalSessionFactoryBean implements ResourceLoaderAware {
	private static final String RESOURCE_PATTERN = "/**/*.class";
	private static final String PACKAGE_INFO_SUFFIX = ".package-info";
	private Class<?>[] annotatedClasses;
	private String[] annotatedPackages;
	private String[] packagesToScan;
	private TypeFilter[] entityTypeFilters = { new AnnotationTypeFilter(javax.persistence.Entity.class, false), new AnnotationTypeFilter(Embeddable.class, false), new AnnotationTypeFilter(MappedSuperclass.class, false), new AnnotationTypeFilter(org.hibernate.annotations.Entity.class, false) };

	private ResourcePatternResolver resourcePatternResolver = new PathMatchingResourcePatternResolver();

	public HibernateAnnotationSessionFactoryBean() {
		setConfigurationClass(AnnotationConfiguration.class);
	}

	public void setConfigurationClass(Class<?> configurationClass) {
		if ((configurationClass == null) || (!AnnotationConfiguration.class.isAssignableFrom(configurationClass))) {
			throw new IllegalArgumentException("AnnotationSessionFactoryBean only supports AnnotationConfiguration or subclasses");
		}

		super.setConfigurationClass(configurationClass);
	}

	public void setAnnotatedClasses(Class<?>[] annotatedClasses) {
		for (Class<?> clazz: annotatedClasses) {
			System.out.println(">" + clazz);
//			if(clazz instanceof Class<?>) {
//				System.out.println(0);
//			} else if (clazz instanceof Object) {
//				System.out.println(1);
//			} else {
//				System.out.println(-1);
//			}
		}
		this.annotatedClasses = annotatedClasses;
	}
	
	public Class<?>[] getAnnotatedPackageClasses(String[] annotatedPackages) throws ClassNotFoundException {
		for (String s : annotatedPackages) {
			System.out.println(">package " + s);
		}
		
		List<Class<?>> list = new ArrayList<Class<?>>();
		
		list.add(Class.forName("javax.xianfeng.system.permit.entity.User"));
		
		Class<?>[] classesArray = new Class<?>[list.size()];
		for (int i = 0; i < list.size(); i++) {
			Class<?> c = list.get(i);
			System.out.println(">" + c);
			classesArray[i] = c;
		}
		return classesArray;
	}

	public void setAnnotatedPackages(String[] annotatedPackages) {
		this.annotatedPackages = annotatedPackages;
		
		try {
			Class<?>[] classesArray = getAnnotatedPackageClasses(annotatedPackages);
			//this.annotatedClasses = classesArray;
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	public void setPackagesToScan(String[] packagesToScan) {
		this.packagesToScan = packagesToScan;
	}

	public void setEntityTypeFilters(TypeFilter[] entityTypeFilters) {
		this.entityTypeFilters = entityTypeFilters;
	}

	public void setResourceLoader(ResourceLoader resourceLoader) {
		this.resourcePatternResolver = ResourcePatternUtils.getResourcePatternResolver(resourceLoader);
	}

	protected void postProcessMappings(Configuration config) throws HibernateException {
		AnnotationConfiguration annConfig = (AnnotationConfiguration) config;
		if (this.annotatedClasses != null) {
			for (Class annotatedClass : this.annotatedClasses) {
				annConfig.addAnnotatedClass(annotatedClass);
			}
		}
		if (this.annotatedPackages != null) {
			for (String annotatedPackage : this.annotatedPackages) {
				annConfig.addPackage(annotatedPackage);
			}
		}
		scanPackages(annConfig);
	}

	protected void scanPackages(AnnotationConfiguration config) {
		if (this.packagesToScan != null)
			try {
				for (String pkg : this.packagesToScan) {
					String pattern = "classpath*:" + ClassUtils.convertClassNameToResourcePath(pkg) + "/**/*.class";
					System.out.println(">" + pattern);

					Resource[] resources = this.resourcePatternResolver.getResources(pattern);
					MetadataReaderFactory readerFactory = new CachingMetadataReaderFactory(this.resourcePatternResolver);
					for (Resource resource : resources) {
						if (resource.isReadable()) {
							MetadataReader reader = readerFactory.getMetadataReader(resource);
							String className = reader.getClassMetadata().getClassName();
							if (matchesEntityTypeFilter(reader, readerFactory)) {
								config.addAnnotatedClass(this.resourcePatternResolver.getClassLoader().loadClass(className));
							} else if (className.endsWith(".package-info"))
								config.addPackage(className.substring(0, className.length() - ".package-info".length()));
						}
					}
				}
			} catch (IOException ex) {
				throw new MappingException("Failed to scan classpath for unlisted classes", ex);
			} catch (ClassNotFoundException ex) {
				throw new MappingException("Failed to load annotated classes from classpath", ex);
			}
	}

	private boolean matchesEntityTypeFilter(MetadataReader reader, MetadataReaderFactory readerFactory) throws IOException {
		if (this.entityTypeFilters != null) {
			for (TypeFilter filter : this.entityTypeFilters) {
				if (filter.match(reader, readerFactory)) {
					return true;
				}
			}
		}
		return false;
	}

	protected void postProcessConfiguration(Configuration config) throws HibernateException {
		postProcessAnnotationConfiguration((AnnotationConfiguration) config);
	}

	protected void postProcessAnnotationConfiguration(AnnotationConfiguration config) throws HibernateException {

	}
}

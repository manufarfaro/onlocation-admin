import com.onlocation.auth.Role;
import com.onlocation.actor.Client;
import com.onlocation.actor.Comerce;
import com.onlocation.actor.Municipality;
import com.onlocation.actor.Office;
import com.onlocation.auth.UserRole;

import grails.util.Environment;
import grails.plugin.fixtures.FixtureLoader;

class BootStrap {

	def fixtureLoader

	def init = { servletContext ->
		Environment.executeForCurrentEnvironment {
			development { 
				this.generateDummyData()
			}
			test { 
				this.generateDummyData() 
			}
			production {
				// Do nothing.
			}
		}
	}
	def destroy = {
	}
	private void generateDummyData(){
		// Roles
		Role roleMunicipality = new Role(
			authority: 'ROLE_MUNICIPALITY'
		).save(flush: true)

		Role roleCompany = new Role(
			authority: 'ROLE_COMPANY'
		).save(flush: true)

		Role roleOffice = new Role(
			authority: 'ROLE_OFFICE'
		).save(flush: true)

		Role roleClient = new Role(
			authority: 'ROLE_CLIENT'
		).save(flush: true)

		// Municipality
		Municipality municipalityMoron = new Municipality(
			username: 'admin.moron@onlocation.com.ar',
			password: 'ghiforever',
			enabled: true
		).save(flush: true)

		// Comerce
		
		Comerce comerceAsakura = new Comerce(
			username: 'admin.asakura@onlocation.com.ar',
			password: 'asakura',
			enabled: true
		).save(flush:true)

		Comerce comerceOyamada = new Comerce(
			username: 'admin.oyamada@onlocation.com.ar',
			password: 'oyamada',
			enabled: true
		).save(flush:true)

		// Office
		
		Office officeAsakuraCentro = new Office(
			username: 'centro.asakura@onlocation.com.ar',
			password: 'asakura',
			enabled: true,
			comerce: [comerceAsakura]
		).save(flush: true)
		
		Office officeAsakuraHurlingham = new Office(
			username: 'hurlingham.asakura@onlocation.com.ar',
			password: 'asakura',
			enabled: true,
			comerce: [comerceAsakura]
		).save(flush:true)

		Office officeAsakuraCastelar = new Office(
			username: 'castelar.asakura@onlocation.com.ar',
			password: 'asakura',
			enabled: true,
			comerce: [comerceAsakura]
		).save(flush: true)

		Office officeOyamadaCentro = new Office(
			username: 'centro.oyamada@onlocation.com.ar',
			password: 'oyamada',
			enabled: true,
			comerce: [comerceOyamada]
		).save(flush: true)

		Office officeOyamadaVillaTesei = new Office(
			username: 'vtesei.oyamada@onlocation.com.ar',
			password: 'oyamada',
			enabled: true,
			comerce: [comerceOyamada]
		).save(flush:true)

		Office officeOyamadaHaedo = new Office(
			username: 'haedo.oyamada@onlocation.com.ar',
			password: 'oyamada',
			enabled: true,
			comerce: [comerceOyamada]
		).save(flush:true)

		// Client

		Client clientYoh = new Client(
			username: 'yoh@asakura.com',
			password: '123456',
			enabled: true
		).save(flush:true)

		Client clientHao = new Client(
			username: 'hao@asakura.com',
			password: '123456',
			enabled: true
		).save(flush:true)

		Client clientManta = new Client(
			username: 'manta@oyamada.com',
			password: '123456',
			enabled: true
		).save(flush:true)

		Client clientAnna = new Client(
			username: 'anna@kyoyama.com',
			password: '123456',
			enabled: true
		).save(flush:true)

		// Comerce - Office

		comerceAsakura.addToOffices(officeAsakuraCentro)
		comerceAsakura.addToOffices(officeAsakuraHurlingham)
		comerceAsakura.addToOffices(officeAsakuraCastelar)
		comerceAsakura.save(flush:true)

		comerceOyamada.addToOffices(officeOyamadaCentro)
		comerceOyamada.addToOffices(officeOyamadaHaedo)
		comerceOyamada.addToOffices(officeOyamadaVillaTesei)
		comerceOyamada.save(flush:true)

		// User - Role
		
		UserRole userRole1a = new UserRole(
			user: municipalityMoron,
			role: roleMunicipality
		).save(flush: true)

		UserRole userRole1b = new UserRole(
			user: comerceAsakura,
			role: roleCompany
		).save(flush: true)

		UserRole userRole2b = new UserRole(
			user: comerceOyamada,
			role: roleCompany
		).save(flush: true)
		UserRole userRole3a = new UserRole(
			user: officeAsakuraCentro,
			role: roleOffice
		).save(flush: true)
		UserRole userRole3b = new UserRole(
			user: officeAsakuraHurlingham,
			role: roleOffice
		).save(flush: true)
		UserRole userRole3c = new UserRole(
			user: officeAsakuraCastelar,
			role: roleOffice
		).save(flush: true)
		UserRole userRole3d = new UserRole(
			user: officeOyamadaCentro,
			role: roleOffice
		).save(flush: true)
		UserRole userRole3e = new UserRole(
			user: officeOyamadaVillaTesei,
			role: roleOffice
		).save(flush: true)
		UserRole userRole3f = new UserRole(
			user: officeOyamadaHaedo,
			role: roleOffice
		).save(flush: true)
		UserRole userRole4a = new UserRole(
			user: clientYoh,
			role: roleClient
		).save(flush: true)
		UserRole userRole4b = new UserRole(
			user: clientHao,
			role: roleClient
		).save(flush: true)
		UserRole userRole4c = new UserRole(
			user: clientManta,
			role: roleClient
		).save(flush: true)
		UserRole userRole4d = new UserRole(
			user: clientAnna,
			role: roleClient
		).save(flush: true)
	}
}
